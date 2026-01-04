/*
You are given a List<String> representing Lead Sources.

👉 Write an Apex method that returns a Map<String, Integer> showing how many times each lead source appears.
*/

public class DailyPractice {

    public static Map<String, Integer> countLeadSources(List<String> leadSourceList) {

        Map<String, Integer> leadSourceMap = new Map<String, Integer>();

        if (leadSourceList == null || leadSourceList.isEmpty()) {
            return leadSourceMap;
        }

        for (String source : leadSourceList) {
            if (!leadSourceMap.containsKey(source)) {
                leadSourceMap.put(source, 1);
            } else {
                leadSourceMap.put(source, leadSourceMap.get(source) + 1);
            }
        }

        return leadSourceMap;
    }
}
