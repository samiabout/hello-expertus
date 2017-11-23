package beans;
import java.io.Serializable;
import java.util.ArrayList;

/**
 * Created by sami- on 17/11/2017.
 */
public class ElementsToDisplay implements Serializable  {
    public String title="Hello Expertus!";
    public static ArrayList<User> users=new ArrayList<User>();

    public static ArrayList<User> getUsers() {
        return users;
    }

    public void setUsers(ArrayList<User> users) {
        this.users = users;
    }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }



}
