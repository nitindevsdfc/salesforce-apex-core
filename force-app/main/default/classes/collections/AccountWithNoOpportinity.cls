/*
You are given:

A list of Account records

A list of Opportunity records

👉 Write an Apex method that returns a List of Accounts that have ZERO Opportunities.
*/

public class AccountWithNoOpportunity{

    public static List<Account> findAccountsWithNoOpportunities( List<Account> accountList, List<Opportunity> opportunityList){

        List<Account> accountlistWithNoOpportunity = new List<Account>();

        set<Id> accId = new set<Id>();
        
        if(accountList == null || accountList.isEmpty()){
            return accountlistWithNoOpportunity;
        }

        for(opportunity opp : opportunityList){

            if(opp.AccountId == null){
                continue;
            }

            accId.add(opp.AccountId);

        }

        for(Account acc : accountList){
            
            if(!accId.contains(acc.Id)){
                accountlistWithNoOpportunity.add(acc);
            }
        }

        return accountlistWithNoOpportunity;


    }
    


}