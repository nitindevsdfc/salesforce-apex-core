/*
🧩 Scenario

You are given a list of Opportunity records (like Trigger.new).

Business Rule

❌ An Account cannot have more than 3 Opportunities in the same Stage

*/

public class findInvalidOpportunity{

    public static List<opportunity> getInvalidOpportunity(List<opportunity> opportunityList){

        Map<String, Integer> oppMap = new Map<String, Integer>();

        List<opportunity> invalidOpportunitylist = new List<opportunity>();

        if(opportunityList == null || opportunityList.isEmpty()){
            return invalidOpportunitylist;
        }

        for(opportunity opp : opportunityList){

            if(opp.AccountId == null){
                continue;
            }

            string key = con.AccountId + ' - ' + con.StageName;

            if(!oppMap.containsKey(key)){
                oppMap.put(key, 1);
            }else{
                oppMap.put(key, oppMap.get(key) + 1);
            }
        }
    }

}