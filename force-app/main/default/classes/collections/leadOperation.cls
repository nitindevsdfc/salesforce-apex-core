public class leadOperation {

    public static Map<String, List<Lead>> findDuplicateLead(List<Lead> leadList) {

        Map<String, List<Lead>> leadMap = new Map<String, List<Lead>>();
        Set<Id> leadIdsToMerge = new Set<Id>();

        
        for (Lead l : leadList) {
            if (l.Email == null) continue;

            if (!leadMap.containsKey(l.Email)) {
                leadMap.put(l.Email, new List<Lead>());
            }

            leadMap.get(l.Email).add(l);
        }

        
        Map<String, List<Lead>> duplicateLeadMap = new Map<String, List<Lead>>();

        for (String email : leadMap.keySet()) {
            List<Lead> leadsWithSameEmail = leadMap.get(email);

            if (leadsWithSameEmail.size() > 1) {

                duplicateLeadMap.put(email, leadsWithSameEmail);

                
                for (Integer i = 1; i < leadsWithSameEmail.size(); i++) {
                    if (leadsWithSameEmail[i].Id != null) {
                        leadIdsToMerge.add(leadsWithSameEmail[i].Id);
                    }
                }
            }
        }

        
        System.debug('Lead Ids to Merge: ' + leadIdsToMerge);

        return duplicateLeadMap;
    }
}
