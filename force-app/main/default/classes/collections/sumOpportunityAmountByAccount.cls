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

            if(opp.AccountId == null || opp.Amount == null){
                continue;
            }

            if(!amountSumMap.containsKey(opp.AccountId)){
                amountSumMap.put(opp.AccountId, opp.Amount);
            }else{
                amountSumMap.put(opp.AccountId, amountSumMap.get(opp.AccountId) + opp.Amount);
            }
        }

        return amountSumMap;
                                    
    }
}