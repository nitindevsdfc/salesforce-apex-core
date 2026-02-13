public class operation{
    public static String getResult(List<Integer> marks) {

        if (marks == null || marks.isEmpty()) {
            return 'No Data';
        }

        Decimal sum = 0;
        Integer sizeOfList = marks.size();

        for (Integer i : marks) {
            sum += i;
        }

        Decimal average = sum / sizeOfList;

        if (average >= 75) {
            return 'Distinction';
        } else if (average >= 60) {
            return 'First Class';
        } else if (average >= 50) {
            return 'Second Class';
        } else {
            return 'Fail';
        }
    }
}