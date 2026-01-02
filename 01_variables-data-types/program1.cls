public global with sharing class MyClass {
    public static void demoMethod(){
        string accountName = 'Apple Inc India';
        Integer totalEmployees = 78500;
        Decimal revenue = 98956321452.32;
        Boolean isActive = true;


        System.debug('Account Name : '+ accountName);
        System.debug('Total No of Employess '+ totalEmployees);
        System.debug('Total Yearly Revenue '+revenue);
        System.debug('Is Account Active '+isActive);
    }
}