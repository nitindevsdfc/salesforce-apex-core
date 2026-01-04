/*
You are given a List<Contact>.

👉 Write an Apex method that returns a Set<String> containing email addresses that appear more than once.
*/

public class DuplicateEmail {

    public static Set<String> findDuplicateEmails(List<Contact> contactList) {

        Map<String, Integer> emailCountMap = new Map<String, Integer>();
        Set<String> duplicateEmailSet = new Set<String>();

        if (contactList == null || contactList.isEmpty()) {
            return duplicateEmailSet;
        }

        for (Contact con : contactList) {

            
            if (con.Email == null) {
                continue;
            }

            if (!emailCountMap.containsKey(con.Email)) {
                emailCountMap.put(con.Email, 1);
            } else {
                emailCountMap.put(con.Email, emailCountMap.get(con.Email) + 1);
            }
        }

        for (String email : emailCountMap.keySet()) {
            if (emailCountMap.get(email) > 1) {
                duplicateEmailSet.add(email);
            }
        }

        return duplicateEmailSet;
    }
}
