/*
You are given a list of Opportunity records.

Each Opportunity has:

Id

AccountId

StageName

Amount

CloseDate

Task

Write an Apex method that returns a Map<AccountId, List<Opportunity>> with the following rules:

🔐 Rules (IMPORTANT)

1️⃣ Only consider Opportunities where:

StageName != 'Closed Lost'

Amount > 0

2️⃣ For each Account, return at most 3 Opportunities.

3️⃣ The 3 Opportunities must be:

The highest Amount Opportunities

If Amount is same → earliest CloseDate first

4️⃣ If an Account has less than 3 valid Opportunities, return all of them.

5️⃣ DO NOT use SOQL inside loops

6️⃣ Time Complexity must be O(n log n) or better
*/

public class TopOpportunity{

    public static Map<Id, List<opportunity>> getTopOpportunityList(List<opportunity> opportunityList){

        Map<Id, List<opportunity>> oppMap = new Map<Id, List<opportunity>>();

        if(opportunityList == null || opportunityList.isEmpty()){
            return oppMap;
        }

        for(opportunity opp : opportunityList){

            if(opp.AccountId == null || opp.Amount <= 0 || opp.StageName == 'Closed Lost'){
                continue;
            }

            if(!oppMap.containsKey(opp.AccountId)){
                oppMap.put(opp.AccountId, new List<opportunity>());
            }

            oppMap.get(opp.AccountId).add(opp);

        }
        
    }
}