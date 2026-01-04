/*
You are given a List<Opportunity>.

👉 Write an Apex method that calculates the total Opportunity Amount per AccountId.
*/

public class SumAmount{

    public static Map<Id, Decimal> sumOpportunityAmountByAccount(List<opportunity> opportunitylist){

        Map<Id, Decimal> amountSumMap = new Map<Id, Decimal>();
        
        if(opportunitylist == null || opportunitylist.isEmpty()){
            return amountSumMap;
        }

        set<Id> accountIdSet = new set<Id>();

        for(opportunity opp : opportunitylist){
            
        }

        return amountSumMap;
                                    
    }
}