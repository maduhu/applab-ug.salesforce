public with sharing class LacFarmerDetailsController {
	private LAC_Farmer_Details__c obj;
	private Attachment profilePicture;
	private Integer ppiScore;
	private ApexPages.StandardController stdController; 
	private Person__c farmerPersonObject;

	public LacFarmerDetailsController(ApexPages.StandardController controller) {
		this.stdController = controller;
		this.obj = (LAC_Farmer_Details__c)controller.getRecord();
		
		profilePicture = new Attachment();
	}
	
	public Person__c getFarmerPersonObject() {
		if(farmerPersonObject == null) {
			Person__c[] people = [SELECT Id, OwnerId from Person__c where Contact__c =: obj.Contact__c LIMIT 1];
			if(people.size() > 0) {
				farmerPersonObject = people[0];
			}
		}
		
		return farmerPersonObject;
	}
	
	public CKW__c getAssociatedCkw() {
		List<Person__c> persons = [
			SELECT 
				Id 
			FROM 
				Person__c 
			WHERE Contact__c IN (SELECT Registered_By__c FROM LAC_Farmer_Details__c WHERE Id =: obj.Id)];
		
		if (!persons.isEmpty()) {
			List<CKW__c> ckws = [
			SELECT 
				Id,
				First_Name__c,
				Last_Name__c 
			FROM 
				CKW__c 
			WHERE 
				Person__c =: persons.get(0).Id];
				
			if (!ckws.isEmpty()) {
				return ckws.get(0);
			}	
		}
		
		
		return null;
	}

	public Decimal getSearchesNum() {
		if(getFarmerPersonObject() != null) {
			return [SELECT COUNT() FROM Search_Log__c WHERE Interviewee__c = :getFarmerPersonObject().Id LIMIT 50000];
		} else {
			return 0;
		}
	}

	public Decimal getSubmissionsNum() {
		if(getFarmerPersonObject() != null) {
			return [SELECT COUNT() FROM Submission_Meta_Data__c WHERE Interviewee__c = :getFarmerPersonObject().Id LIMIT 50000];
		} else {
			return 0;
		}
	}
	
	public LAC_Farmer_Details__c getFarmer(){ 
		return this.obj;
	}
	
	public Attachment getProfilePicture() {
		if (this.obj.Contact__r.Picture_Attachment_Id__c != null) {
			List<Attachment> attachments = [SELECT Id, Name, Body, ParentId FROM Attachment WHERE Id = :this.obj.Contact__r.Picture_Attachment_Id__c ];
			if (!attachments.isEmpty()) {
				this.profilePicture = attachments.get(0);
			}
		}		
		return this.profilePicture;
	}

	public Decimal getMessagesNum() {
		if(getFarmerPersonObject() != null) {
			return [SELECT COUNT() FROM Message__c WHERE Recipient__c = :getFarmerPersonObject().Id LIMIT 50000];
		} else {
			return 0;
		}
	}
	
	public PageReference save() {
		try{
			List<Contact> contacts = [SELECT Id, Picture_Attachment_Id__c FROM Contact WHERE Id =: this.obj.Contact__c];
			if (!contacts.isEmpty()) {
				if (this.profilePicture != null && this.profilePicture.Body != null) {
					this.profilePicture.OwnerId = UserInfo.getUserId();
					
					if (this.profilePicture.Id == null) {
						this.profilePicture.ParentId = contacts.get(0).Id;
						this.profilePicture.IsPrivate = true;
					}
					
					upsert this.profilePicture;
					contacts.get(0).Picture_Attachment_Id__c = this.profilePicture.Id;
					upsert contacts.get(0);
				}
			}
			
			upsert this.obj;
			
			// If we have no personObject, we create one
			if (getFarmerPersonObject() == null) {
				Person__c person = new Person__c();
				person.Last_Name__c = obj.Contact__r.LastName;
				person.First_Name__c = obj.Contact__r.FirstName;
				person.Contact__c = obj.Contact__r.Id;
				upsert person;
			}
			
			changeOwner();
			
			PageReference pageReference = new PageReference('/apex/LacFarmerDetails?id='+this.obj.id);
	        pageReference.setRedirect(true);
	        
	        return pageReference;
		} catch(Exception ex) {
			ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR, ex.getMessage()));
			return ApexPages.currentPage();
		}
	}
	
	private void changeOwner(){
		Person__c person = getFarmerPersonObject();
		if(person != null) {
			person.OwnerId = this.obj.Contact__r.OwnerId;
			update person;
		}
		
		List<LAC_Household__c> households = [SELECT Id, OwnerId FROM LAC_Household__c WHERE Id = :this.obj.LAC_Household__c];
		if (!households.isEmpty()) {
			households.get(0).OwnerId = this.obj.Contact__r.OwnerId;
			update households;
		}
		
		List<LAC_Farm__c> farms = 
			[SELECT 
				Id, 
				OwnerId, 
				LAC_Household__c 
			FROM 
				LAC_Farm__c 
			WHERE 
				LAC_Household__c IN (SELECT Id FROM LAC_Household__c WHERE LAC_Farmer_Id_Temp__c = :this.obj.Name)];
		
		if (!farms.isEmpty()) {
			for (LAC_Farm__c farm : farms) {
				farm.OwnerId = this.obj.Contact__r.OwnerId;
			}
			
			update farms;
		}
	}
	
	private Integer getLacFarmerPpiScore() {
		if(this.ppiScore == null || this.ppiScore <= 0) {
			List<LAC_Farmer_Details__c> farmer = [SELECT PPI_Score__c FROM LAC_Farmer_Details__c WHERE Id =: this.obj.Id];
			if(!farmer.isEmpty()) {
				Decimal score = farmer.get(0).PPI_Score__c;
				if (score != null) {
					this.ppiScore = score.intValue();
				} else {
					this.ppiScore = -1;
				}
			}
		}
		
		return this.ppiScore;
	}
	
	public Double getPovertyProbabilityLessThanOneQuarter() {
		return LacPpiProbabilityGenerator.getPpProbabilityForLessThanOneAndQuarter(getLacFarmerPpiScore()); 
	}
	
	public Double getPovertyProbabilityLessThanTwoAndHalf() {
		return LacPpiProbabilityGenerator.getPpProbabilityForLessThanTwoAndHalf(getLacFarmerPpiScore());
	}
	
	public Double getPovertyProbabilityLessThanOneThreeAndThreeQuarter() {
		return LacPpiProbabilityGenerator.getPpProbabilityForLessThanThreeAndThreeQuarter(getLacFarmerPpiScore());
	}
	
	public Double getPovertyProbabilityLessThanOneFive() {
		return LacPpiProbabilityGenerator.getPpProbabilityForLessThanFive(getLacFarmerPpiScore());
	}
}