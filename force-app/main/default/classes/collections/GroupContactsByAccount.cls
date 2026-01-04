/*🔹 Problem Statement

You are given a List<Contact>.
Write an Apex method that returns:

Map<Id, List<Contact>>


Where:

Key → AccountId

Value → List of Contacts related to that Account */

public class dailyPracticeSecond{

    public static Map<Id, List<Contact>> accountContactMap(List<Contact> contactlist){

        Map<Id, List<Contact>> accountContact = new Map<Id, List<Contact>>();

        if(contactlist == null || contactlist.isEmpty()){
            return accountContact;
        }

        for(Contact con : contactlist){

            if(con.AccountId == null){
                continue;
            }

            if(!accountContact.containsKey(con.AccountId)){
                accountContact.put(con.AccountId, new List<Contact>());
            }
                accountContact.get(con.AccountId).add(con);
            
        }

        return accountContact;
    }
}