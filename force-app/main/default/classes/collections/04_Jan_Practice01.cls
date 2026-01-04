/*
You are given a List<String> that contains Account Names, and some names may be duplicated.

👉 Write an Apex method that removes duplicates and returns a list of unique account names.
*/

public class DailyPractice {

    public static List<String> removeDuplicates(List<String> accountNames) {

        Set<String> uniqueAccounts = new Set<String>();
        List<String> uniqueAccountList = new List<String>();

        if (accountNames == null || accountNames.isEmpty()) {
            return uniqueAccountList;
        }

        for (String acc : accountNames) {
            if (!uniqueAccounts.contains(acc)) {
                uniqueAccounts.add(acc);
                uniqueAccountList.add(acc);
            }
        }

        return uniqueAccountList;
    }
}
