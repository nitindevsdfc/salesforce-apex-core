/*
You are given a list of Opportunity records.

👉 Write an Apex method that returns the AccountId which has the maximum number of Opportunities.
*/


public class AccountWithMaximumOpportunity{

    public static Id getAccountId(List<opportunity> opportunitylist){

        Map<Id, Integer> accoppMap = new Map<Id, Integer>();

        Id maxOpportunityaccountId = null;
        Integer maxOpportunity = 0;

        if(opportunitylist == null || opportunitylist.isEmpty()){
            return null;
        }


        for(opportunity opp : opportunitylist){

            if(opp.AccountId == null){
                continue;
            }

            if(!accoppMap.containsKey(opp.AccountId)){
                accoppMap.put(opp.AccountId, 1);
            }else{
                accoppMap.put(opp.AccountId, accoppMap.get(opp.AccountId) + 1);
            }
        }

        for(Id accId : accoppMap.keySet()){
            if(accoppMap.get(accId) > maxOpportunity){
                maxOpportunity = accoppMap.get(accId);
                maxOpportunityaccountId = accId;
            }
        }

        return maxOpportunityaccountId;
    }
}