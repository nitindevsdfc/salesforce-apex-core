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


}