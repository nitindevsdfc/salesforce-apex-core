/*
You are given a List<Opportunity> (think: Trigger.new).

👉 Write an Apex method that groups Opportunities by their AccountId.

*/

public class GroupOpportunity{

    public static Map<Id, List<opportunity>> groupOpportunityByAccountId(List<opportunity> opportunitylist){

        Map<Id, List<opportunity>> IdOppMap = new Map<Id, List<opportunity>>();

        if(opportunitylist == null || opportunitylist.isEmpty()){
            return IdOppMap;
        }

        for(opportunity opp : opportunitylist){

            if(opp.AccountId == null){
                continue;
            }

            // If key doesn't exist, create new list
            if(!IdOppMap.containsKey(opp.AccountId)){
                IdOppMap.put(opp.AccountId, new List<opportunity>());
            }

            // Add opportunity to the list
            IdOppMap.get(opp.AccountId).add(opp);
        }

        return IdOppMap;
    }   
}