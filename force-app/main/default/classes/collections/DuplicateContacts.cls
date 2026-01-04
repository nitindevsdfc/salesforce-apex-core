/*
Scenario

When inserting Contacts:

The same Email should NOT exist under the same Account

Same Email under different Accounts is allowed.
*/

public class DuplicateContacts{

    public static List<Contact> findDuplicateContacts(List<Contact> newContacts,List<Contact> existingContacts ){
        
        List<Contact> duplicateContactList = new List<Contact>();
        Set<String> emailIdSet = new Set<String>();

        if(newContacts == null || newContacts.isEmpty()){
            return duplicateContactList;
        }

        // Prepare existing contact keys
        if(existingContacts != null){
            for(Contact con : existingContacts){
                if(con.AccountId == null || con.Email == null){
                    continue;
                }
                emailIdSet.add(con.Email + '-' + con.AccountId);
            }
        }

        // Check new contacts
        for(Contact con : newContacts){
            if(con.AccountId == null || con.Email == null){
                continue;
            }

            String key = con.Email + '-' + con.AccountId;
            if(emailIdSet.contains(key)){
                duplicateContactList.add(con);
            }
        }

        return duplicateContactList;
    }
}
