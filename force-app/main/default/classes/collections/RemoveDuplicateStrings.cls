/*
Given a List<Id> of AccountIds,
remove duplicates while preserving original order.

Example:

[A1, A2, A1, A3, A2]


Output:

[A1, A2, A3] 
*/

public class dailyPracticeFourth{
    
    public static List<Id> removeDuplicatesPreserveOrder(List<Id> accountIds) {
        
        List<Id> uniqueAccountIdList = new List<Id>();
        Set<Id> seen = new Set<Id>();

        if(accountIds == null || accountIds.isEmpty()){
            return uniqueAccountIdList;
        }

        for(Id accId : accountIds){

            if(!seen.contains(accId)){
                seen.add(accId);
                uniqueAccountIdList.add(accId);
            }
        }
        
        return uniqueAccountIdList;

    }
}