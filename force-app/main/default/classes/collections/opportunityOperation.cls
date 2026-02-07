public class opportunityOperation{

    public static Map<Id, Decimal> calculateTotalOpportunityAmount(List<Opportunity> opplist){

        Map<Id, Decimal> accMap = new Map<Id, Decimal>();

        for(Opportunity opp : opplist){

            if(opp.AccountId == null){
                continue;
            }

            if(!accMap.containsKey(opp.AccountId)){

                accMap.put(opp.AccountId, opp.Amount);
                
            }else{

                accMap.put(opp.AccountId, accMap.get(opp.AccountId) + opp.Amount);

            }

        }

        return accMap;
    }
}