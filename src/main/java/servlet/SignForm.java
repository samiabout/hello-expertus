
package servlet;

import beans.ElementsToDisplay;
import beans.User;
import forms.Sign;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SignForm extends HttpServlet {


    public static final String VIEW = "/WEB-INF/forms/Sign.jsp";

    public void doGet( HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse ) throws ServletException, IOException{

        this.getServletContext().getRequestDispatcher(VIEW).forward( httpServletRequest, httpServletResponse );
    }

    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException{

        Sign form = new Sign();
        form.sign(httpServletRequest);

        if(form.getForm()==1){
            User newUser = form.signUp( httpServletRequest );
            if(form.isSuccess()){
                ElementsToDisplay.users.add(newUser);

                HttpSession session = httpServletRequest.getSession();
                session.setAttribute("users", ElementsToDisplay.getUsers());
            }
            httpServletRequest.setAttribute( "form", form );
            httpServletRequest.setAttribute( "user", newUser );

            this.getServletContext().getRequestDispatcher(VIEW).forward( httpServletRequest, httpServletResponse );

        }

        if(form.getForm()==2){
            User user = form.signIn( httpServletRequest );
            if(form.isSuccessC()){
                HttpSession session = httpServletRequest.getSession();
                session.setAttribute( "user", user );
                session.setAttribute("users", ElementsToDisplay.getUsers());
            }
            httpServletRequest.setAttribute( "form", form );
            httpServletRequest.setAttribute( "user", user );

            this.getServletContext().getRequestDispatcher(VIEW).forward( httpServletRequest, httpServletResponse );

        }

    }
}