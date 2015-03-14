public with sharing class NavigateToListDemoController {
    
    @AuraEnabled
    public static List<ListView> getListViews() {
        List<ListView> listviews = 
            [SELECT Id, Name FROM ListView WHERE SobjectType = 'Account'];
        return listviews;
    }
}