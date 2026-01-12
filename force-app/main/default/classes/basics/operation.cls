public class operation{

    public static String reverse(String input){

        if(String.isBlank(input)){
            return input;
        }

        String revString = '';

        for(Integer i=input.length()-1; i>=0; i--){
            revString += input.subString(i,i+1);
        }

        return revString;
    }

    public static Boolean isPalindrome(String input) {

        if (String.isBlank(input)) {
            return true;
        }

        input = input.toLowerCase();

        Integer left = 0;
        Integer right = input.length() - 1;

        while (left < right) {

            if (input.substring(left, left + 1) != input.substring(right, right + 1)) {
                
                return false;
            }

            left++;
            right--;
        }

        return true;
    }


    public static Integer findLargest(List<Integer> integerlist){
        if(integerlist == null || integerlist.isEmpty()){
            return null;
        }

        Integer maximum = integerlist[0];

        for(Integer i : integerlist){
            if(maximum < i){
                maximum = i;
            }
        }
        return maximum;
    }


    public static List<Integer> removeDuplicates(List<Integer> numberList) {

        if (numberList == null || numberList.isEmpty()) {
            return new List<Integer>();
        }

        Set<Integer> uniqueSet = new Set<Integer>();

        for (Integer num : numberList) {
            if (!uniqueSet.contains(num)) {
                uniqueSet.add(num);
            }
        }

        return new List<Integer>(uniqueSet);
    }

    public static Map<String, Integer> countOccuranceOfString(String input){

        Map<String, Integer> wordCount = new Map<String, Integer>(); 

        if(String.isBlank(input)){
            return wordCount;
        }

        List<String> words = input.split(' ');

        for(String str : words){
            if(!wordCount.containsKey(str)){
                wordCount.put(str, 1);
            }else{
                wordCount.put(str, wordCount.get(str)+1);
            }
        }

        return wordCount;
    }

    public static Map<Id, List<Contact>> groupContactByAccountId(List<Contact> contactlist){

        Map<Id, List<Contact>> accMap = new Map<Id, List<Contact>>();

        if(contactlist == null || contactlist.isEmpty()){
            return accMap;
        }

        for(Contact con : contactlist){

            if(con.AccountId == nul){
                continue;
            }

            if(!accMap.containsKey(con.AccountId)){
                accMap.put(con.AccountId, new List<Contact>());
            }

            accMap.get(con.AccountId).add(con);
            
        }

        return accMap;
    }

}
