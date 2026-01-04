/*Given a List<String> of Opportunity Stages, return a Map<String, Integer> showing how many times each stage appears.

Example:

['Prospecting', 'Closed Won', 'Prospecting', 'Negotiation']


Output:

{
 'Prospecting' => 2,
 'Closed Won' => 1,
 'Negotiation' => 1
}*/

public class dailyPracticeThird{
    public static Map<String, Integer> stageCount(List<String> StageNameList){

        Map<String, Integer> opportunityCountMap = new Map<String, Integer>();

        if(StageNameList == null || StageNameList.isEmpty()){
            return opportunityCountMap;
        }

        for(String stage : StageNameList){

            if(!opportunityCountMap.containsKey(stage)){
                opportunityCountMap.put(stage, 1);
            }else{
                Integer count = opportunityCountMap.get(stage);
                opportunityCountMap.put(stage, count+1);
            }
        }

        return opportunityCountMap;
    }
}