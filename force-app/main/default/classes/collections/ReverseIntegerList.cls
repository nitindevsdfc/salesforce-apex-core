/*
You are given a List<Integer>.

👉 Write an Apex method that reverses the list
❌ Do NOT use List.reverse().

*/

public class DailyPractice{

    public static List<Integer> reverseList(List<Integer> numberlist){

        List<Integer> reverseList = new List<Integer>(); 

        if(numberlist == null || numberlist.isEmpty()){
            return  reverseList;
        }

        for(Integer i = numberlist.size()-1; i >= 0 ; i++){
            reverseList.add(numberlist[i]);
        }

        return reverseList;
    }
}