/*
You are given a List<Integer> that contains positive and negative numbers.

👉 Write an Apex method to find and return the largest number from the list.
*/

public class DailyPractice {

    public static Integer findLargest(List<Integer> numbersList) {

        if (numbersList == null || numbersList.isEmpty()) {
            return 0;
        }

        Integer maximum = numbersList[0];

        for (Integer i = 1; i < numbersList.size(); i++) {
            if (numbersList[i] > maximum) {
                maximum = numbersList[i];
            }
        }

        return maximum;
    }
}
