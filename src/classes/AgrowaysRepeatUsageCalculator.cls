global class AgrowaysRepeatUsageCalculator implements Database.Batchable<sObject>, Database.StateFul {
    global final String farmerQuery;
    global Decimal repeatUsagePercentage = 0.0;
    global Integer farmerCount = 0;
    global Integer repeatUsageCount = 0;

    global AgrowaysRepeatUsageCalculator(String query) {
        farmerQuery = query;
    }

    global Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator(farmerQuery);
    }

    global void execute(Database.BatchableContext BC, List<Farmer__c> farmers) {
        farmerCount += farmers.size();
        List<String> personIds = new List<String>();
        for (Farmer__c farmer : farmers) {
            personIds.add(farmer.Person__c);
        }
        String repeatUsageQuery = ' SELECT Interviewee__c inter, Interviewee__r.Gender__c gender, count(Interviewee__r.id) total ' +  
            ' FROM Search_Log__c' +
            ' WHERE Interviewee__c IN (' + MetricHelpers.generateCommaSeperatedString(personIds, true) + ')'  +
            ' AND Server_Entry_Time__c  >= LAST_MONTH' +
            ' AND Interviewer__c != null' +
            ' AND Interviewee__c != null' +
            ' AND (NOT Interviewee__r.First_Name__c LIKE \'TEST\')' +
            ' GROUP BY Interviewee__c, Interviewee__r.Gender__c';

        AggregateResult[] counts = database.query(repeatUsageQuery);
        for (AggregateResult count : counts) {
            Integer total = (Integer)count.get('total');
            if (total > 1) {
                repeatUsageCount++;
            }
        }   
    }

    global void finish(Database.BatchableContext BC) {
        repeatUsagePercentage = (repeatUsageCount * 100)/farmerCount;
        M_E_Metric_Data__c repeatUsageMetric = new M_E_Metric_Data__c();
        M_E_Metric_Data__c[] repeatUsageMetrics = [Select Id, 
                                                        Denumerator__c,
                                                        Date__c, 
                                                        Numerator__c,
                                                        Actual_Value__c 
                                                from M_E_Metric_Data__c 
                                                where M_E_Metric__r.Name='Agroways Repeat Usage'
                                                and Date__c = LAST_MONTH];
        if (repeatUsageMetrics.size() < 1) {
            repeatUsageMetric.Date__c = date.today().addMonths(-1).toStartOfMonth();
        }
        else {
            repeatUsageMetric = repeatUsageMetrics[0];
        }
        repeatUsageMetric.Denumerator__c = farmerCount;
        repeatUsageMetric.Numerator__c = repeatUsageCount;
        repeatUsageMetric.Actual_Value__c = repeatUsagePercentage;

        upsert repeatUsageMetric;
    }
}