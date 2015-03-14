@isTest
private class NavigateToListDemoControllerTest {

    private static User testAdminUser  = new User(Id = UserInfo.getUserId());
    
    static testMethod void getListViewsTest() {
        System.runAs(testAdminUser)  {
            Test.startTest();
            
            List<ListView> results = NavigateToListDemoController.getListViews();
            
            Test.stopTest();
            
            System.assertEquals(results.isEmpty(), false);
        }
    }
}