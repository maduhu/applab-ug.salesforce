public class PigeonPeasSaleFarmerAssociationCreator{
     //Method to fetch the Pigeon Peas Association details of the pigeon peas sale association that was created
     public static void getSaleFarmerDetails(Ewarehouse_Sale_Pigeon_Peas_Association__c[] pigeon_peas_association) {
         
         //Variable to hold the FCI ID's from the Pigeon Peas association record
         List<String> ewarehouse_farmer_fci_ids= new List<String>();
         
         for(Ewarehouse_Sale_Pigeon_Peas_Association__c pigeon_peas_associations : pigeon_peas_association){
             if(pigeon_peas_associations.Farmer_FCI_ID__c != null){
                 ewarehouse_farmer_fci_ids.add(pigeon_peas_associations.Farmer_FCI_ID__c);
             } 
         } 
         
         //The Variable object to fetch the Ewarehouse Farmer ID to be used to create a new Ewarehouse Sale Farmer Association Record
         Ewarehouse_Farmer__c[] existing_farmer = [SELECT Ewarehouse_Farmer__c.Id, Ewarehouse_Farmer__c.Auto_Generated_Farmer_ID__c FROM Ewarehouse_Farmer__c WHERE Ewarehouse_Farmer__c.Auto_Generated_Farmer_ID__c IN : ewarehouse_farmer_fci_ids];    
         
         //Create a variable to hold the new Sale Farmer Association records to be inserted
         Sale_Farmer_Associations__c[] newFarmerAssociations = new List<Sale_Farmer_Associations__c>();
         for(Ewarehouse_Sale_Pigeon_Peas_Association__c pigeon_peas_associations : pigeon_peas_association){
             for(Ewarehouse_Farmer__c existing_farmers : existing_farmer ){
                 if(pigeon_peas_associations.Farmer_FCI_ID__c == existing_farmers.Auto_Generated_Farmer_ID__c){
                     newFarmerAssociations.add(new Sale_Farmer_Associations__c (Ewarehouse_Sale__c = pigeon_peas_associations.Ewarehouse_Sale__c,Ewarehouse_Sale_Pigeon_Peas_Association__c = pigeon_peas_associations.Id,Pigeon_Peas_Moisture_Content__c=pigeon_peas_associations.Moisture_Content__c,Pigeon_Peas_Number_of_90kg_Bags__c=pigeon_peas_associations.Total_Bags_Sold__c,Ewarehouse_Farmer__c = existing_farmers.Id, Sale_Farmer_Unique_ID__c = ''+ pigeon_peas_associations.Ewarehouse_Sale__c + ''+ existing_farmers.Id));
                     break;
                 }else{
                     
                 }
             }             
         }
         //Check that the array object variable for insertion is not empty
         if(newFarmerAssociations.size() > 0) {
           upsert newFarmerAssociations Sale_Farmer_Unique_ID__c ;
         } 
    }
}