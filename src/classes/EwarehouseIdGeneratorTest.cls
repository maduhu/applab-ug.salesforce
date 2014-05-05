@isTest 
private class EwarehouseIdGeneratorTest{
  
    static Map<String, String> commercial_purchase_groups = new Map<String, String>{
        'MAKANDI MUNGAANO WOMEN GROUP'=> '01',    
        'MAKANDI WOMEN GROUP'=> '02',
        'KANJA WOMEN GROUP'=>'03',
        'MWICHIURI WOMEN GROUP'=>'04',
        'BARAIMO YOUTH MULTI-PURPOSE'=>'05',
        'KAMUNGATHA WOMEN GROUP'=>'06',
        'KATHANGARI VIJANA PAMOJA'=>'07',
        'KATHIMA WOMEN'=>'08',
        'KARIRU WOMEN'=>'09',
        'MAKANDI DAIRY GOAT'=>'010',
        'MUTARANGA SELF HELP'=>'011',
        'MAKANDI COMMINITY'=>'012',
        'UMOJA MBEU'=>'014',
        'MUKIRI STAR'=>'015',
        'KANJA MAANGUENE WOMEN GROUP'=>'016',
        'BARAIMU COMMUNITY'=>'017',
        'KIMAKIKUA WATER PROJECT'=>'018',
        'MWANIKA WOMEN GROUP'=> '01' ,
        'WIDOWS SHG'=> '02',
        'KUNENE KITHANGARI SHG'=>'03',
        'KARINGA WOMEN GROUP'=>'04',
        'LIMAURA MEN SHG'=>'05',
        'NCHIRU DISABILITY'=>'06',
        'KAREBE WOMEN GROUP'=>'07',
        'AKINYANGA WOMEN GROUP'=>'08',
        'LIMAURU MUTETHIA WOMEN GROUP'=>'09',
        'NKATHA WOMEN GROUP'=>'010',
        'KINYINGIRE WOMEN GROUP'=>'011',
        'MAMA KIRORI WOMEN GROUP'=>'012',
        'KITHANGARI LEARNERS SHG'=>'013',
        'MWICHIURI WOMEN GROUP'=> '01',
        'GAICUGI WOMEN GROUP'=> '02',
        'MWANGAZA WOMEN GROUP'=>'03',
        'MUTHUTIRA WOMEN GROUP'=>'04',
        'KIMIRII NTIWA WOMEN GROUP'=>'05',
        'GATHERIA WOMEN GROUP'=>'06',
        'NJIA WOMEN GROUP'=>'07',
        'KARATHIA WOMEN GROUP'=> '01',
        'MWICHIURI WOMEN GROUP'=> '02',
        'KUANE EAST PIONEER'=>'03',
        'MAITHA WOMEN GROUP'=>'04',
        'LING\'URI'=>'07',
        'KARAMENE SHG'=>'08',
        'MWICIENDERI SHG'=> '01',
        'KIERU SHG'=> '02',
        'MURIUKI KIBULINE'=>'03',
        'KIERU MWINGA UKIA'=>'04',
        'KAMBOGO KATHIMA'=>'05',
        'KIERU UMOJA SHG'=>'06',
        'KAMBURU SHG'=>'07',
        'BAIRIMU SHG'=>'08',
        'KAAMUWENDO'=>'09',
        'KAMBURU MEN SHG'=>'010',
        'MBEU USHINDI SHG'=>'011',
        'NKATHA CEERA'=>'012',
        'KANJA KIBULINE'=>'013',
        'GACEERI CEERA'=>'014',
        'MCK KIBULINE'=>'015',
        'MBEU COTTON GROWERS'=>'016',
        'NDUNIA BORA'=>'017',
        'MANORONE'=>'018',
        'MUKIRI CEERA'=>'019',
        'KIBULINE UNITED '=>'020',
        'MBEU UMOJA'=>'021',
        'MWENDA SHG'=> '01',
        'KANJA WOMEN GROUP'=> '02',
        'MURITHI SHG'=>'03',
        'MUKIRI SHG'=>'04',
        'MBOGORI SHG'=>'05',
        'KIANDIU NEEMA VISION'=>'06',
        'KIEIGA SHG'=>'07',
        'KIARUI SHG'=>'08',
        'THAMARE CHICKEN GROWERS'=>'09',
        'MAKENA MWILI SHG'=> '01',
        'GATHIMWE WOMEN GROUP'=> '02',
        'MUTETHIA WOMEN GROUP'=>'03',
        'KAITHURANAIRI WG'=>'04',
        'NTHAMANANGA A'=>'05',
        'NTHAMANANGA B'=>'06',
        'NTHAMANANGA C'=>'07',
        'NTHAMANANGA D'=>'08',
        'KAURUTU SMALL SCALE FARMERS'=>'09',
        'NKIROTE MIRITI'=>'010',
        'MWIRI BIDII'=>'011',
        'BAINANGA B'=>'012',
        'KAWERU WOMEN GROUP'=>'013',
        'KULUKIRE'=> '01',
        'MBUYA'=> '02',
        'LAITHICHII'=>'03',
        'KIRAENE SHG'=>'04',
        'JITEGEMEE'=>'05',
        'MALAIKA'=>'06',
        'WIRIGIRO'=>'07',
        'MWICHUIRI'=>'08',
        'EBENEZER'=>'09',
        'MWIGANDA LAITHICHII'=>'010',
        'NING\'ONGINE'=>'011',
        'MUNANDA WOMEN GROUP'=> '01' ,
        'MUGANA WOMEN GROUP'=> '02',
        'KIARE 2'=>'03',
        'JOY YOUTH'=>'04',
        'GATAMBA WOMEN'=>'05',
        'KAUJURI SHG'=>'06',
        'MWERA O NCHEGE'=>'07',
        'KIANJARU SHG'=> '01',
        'KAMUTUNE'=> '02',
        'GAKUUNE'=>'03',
        'ITHATA WOMEN'=>'04',
        'THAMUKUI'=>'05',
        'KAMUTUNE WOMEN'=>'06',
        'ITHATENE'=>'07',
        'TURAI'=>'08',
        'PECULIAR '=>'09',
        'KARIRU CHILD WELFARE GROUP'=> '01',
        'KIITHIRI KAMUNGA KARABATI'=> '02',
        'KITHIIRI MAENDELEO'=>'03',
        'KAMUNGATHA MULTIPURPOSE WOMEN GROUP'=>'04',
        'KARIRU MAENDELEO WOMEN GROUP'=>'05',
        'KAMUTHANGA YOUTH SHG'=>'06',
        'KINWE MUUTINE'=>'07',
        'KITHIIRI TUMAINI'=>'08',
        'MWARIAMA WOMEN GROUP'=>'09',
        'KINWE VILLAGE WATER PROJECT'=>'010',
        'KAITHURANIRI SHG'=>'011',
        'MACHEGENE SHG'=> '01',
        'KITHANGARI SHG'=> '02',
        'KIORIMBA SHG'=>'03',
        'KUURU SHG'=>'04',
        'GAICHUIRI'=>'05',
        'MACHEGENE SUPER YOUTH'=>'06',
        'MUKUUNE SHG'=>'07',
        'KIORIOMBA UNITED SHG'=>'08',
        'MWENDANI'=>'09',
        'MUTETHIA WOMEN SHG'=>'010',
        'MWENDWA SHG'=>'011',
        'TWALE SHG'=> '01',
        'KALANTINA SHG'=> '02',
        'MWANGAZA SHG'=>'03',
        'MWITETHIA'=>'04',
        'MWENDWA SHG'=>'05',
        'KAITHE SHG'=>'06',
        'KIRULA'=>'07',
        'NDUNYU'=>'08',
        'MWILEBERI'=>'09',
        'NKURARE'=>'010',
        'MAILUNE'=>'011',
        'LUKUENE YOUTH'=> '01',
        'MUUNGANO KALEMI'=> '02',
        'BONYANGE SHG'=>'03',
        'BAIKINYA SHG'=>'04',
        'NKANTHA WOMEN GROUP'=>'05',
        'LUTHURI WOMEN GROUP'=>'06',
        'GAKURINE SHG'=>'07',
        'AMUKA SHG'=>'08',
        'MWITHANGA TRADITIONAL'=>'09',
        'AKINYANGA SHG'=>'010',
        'ARIMI WOMEN GROUP'=> '01',
        'KANAMBULI SELF HELP GROUP'=> '02',
        'KANAMBULI WOMEN GROUP'=>'03',
        'MUTHERIA WOMEN GROUP'=>'04',
        'BARAKA SHG'=>'05',
        'AYUB SUPPORT GROUP'=>'06',
        'KAMBI THAU SHG'=>'07',
        'KINURIA MORNING GLORY SHG'=>'08',
        'MUTHIRU WOMEN GROUP'=>'09',
        'MWENDWA THAU SHG'=>'010',
        'MUTETHIA THAU WOMEN GROUP'=>'011',
        'KATHURE THAU WOMEN GROUP'=>'012',
        'MUTWIRI FARMERS'=> '01',
        'KANJA WOMEN GROUP'=> '02',
        'MAREGA MUTETHIA'=>'03',
        'MAREGA WERU'=>'04',
        'GACHIONGO MWICHUIRI'=>'05',
        'CIAMATHA'=>'06',
        'MAREGA BOREHOLE'=>'07',
        'BWANA & KATHIRI'=>'08',
        'KARIMI WOMEN GROUP'=>'09',
        'MWEGA WOMEN GROUP'=>'010',
        'MAREGA WOMEN GROUP'=>'011',
        'MIIRIGA SHG'=>'012',
        'UPENDO SHG'=>'013',
        'MAREGA WENDO'=>'014',
        'IMANI MAREGA YOUTH GROUP'=>'015',
        'MWICHUIRI MAREGA YOUTH GROUP'=>'016',
        'MURII MEN SHG'=>'017',
        'MUTUA MBAYA FARMERS'=> '01',
        'NAZARENE WOMEN'=> '02',
        'KING\'OO DISABILITY'=>'03',
        'MWIGANDA SHG'=>'04',
        'KABAUNE 4K'=>'05',
        'KING\'OO YOUTH'=>'06',
        'KAINDA WOMEN GROUP'=>'07',
        'KIRIENE MURITHI'=>'08',
        'KANJA'=>'09',
        'FREE PENTECOST'=>'010',
        'THAATHI'=>'011',
        'MWIGANDA MWICHUIRI'=>'012',
        'AMATU MIRINGENE'=> '01',
        'KIRWARA'=> '02',
        'AMUTHETU MWICHUIRI'=>'03',
        'NTETHERIA MWARI NA KITHOMO'=>'04',
        'AMATU MAENDELEO'=>'05',
        'AMUTHETU YOUTH'=>'06',
        'KIGURU SHG'=> '01',
        'BARAKA MULIKA'=> '02',
        'KABETI KIGURU'=>'03',
        'PAMOJA MULIKA'=>'04',
        'POVERTY FIGHTERS'=>'05',
        'MUTETHIA'=>'06',
        'MOTHER TO MOTHER SHG'=>'07',
        'FURAHA SHG'=>'08',
        'KAITHURANIRI'=>'09',
        'MAKENA'=>'010',
        'KIGURU MUGUNA'=>'011',
        'MULIKA DISABILITY'=>'012',
        'AMANI UPENDO'=>'013',
        'MUCHUUNE KITHIRU'=> '01' ,
        'MWENDWA KITHIRU'=> '02',
        'MWITETHIA WOMEN GROUP'=>'03',
        'MUSETO WOMEN GROUP'=>'04',
        'KARUMO WATER PROJECT'=>'05',
        'MAKI-WENDANI SHG'=>'06',
        'ANJIRU MWICHIENDERI'=>'07',
        'ANTU AMAKIA CLAN'=>'08',
        'ATHWANA CLINIC'=> '01',
        'ATHWANA MEN ASSOCIATION'=> '02',
        'MUTEWA WOMEN GROUP'=>'03',
        'Mutewa Disability'=>'04',
        'YOUNG MOTHERS'=>'05',
        'KALINGENE WOMEN GROUP'=>'06',
        'CWA MUTETHIA WOMEN GROUP'=>'07',
        'KAMATHI B'=>'08',
        'ATHWANA NGWATANIRO'=>'09',
        'TURUKA WAZEE'=>'010',
        'MUUNGANO CENTRE WOMEN GROUP'=>'011',
        'MWENDWA DISABILITY'=>'012',
        'KIENI KIA GAARU'=>'013',
        'MURINGA O KIAMA'=>'014',
        'KIOLO WOMEN GROUP'=>'015',
        'MWENDE NGWATANIRO'=> '01',
        'MUKONO MWANGAZA'=> '02',
        'AKAIGA GIANT'=>'03',
        'MLANGO SHG'=>'04',
        'MUKONO ENERGY WOMEN'=>'05',
        'MUKONO JOY'=>'06',
        'MURUKUNE'=>'07',
        'GREW ORPHANS=> WIDOWS & NEEDY WOMEN GROUP'=>'08',
        'ATUMBI MAKUTANO SHG'=>'09',
        'UMOJA IUMU WOMEN GROUP'=>'010',
        'MUKONO KAMWINGI'=>'012',
        'KIABANANKU SHG'=>'013',
        'MLANGO VISION'=>'014',
        'KIRIRWA WOMEN GROUP'=>'015',
        'KIRIRWA WATER PROJECT'=>'016',
        'RWARE WAJANE'=>'017',
        'KATHOYA YOUTH GROU/P'=>'018',
        'AKAIGA AIPCA '=>'019',
        'MAIGA A MWELE'=> '01',
        'KONJANA MAONGO'=> '02',
        'MUKUNGA SHG'=>'03',
        'KAGUURU SHG'=>'04',
        'GAICHUIRI WOMEN GROUP'=>'05',
        'KAMAGEA WATER PROJECT'=>'06',
        'KANJOKA WATER PROJECT'=>'07',
        'NTHANGATHI MURIMI SHG'=> '01' ,
        'KIAU MUUTI W/P'=> '02',
        'ST MARY SMALL CHRISTIAN COMMUNITY'=>'3',
        'THEI WATER PROJECT'=>'04',
        'GIKOONE WATER PROJECT'=>'05',
        'NTHANGATHI WATER PROJECT'=>'07',
        'KAMURI WATER PROJECT'=>'08',
        'KIBAE WATER PROJECT'=>'09',
        'THUURI KAWENDO WOMEN GROUP'=>'010',
        'KIRAMA INTERCESSORS'=>'011',
        'MUTETHIA SINGLE PARENTS GROUP'=>'012',
        'KAMARAGARA WATER PROJECT'=>'013',
        'KAMATHI TURUKA'=> '01',
        'MWICHUIRI TURUKA'=> '02',
        'KANINI KEGA WOMEN GROUP'=>'03',
        'MATONGUNE ATHWANA'=>'04',
        'ATHWANA ADULT LEARNER'=>'05',
        'KINUU WATER PROJECT'=>'06',
        'KIOLO KIA MAROO WATER PROJECT'=>'7',
        'ST ALLOISIUS MUTEWA'=>'08',
        'BIDII YOUTH'=>'09',
        'MULINGENE SHG'=>'010',
        'THUUTI SHG'=> '01',
        'MIIRA SHG'=> '02',
        'NGONGOAKA SHG'=>'03',
        'IKANA SHG'=>'04',
        'KAMUJINE SHG'=>'05',
        'KAMUJINE SHG'=> '01' ,
        'KAMUJINE ENVIRONMENTAL AWARENESS SHG'=> '02',
        'KAMUJINE YOUNG TREE PLANTERS'=>'03',
        'KAMUJINE MAIYENE TREE SHG'=>'04',
        'KAMUJINE WOMEN GROUP'=>'05',
        'KAMUJINE YOUTH GROUP'=>'06',
        'KAMUJINE KENDI WOMEN GROUP'=>'07',
        'KIUNGU LEADERS SHG'=>'08',
        'MIURINE TUMAINI GROUP'=>'09',
        'MUGAENE BIDII WOMEN GROUP'=>'010',
        'KALIENJENE WOMEN GROUP'=>'011',
        'MUCHUUNE WOMEN GROUP'=>'012',
        'THARICHIA A SHG'=> '01',
        'ENDEMWE'=> '02',
        'CIWIT'=>'03',
        'THARICHIA B'=>'04',
        'BAIKARARU'=>'05',
        'SHINDIKISHA'=> '01' ,
        'MUTETHIA'=> '02',
        'KAURIA'=>'03',
        'LUUMA LUKICHI RIVERSIDE'=>'04',
        'LUUMA YOUTH'=>'05',
        'LUUMA WINDOWS'=>'06',
        'RIITHO NTURENE'=>'07',
        'DISABLED & PARENTS OF DISABLED CHILDREN'=>'08',
        'MUTETHIA MABURUA'=>'09',
        'NKIONE NKUMBURU WATER PROJECT'=>'01',
        'MUGUNA MURIMI'=>'02',
        'IGARII MUTETHIA'=>'03',
        'RURII YOUNG TURKS B'=>'04',
        'GITUU EAST AGRICULTURE GROUP'=>'05',
        'GITUU YOUTH PEASANT GROUP'=>'06',
        'IGARII ANTUAMBUGI WATER PROJECT'=>'07',
        'KALANTINA GAICHUIRI WOMEN GROUP'=>'08',
        'KALANTINA IMANI WOMEN GROUP'=>'09',
        'RURII MUGUNA MURIMI'=>'010',
        'KALANTINA BEST LADY'=>'011',
        'MUKUNGA WERU B WOMEN GROUP'=>'012',
        'KALANTINA WENDANI SUPPORT GROUP'=>'013',
        'KALANTINA ARISEN YOUTH GROUP'=>'014',
        'GITUU MWENDE WOMEN GROUP'=>'015',
        'KANTHANGA WATER PROJECT'=>'016',
        'KAMATHI KILUMONE WATER PROJECT'=>'017',
        'NKANDI CBO'=>'018',
        'NGAGE MATHABU WOMEN GROUP'=>'019',
        'NGAGE KINGDOM BUILDERS SHG'=>'020'
    }; 
     /*This method is called from the trigger and receives Ewarehouse Farmer Object List & the Commercial Purchase Group
      Hash map as the variables.
      On receiving this it compares the value of the Commercial Purchase group selected by user to the Hash Map Key
      then it identifies the ID of the Commercial Purchase group and assigns it to the Ccommercial Purchase Group ID 
      field in the group
    */
    static testMethod void getCommercialGroupID() {
        Contact c = new Contact(FirstName='Steve',LastName='Mark', Email='stevemark@gmail.com');
        insert c;
        
        c = [SELECT Contact.Id FROM Contact WHERE Id = :c.Id];
        System.debug('Contact ID is:  ' + c.Id);
        
        
        Ewarehouse_Farmer__c new_farmer = new Ewarehouse_Farmer__c (Registered_By__c=''+c.Id,Topics_of_Interest__c='Post harvest handling;Market information',Crop_Storage__c='Gunney bags; Plastic bags',Crop_Storage_Location__c='Household level; Group level',Crops__c='Beans; Maize; Pigeon peas',Contact__c=''+c.Id,Auto_Generated_Farmer_ID__c='',District__c='Tigania East',Commercial_Villages__c='ATHWANA',Commercial_Purchase_Groups__c='KARATHIA WOMEN GROUP');
        insert new_farmer;
        
        Ewarehouse_Farmer__c [] new_farmer_available = [SELECT Commercial_Village_ID__c,Registered_By__c,Auto_Generated_Farmer_ID__c,District__c,Commercial_Villages__c,Commercial_Purchase_Groups__c FROM Ewarehouse_Farmer__c];
        
        for(Ewarehouse_Farmer__c current_farmer :new_farmer_available){
           String district = current_farmer.District__c.trim().left(1)+current_farmer.District__c.trim().mid(9,1);
           
           //Get the commercial viallage ID
           String commercialVillage = current_farmer.Commercial_Village_ID__c;                     
               
           //Get the value of the hash map key
           String commercial_purchase_group = commercial_purchase_groups.get(''+current_farmer.Commercial_Purchase_Groups__c.trim());  
           
           //Call method to update Field in the object
           current_farmer.Commercial_Purchase_Group_ID__c = commercial_purchase_group;
               
           current_farmer.Auto_Generated_Farmer_ID__c = district.touppercase()+'/'+commercialVillage+'/'+commercial_purchase_group+'/'+ current_farmer.Farmer_ID__c;          
       }
       System.debug('Autogenerated ID' + new_farmer.Auto_Generated_Farmer_ID__c);
    }
    
    static testMethod void getFarmerClient(){
        Contact c = new Contact(FirstName='Steve',LastName='Mark', Email='stevemark@gmail.com');
        insert c;
        
        c = [SELECT Contact.Id FROM Contact WHERE Id = :c.Id];
        System.debug('Contact ID is:  ' + c.Id);
        
        
        Ewarehouse_Farmer__c new_farmer = new Ewarehouse_Farmer__c (Registered_By__c=''+c.Id,Topics_of_Interest__c='Post harvest handling;Market information',Crop_Storage__c='Gunney bags; Plastic bags',Crop_Storage_Location__c='Household level; Group level',Crops__c='Beans; Maize; Pigeon peas',Contact__c=''+c.Id,Auto_Generated_Farmer_ID__c='',District__c='Tigania East',Commercial_Villages__c='ATHWANA',Commercial_Purchase_Groups__c='KARATHIA WOMEN GROUP');
        insert new_farmer;
        
        Ewarehouse_Farmer__c [] new_farmer_available = [SELECT Contact__c,Registered_By__c,Auto_Generated_Farmer_ID__c,District__c,Commercial_Villages__c,Commercial_Purchase_Groups__c FROM Ewarehouse_Farmer__c];
        
        /*List<Id> ewarehouseVKWIds= new List<Id>();
        for (Ewarehouse_Farmer__c farmer : new_farmer_available) {
                if (farmer.Registered_By__c != null) {
                    ewarehouseVKWIds.add(farmer.Registered_By__c);                
                }
        }
       
       gfsurveys__Mobile_User__c[] mobile_user = [SELECT gfsurveys__Mobile_User__c.Id,gfsurveys__Mobile_User__c.gfsurveys__Contact__c FROM gfsurveys__Mobile_User__c WHERE gfsurveys__Contact__c IN :ewarehouseVKWIds];
       gfsurveys__Client_Assignation__c [] new_associations = new List<gfsurveys__Client_Assignation__c>();
       for (Ewarehouse_Farmer__c farmer : new_farmer_available ) {
           for(gfsurveys__Mobile_User__c current_mobile_user : mobile_user){
               if(current_mobile_user.gfsurveys__Contact__c == farmer.Registered_By__c) {
                    new_associations.add(new gfsurveys__Client_Assignation__c(gfsurveys__Mobile_User__c=current_mobile_user.id,gfsurveys__Client__c=''+farmer.Contact__c));                
               }
           }             
       }
       if(new_associations.size() > 0) {
           insert new_associations;
       } */
       //Variables to hold the ID's for VKW's & the Farmer Contacts
       List<Id> vkwContactIds= new List<Id>();
       List<Id> farmerContactIds = new List<Id>();
       
       for (Ewarehouse_Farmer__c farmer : new_farmer_available) {
            //Check whether the Registered_By Field is empty so as to add it to the ewarehouseFarmerIds List
            if (farmer.Registered_By__c != null) {
                vkwContactIds.add(farmer.Registered_By__c);                
            }
            // Add the farmer's contact Id to the list so that we can use it to check for duplicates
            farmerContactIds.add(farmer.Contact__c);
       }
       //Select the existing clients assigned from the gf_assignation object
       gfsurveys__Client_Assignation__c[] existingAssignments = [SELECT gfsurveys__Client__c FROM gfsurveys__Client_Assignation__c WHERE gfsurveys__Client__c IN :farmerContactIds];
       
       // Get only the missing ones
       List<Ewarehouse_Farmer__c> missingFarmers = new List<Ewarehouse_Farmer__c>();
       for (Ewarehouse_Farmer__c farmer : new_farmer_available){
           Boolean missing = True;
           for (gfsurveys__Client_Assignation__c existingAssignment: existingAssignments)  {
               if (existingAssignment.gfsurveys__Client__c == farmer.Contact__c) {
                   missing = False;
                   break;
               }
           }
           if (missing == True) {
               missingFarmers.add(farmer);
           }
       }
       
       // Get the vkw/mobile users
       gfsurveys__Mobile_User__c[] mobileUsers = [SELECT gfsurveys__Mobile_User__c.Id, gfsurveys__Mobile_User__c.gfsurveys__Contact__c FROM gfsurveys__Mobile_User__c WHERE gfsurveys__Contact__c IN :vkwContactIds];
       gfsurveys__Client_Assignation__c[] newAssociations = new List<gfsurveys__Client_Assignation__c>();
       for (Ewarehouse_Farmer__c farmer : missingFarmers) {
           for(gfsurveys__Mobile_User__c currentMobileUser : mobileUsers){
               if(currentMobileUser.gfsurveys__Contact__c == farmer.Registered_By__c) {
                    newAssociations.add(new gfsurveys__Client_Assignation__c(gfsurveys__Mobile_User__c=currentMobileUser.Id, gfsurveys__Client__c=farmer.Contact__c));                
               }
           }             
       }
       if(newAssociations.size() > 0) {
           insert newAssociations;
       }      
    }
}