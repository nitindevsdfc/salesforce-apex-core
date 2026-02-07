Public class AccountWithMaximumOpportunities{
    public static Map<String, List<Contact>> checkDuplicateContact(List<Contact> contactList) {
    
        Map<String, List<Contact>> conMap = new Map<String, List<Contact>>();
        
        
        for (Contact con : contactList) {
            if (con.Email == null) continue;
            
            if (!conMap.containsKey(con.Email)) {
                conMap.put(con.Email, new List<Contact>());
            }
            
            conMap.get(con.Email).add(con);
        }
        
        
        Map<String, List<Contact>> duplicateContactMap = new Map<String, List<Contact>>();
        for (String email : conMap.keySet()) {
            if (conMap.get(email).size() > 1) {
                duplicateContactMap.put(email, conMap.get(email));
            }
        }
        
        return duplicateContactMap;
    }

}
