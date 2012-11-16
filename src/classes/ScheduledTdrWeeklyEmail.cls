global class ScheduledTdrWeeklyEmail implements Schedulable {

    global void execute(SchedulableContext sc) {

        Map<String, List<String>> addresses = new Map<String, List<String>>();


        // Add the dates for yesterday
        Date startDate = Date.today().addDays(-8);

        // Send the emails to the national level
        addresses.put('all', new List<String> {'opetoo@mtn.co.ug', 'harunas@mtn.co.ug', 'kobaa@mtn.co.ug', 'asiimwi@mtn.co.ug', 'nimusid@mtn.co.ug'});

        // Send to Central region
        addresses.put('Central', new List<String> {'kiwagin@mtn.co.ug'});
        
        // Send to East region
        addresses.put('Eastern', new List<String> {'gyagene@mtn.co.ug'});

        // Send to West region
        addresses.put('Western' ,new List<String> {'ndobolj@mtn.co.ug'});

        // Send to South West region
        addresses.put('South Western', new List<String> {'mutakar@mtn.co.ug'});

        // Send to North region
        addresses.put('Northern' ,new List<String> {'ogwangp@mtn.co.ug'});

        // Send email to West Nile region
        addresses.put('West Nile', new List<String> {'kibirae@mtn.co.ug'});

		List<String> personIds = new List<String>();
		Person__c[] people = 
		    [SELECT 
		        Id 
		    FROM 
		        Person__c 
		    WHERE 
		        Type__c = 'TDR' 
		      AND 
		        ID IN 
		        (SELECT 
		             Person__c 
		         FROM 
		             TDR__c )];
                       
        for (Person__c person : people) {
            personIds.add(person.Id);
        }
        TdrHelpers.sendWeeklyEmails(addresses, personIds, startDate);
    }
}