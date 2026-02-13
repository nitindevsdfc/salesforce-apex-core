public class removeDuplicates{

    public static List<Integer> removeDuplicatesFromList(List<Integer> nums) {

        Set<Integer> uniqueSet = new Set<Integer>();
        List<Integer> updatedList = new List<Integer>();

        if (nums == null || nums.isEmpty()) {
            return updatedList;
        }

        for (Integer i : nums) {

            if (i == null) continue; // ignore nulls

            if (!uniqueSet.contains(i)) {
                uniqueSet.add(i);
                updatedList.add(i); // preserve order
            }
        }

        return updatedList;
    }

}