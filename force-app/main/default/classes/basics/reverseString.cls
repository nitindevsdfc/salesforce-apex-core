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

}