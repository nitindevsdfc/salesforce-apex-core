/*
You are given a List<User>.

👉 Write an Apex method that returns a List<User> containing only Active users.

*/

public class ActiveUser{

    public static List<User> getActiveUser(List<User> userlist){

        List<User> activeuser = new List<User>();

        if(userlist == null || userlist.isEmpty()){
            return activeuser;
        }

        for(User u : userlist){
            if(u.isActive == true){
                activeuser.add(u);
            }
        }

        return activeuser;
    }
}