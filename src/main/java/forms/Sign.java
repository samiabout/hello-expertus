package forms;

import beans.ElementsToDisplay;
import beans.User;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by sami- on 22/11/2017.
 */
public class Sign {

    private int form;
    private String msg;
    private boolean success;
    private String msgC;
    private boolean successC;

    public void sign(HttpServletRequest request ){
       if(request.getParameter("form").equals("signUp")){
           form=1;
        }
        if(request.getParameter("form").equals("signIn")){
            form=2;
        }
    }

    public User signUp(HttpServletRequest request ) {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String passwordConf = request.getParameter("passwordconf");

        User user = new User(userName, password);
        user.setUserName(userName);
        msg = "Sign up Successful!";
        success=true;
        if(!password.equals(passwordConf)){
            msg="The passwords do not match.";
            success=false;
        }
        for (int i = 0; i < ElementsToDisplay.users.size(); i++) {
            if(ElementsToDisplay.users.get(i).getUserName().equals(userName)){
                msg="User Name already used.";
                success=false;
            }
        }
        user.setPassword(password);
        return user;
    }


    public User signIn(HttpServletRequest request ) {
        String userName = request.getParameter("usernameC");
        String password = request.getParameter("passwordC");
        User userC=new User();
        successC=false;
        msgC="Wrong User Name or wrong password";
        for (int i = 0; i < ElementsToDisplay.users.size(); i++) {
            if(ElementsToDisplay.users.get(i).getUserName().equals(userName)){
                if (ElementsToDisplay.users.get(i).getPassword().equals(password)){
                    successC=true;
                    msgC="Connection successful, click on your user name to access new functionalities";
                    userC=ElementsToDisplay.getUsers().get(i);
                }
            }
        }
        return userC;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getMsgC() {
        return msgC;
    }

    public void setMsgC(String msgC) {
        this.msgC = msgC;
    }

    public boolean isSuccessC() {
        return successC;
    }

    public void setSuccessC(boolean successC) {
        this.successC = successC;
    }

    public int getForm() {
        return form;
    }

    public void setForm(int form) {
        this.form = form;
    }
}
