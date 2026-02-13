public class countNames{

    public static Map<String, Integer> countNamesInList(List<String> names){
        
        Map<String, Integer> detailMap = new Map<String, Integer>();
        
        if(names == null || names.isEmpty()) return detailMap;
        
        for(String str : names){
            
            if(str == null || str.trim() == '') continue;
            
            String name = str.trim().toLowerCase();
            
            if(!detailMap.containsKey(name)){
                detailMap.put(name, 1);
            } else {
                detailMap.put(name, detailMap.get(name) + 1);
            }
        }
        
        return detailMap;
    }

}