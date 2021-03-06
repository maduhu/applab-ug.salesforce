public with sharing class LacDashboardController extends ParentComponentBase {
    // The quarter passed in from the page
    public String quarter;
    
    // The option which determines what to show on the overview map
    public String overviewMapOption {get; set;}
    
    // The current quarter (derived from the current date - NOW)
    String currentQuarter = null;
    
    public LacDashboardController() {
        setUpOptions(ApexPages.currentPage().getParameters());
    }
    
    private void setUpOptions(Map<String, String> options) {
    	setUpQuarter(options.get('quarter'));
    	setUpOverviewMapOption(options.get('overviewMapOption'));
    }
    
    private void setUpOverviewMapOption(String option) {
    	if(option == null) {
    		this.overviewMapOption = 'all';
    	} else {
    		this.overviewMapOption = option;
    	}
    }
    
    private void setUpQuarter(String quarter) {

        this.currentQuarter = MetricHelpers.getCurrentQuarterAsString(0);
        if(quarter == null || quarter.length() == 0) {
            setQuarter(this.currentQuarter);
        }
        else {
            setQuarter(quarter);
        }
        
        // We also add the quarter to the ParentComponentBase.parameters, so that it can be picked up by component classes
        addParameter('quarter', getQuarter());
    }
    
    public List<SelectOption> getQuarters() {

        List<SelectOption> options = new List<SelectOption>();
        Integer currentYear = Date.today().year();
        Integer currentQuarter = MetricHelpers.getQuarter(Date.today());
        Integer quarter;
        Integer startYear;

                // Start in 2012
                startYear = 2012;
        quarter = 1;
        
        for(Integer year = startYear; year <= currentYear; year++) {
            if(year != startYear) {
                quarter = 1;
            }
            while(quarter <= 4) {
                String quarterString = MetricHelpers.getQuarterStartMonth(quarter) + ' - ' + MetricHelpers.getQuarterEndMonth(quarter) + ' ' + String.valueOf(year);
                SelectOption option = new SelectOption(quarterString, quarterString);
                if(year == currentYear && quarter == currentQuarter && (this.quarter == null || this.quarter.length() == 0)) {
                    this.setQuarter(quarterString);
                }
                options.add(option);
                quarter++;
            }
        }
        return options;
    }
    
    public String getQuarter() {
        return quarter;
    }
    
    public void setQuarter(String quarter) {
        this.quarter = quarter;
    }
    
    public PageReference changeOptions() {
        // Options already changed
        
        PageReference resultPage = ApexPages.currentPage(); 
        resultPage.setRedirect(false);
        return resultPage;
        
        /*
        resultPage.getParameters().put('quarter', this.quarter);
        resultPage.getParameters().put('overviewMapOption', this.overviewMapOption);
        resultPage.setRedirect(true);
        return resultPage;*/
    }
    
    public String getIsCurrentQuarter() {

        if (null != this.quarter && this.quarter.equals(this.currentQuarter)) {
            return 'true';
        }
        return 'false';
    }
    
    private String getColor(String target, String actual, Boolean largerIsBetter) {
        String redColor = '#ff0000';
                String greenColor = '#98fb98';
                String orangeColor = '#ff8c00';
                
                if(target == '' || target == null) {
                        target = '0';
                }
                
                if(actual == '' || actual == null) {
                        actual = '0';
                }
                
        if(largerIsBetter) {
                if(Decimal.valueOf(actual) >= Decimal.valueOf(target)) {
                        return greenColor;
                } else if(Decimal.valueOf(actual) <= Decimal.valueOf(target)) {
                        return greenColor;
                }
        }
        
        // If actual is within 10% of the target, then return orange
        if(Math.abs(Decimal.valueOf(actual) - Decimal.valueOf(target))/Decimal.valueOf(target) <= 0.1) {
                return orangeColor;
        }
        
        return redColor;
    }
    
    private String getColor(String target, String actual) {
        return getColor(target, actual, true);
    }
    
    public List<Map<String,String>> getOverviewData() {
                List<Map<String, String>> overviewData = new List<Map<String, String>>();
                Date quarterFirstDay = MetricHelpers.getQuarterFirstDay(getQuarter());
                
                // Add all the metrics to a list
                List<String> metrics = new List<String>();
                
                // We get the names as strings so that we can refer to them later
                String totalFarmersMetricName = 'LacMetrics.TotalFarmers';
                String poorHouseholdsMetricName = 'LacMetrics.PoorHouseholdsPercent';
                String totalInteractionsMetricName = 'LacMetrics.TotalInteractions';
                String totalCkwsMetricName = 'LacMetrics.TotalCkws'; 
                String totalOrgsMetricName = 'LacMetrics.TotalOrganizations'; 
                
                metrics.add(totalFarmersMetricName);
                metrics.add(poorHouseholdsMetricName);
                metrics.add(totalInteractionsMetricName);
                metrics.add(totalCkwsMetricName);
                metrics.add(totalOrgsMetricName);
                
                // Get the current metric values
                Map<String, String> currentValues = LacMetricManager.getValues(metrics, quarterFirstDay);
                
                // Get the previous metric values
                Map<String, String> previousValues = LacMetricManager.getValues(metrics, quarterFirstDay.addDays(-7));
                
                // Get the targets
                Map<String, String> targetValues = LacMetricManager.getLatestTargets(metrics, quarterFirstDay, '');
                
                
                String color = '';
                 
                // Total Farmers
                String totalFarmers = Integer.valueOf(currentValues.get(totalFarmersMetricName)).format();
                String totalFarmersTarget = (targetValues.get(totalFarmersMetricName) == '')?'':Integer.valueOf(targetValues.get(totalFarmersMetricName)).format();
                String previousTotalFarmers = Integer.valueOf(previousValues.get(totalFarmersMetricName)).format();
                color = getColor(targetValues.get(totalFarmersMetricName), currentValues.get(totalFarmersMetricName));
                
                Map<String,String> totalFarmersRow = new Map<String, String>();
                totalFarmersRow.put('label', 'Total farmers');
                totalFarmersRow.put('target', totalFarmersTarget);
                totalFarmersRow.put('currentValue', totalFarmers);
                totalFarmersRow.put('previousValue', previousTotalFarmers);
                
                totalFarmersRow.put('colour', color);
                 
                overviewData.add(totalFarmersRow);
                
                // Poor farmers percentage
                String poorHouseholdsPercent = currentValues.get(poorHouseholdsMetricName);
                String poorHouseholdsPercentTarget = targetValues.get(poorHouseholdsMetricName);
                String previousPoorHouseholdsPercent = previousValues.get(poorHouseholdsMetricName);
                color = getColor(poorHouseholdsPercentTarget, poorHouseholdsPercent);
                
                Map<String,String> poorHouseholdsRow = new Map<String, String>();
                poorHouseholdsRow.put('label', '% of poor households');
                poorHouseholdsRow.put('target', poorHouseholdsPercentTarget + '%');
                poorHouseholdsRow.put('currentValue', poorHouseholdsPercent + '%');
                poorHouseholdsRow.put('previousValue', previousPoorHouseholdsPercent + '%');
                poorHouseholdsRow.put('colour', color);
                
                overviewData.add(poorHouseholdsRow);
                
                // Total Interactions
                String totalInteractions = Integer.valueOf(currentValues.get(totalInteractionsMetricName)).format();
                String totalInteractionsTarget = (targetValues.get(totalInteractionsMetricName) == '')?'':Integer.valueOf(targetValues.get(totalInteractionsMetricName)).format();
                String previousTotalInteractions = Integer.valueOf(previousValues.get(totalInteractionsMetricName)).format();
                color = getColor(targetValues.get(totalInteractionsMetricName), currentValues.get(totalInteractionsMetricName));
                
                Map<String,String> totalIteractionsRow = new Map<String, String>();
                totalIteractionsRow.put('label', 'Total interactions');
                totalIteractionsRow.put('target', totalInteractionsTarget);
                totalIteractionsRow.put('currentValue', totalInteractions);
                totalIteractionsRow.put('previousValue', previousTotalInteractions);
                totalIteractionsRow.put('colour', color);
                
                overviewData.add(totalIteractionsRow);
                
                // Total Ckws
                String totalCkws = Integer.valueOf(currentValues.get(totalCkwsMetricName)).format();
                String totalCkwsTarget = (targetValues.get(totalCkwsMetricName) == '')?'':Integer.valueOf(targetValues.get(totalCkwsMetricName)).format();
                String previousTotalCkws = Integer.valueOf(previousValues.get(totalCkwsMetricName)).format();
                color = getColor(targetValues.get(totalCkwsMetricName), currentValues.get(totalCkwsMetricName));
                
                Map<String,String> totalCkwsRow = new Map<String, String>();
                totalCkwsRow.put('label', 'Total CKWs');
                totalCkwsRow.put('target', totalCkwsTarget);
                totalCkwsRow.put('currentValue', totalCkws);
                totalCkwsRow.put('previousValue', previousTotalCkws);
                totalCkwsRow.put('colour', color);
                
                overviewData.add(totalCkwsRow);
                
                // Total Cooperatives
                String totalOrgs = Integer.valueOf(currentValues.get(totalOrgsMetricName)).format();
                String totalOrgsTarget = (targetValues.get(totalOrgsMetricName) == '')?'':Integer.valueOf(targetValues.get(totalOrgsMetricName)).format();
                String previousTotalOrgs = Integer.valueOf(previousValues.get(totalOrgsMetricName)).format();
                color = getColor(targetValues.get(totalOrgsMetricName), currentValues.get(totalOrgsMetricName));
                
                Map<String,String> totalOrgsRow = new Map<String, String>();
                totalOrgsRow.put('label', 'Total Cooperatives');
                totalOrgsRow.put('target', totalOrgsTarget);
                totalOrgsRow.put('currentValue', totalOrgs);
                totalOrgsRow.put('previousValue', previousTotalOrgs);
                totalOrgsRow.put('colour', color);
                
                overviewData.add(totalOrgsRow);
                
                return overviewData;
    }

    public List<Map<String, Object>> getMarginalizedFarmersData() {
        List<Map<String, Object>> data = new List<Map<String, Object>>();
        Date quarterFirstDay = MetricHelpers.getQuarterFirstDay(getQuarter());
        
        // Add all the metrics to a list
        List<String> metrics = new List<String>();
        metrics.add('LacMetrics.IndigoPercent');
        metrics.add('LacMetrics.AfroColombianoPercent');
        metrics.add('LacMetrics.FemaleHeadedPercent');
        metrics.add('LacMetrics.DisplacedPercent');
        metrics.add('LacMetrics.ElderlyPercent');
        metrics.add('LacMetrics.PoorHouseholdsPercent');
        
        // Get the current metric values
        Map<String, String> currentValues = LacMetricManager.getValues(metrics, quarterFirstDay);
                
        // Indigo
        Map<String, Object> indigo = new Map<String, Object>();
        indigo.put('name', 'Indigo');
        indigo.put('data', 0); // currentValues.get('LacMetrics.IndigoPercent'));
        data.add(indigo);
        
        // Afro
        Map<String, Object> afro = new Map<String, Object>();
        afro.put('name', 'Afro');
        afro.put('data', currentValues.get('LacMetrics.AfroColombianoPercent'));
        data.add(afro);
        
        // Female Headed
        Map<String, Object> female = new Map<String, Object>();
        female.put('name', 'FemaleHH');
        female.put('data', currentValues.get('LacMetrics.FemaleHeadedPercent'));
        data.add(female);
        
        // Displaced
        Map<String, Object> displaced = new Map<String, Object>();
        displaced.put('name', 'Displaced');
        displaced.put('data', currentValues.get('LacMetrics.DisplacedPercent'));
        data.add(displaced);
        
        // Elderly
        Map<String, Object> elderly = new Map<String, Object>();
        elderly.put('name', 'Elderly');
        elderly.put('data', currentValues.get('LacMetrics.ElderlyPercent'));
        data.add(elderly);
        
        // Poor
        Map<String, Object> poor = new Map<String, Object>();
        poor.put('name', '<$1.25');
        poor.put('data', currentValues.get('LacMetrics.PoorHouseholdsPercent'));
        data.add(poor);
        
        return data;
    }
    
    public List<Map<String, Object>> getPovertyLinesData() {
        List<Map<String, Object>> data = new List<Map<String, Object>>();
        Date quarterFirstDay = MetricHelpers.getQuarterFirstDay(getQuarter());
        
         // Add all the metrics to a list
                List<String> metrics = new List<String>();
                metrics.add('LacMetrics.PovertyLineUsaidPercent');
                metrics.add('LacMetrics.PoorHouseholdsPercent');
                metrics.add('LacMetrics.PovertyLine375Percent');
                metrics.add('LacMetrics.PovertyLine5Percent');
                
                // Get the current metric values
                Map<String, String> currentValues = LacMetricManager.getValues(metrics, quarterFirstDay);
                
        // USAID line
        Map<String, Object> line1 = new Map<String, Object>();
        line1.put('name', 'USAID');
        line1.put('data', currentValues.get('LacMetrics.PovertyLineUsaidPercent'));
        data.add(line1);
        
        // $1.25 line
        Map<String, Object> line2 = new Map<String, Object>();
        line2.put('name', '$1.25');
        line2.put('data', currentValues.get('LacMetrics.PoorHouseholdsPercent'));
        data.add(line2);
        
        // $2.5 line
        Map<String, Object> line3 = new Map<String, Object>();
        line3.put('name', '$2.5');
        line3.put('data', currentValues.get('LacMetrics.PovertyLineUsaidPercent'));
        data.add(line3);
        
        // $3.75
        Map<String, Object> line4 = new Map<String, Object>();
        line4.put('name', '$3.75');
        line4.put('data', currentValues.get('LacMetrics.PovertyLine375Percent'));
        data.add(line4);
        
        // $5
        Map<String, Object> line5 = new Map<String, Object>();
        line5.put('name', '$5');
        line5.put('data', currentValues.get('LacMetrics.PovertyLine5Percent'));
        data.add(line5);
        
        return data;
    }
    
    public List<Map<String, Object>> getFarmerScaleData() {
        List<Map<String, Object>> data = new List<Map<String, Object>>();
        Date quarterFirstDay = MetricHelpers.getQuarterFirstDay(getQuarter());
        
        // Add all the metrics to a list
                List<String> metrics = new List<String>();
                metrics.add('LacMetrics.IndigoFarmers');
                metrics.add('LacMetrics.AfroColombianoFarmers');
                metrics.add('LacMetrics.FemaleHeadedHouseholds');
                metrics.add('LacMetrics.DisplacedFarmers');
                metrics.add('LacMetrics.PoorHouseholds');
                
                // Get the current metric values
                Map<String, String> currentValues = LacMetricManager.getValues(metrics, quarterFirstDay);
                
        // Indigo
        Map<String, Object> indigo = new Map<String, Object>();
        indigo.put('name', 'Indigo');
        indigo.put('data', currentValues.get('LacMetrics.IndigoFarmers'));
        data.add(indigo);
        
        // Afro
        Map<String, Object> afro = new Map<String, Object>();
        afro.put('name', 'Afro');
        afro.put('data', currentValues.get('LacMetrics.AfroColombianoFarmers'));
        data.add(afro);
        
        // Female Headed
        Map<String, Object> female = new Map<String, Object>();
        female.put('name', 'FemaleHH');
        female.put('data', currentValues.get('LacMetrics.FemaleHeadedHouseholds'));
        data.add(female);
        
        // Displaced
        Map<String, Object> displaced = new Map<String, Object>();
        displaced.put('name', 'Displaced');
        displaced.put('data', currentValues.get('LacMetrics.DisplacedFarmers'));
        data.add(displaced);
        
        // Poor
        Map<String, Object> poor = new Map<String, Object>();
        poor.put('name', '<$1.25');
        poor.put('data', currentValues.get('LacMetrics.PoorHouseholds'));
        data.add(poor);
        
        return data;
    }
    
    public List<Map<String, Object>> getInteractionsData() {
        List<Map<String, Object>> data = new List<Map<String, Object>>();
        Date quarterFirstDay = MetricHelpers.getQuarterFirstDay(getQuarter());
        
        // Add all the metrics to a list
        List<String> metrics = new List<String>();
        metrics.add('LacMetrics.TotalSearches');
        metrics.add('LacMetrics.TotalSurveys');
        metrics.add('LacMetrics.TotalMessages');
        
        // Get the current metric values
        Map<String, String> currentValues = LacMetricManager.getValues(metrics, quarterFirstDay);
                
        // Searches
        Map<String, Object> wedge1 = new Map<String, Object>();
        wedge1.put('name', 'Info Searches'); 
        wedge1.put('data', currentValues.get('LacMetrics.TotalSearches'));
        data.add(wedge1);
        
       // Ibt Surveys
        Map<String, Object> wedge3 = new Map<String, Object>();
        wedge3.put('name', 'Surveys');
        wedge3.put('data', currentValues.get('LacMetrics.TotalSurveys'));
        data.add(wedge3);
        
        // Messages
        Map<String, Object> wedge4 = new Map<String, Object>();
        wedge4.put('name', 'Messages'); 
        wedge4.put('data', currentValues.get('LacMetrics.TotalMessages'));
        data.add(wedge4); 
        
        return data;
    }
    
    public List<Map<String, Object>> getCkwScaleData() {
        List<Map<String, Object>> data = new List<Map<String, Object>>();
        Date quarterFirstDay = MetricHelpers.getQuarterFirstDay(getQuarter());
        
        // Add all the metrics to a list
                List<String> metrics = new List<String>();
                metrics.add('LacMetrics.TotalCkws');
                metrics.add('LacMetrics.FemaleCkws');
                
                // Get the current metric values
                Map<String, String> currentValues = LacMetricManager.getValues(metrics, quarterFirstDay);
                
        // Total
        Map<String, Object> bar1 = new Map<String, Object>();
        bar1.put('name', 'All');
        bar1.put('data', currentValues.get('LacMetrics.TotalCkws'));
        data.add(bar1);
        
        // Female
        Map<String, Object> bar2 = new Map<String, Object>();
        bar2.put('name', 'Female');
        bar2.put('data', currentValues.get('LacMetrics.FemaleCkws'));
        data.add(bar2);
        
        return data;
    }
    
    public List<SelectOption> getOverviewMapOptions() {
    	List<SelectOption> options = new List<SelectOption>();
    	options.add(new SelectOption('all', 'All'));
    	options.add(new SelectOption('ckws', 'Ckws'));
    	options.add(new SelectOption('farmers', 'Farmers'));
    	options.add(new SelectOption('searches', 'Searches'));
    	//options.add(new SelectOption('surveys', 'Surveys'));
    	return options;	
    }
    
	public void changeOverviewMapOption() {
		
	}

    public String getCurrentMapDescription() {
    	String description = 'Showing ';
    	String overviewMapOption = this.overviewMapOption.toLowerCase();
    	if(overviewMapOption == 'all') {
    		description += ' all records (max 1,000)';
    	} else {
    		description += overviewMapOption + ' (max 1,000)';
    	} 
    	
    	if(getIsCurrentQuarter() == 'true') {
    		description += ' for this quarter.';
    	} else {
    		description += ' for quarter ' + getQuarter();
    	}
    	
    	return description;
    }
    
    // To add a map param to the db for the overview map, make sure it's title is in the format 'LAC Overview Map - ' + overviewMapOption 
    // E.g. LAC Overview Map - all
    // Look at getOverviewMapOptions() to see the possible options
    public Map_Parameter__c getMapParameter () {
    	String titleParam = 'LAC Overview Map - ' + this.overviewMapOption;
        Map_Parameter__c param = [SELECT
                Id,
                Name,
                Title__c,
                Latitude__c,
                Longitude__c,
                Type_Of_sObject__c,
                Map_Marker_Source_Class__c,
                Zoom__c,
                Splitter__c,
                Dashboard_Section__r.Dashboard__r.Account__r.Name,
                Dashboard_Section__r.Has_Selector__c,
                Dashboard_Section__c
            FROM
                Map_Parameter__c
            WHERE
                Dashboard_Section__r.Dashboard__r.Name = 'LAC Dashboard'
                and 
                Title__c =: titleParam LIMIT 1]; 
        return param;
    }
    
    static testMethod void testAll() {
                Date current = Date.today();
                LacDashboardController controller = new LacDashboardController();
                controller.getQuarters();
                controller.getQuarter();
                controller.changeOptions();
                controller.getIsCurrentQuarter();
                controller.getOverviewData();
                controller.getMarginalizedFarmersData();
        }
}