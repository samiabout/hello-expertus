package servlet;

import beans.ElementsToDisplay;
import beans.User;
import TspSolver.Main;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by sami- on 23/11/2017.
 */
public class TspForm extends HttpServlet {


    public static final String VIEW = "/WEB-INF/apps/tsp.jsp";

    public void doGet( HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse ) throws ServletException, IOException{
        this.getServletContext().getRequestDispatcher(VIEW).forward( httpServletRequest, httpServletResponse );
    }

    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {

        TspSolver.Main tsp = new Main();
        String solution=tsp.solve(httpServletRequest);


        httpServletRequest.setAttribute( "solution", solution );
        httpServletRequest.setAttribute( "solutions", tsp );
        httpServletRequest.setAttribute( "msg", Main.getMsg() );
        httpServletRequest.setAttribute( "nodesListe", Main.getNodesL() );
        httpServletRequest.setAttribute( "totalDistance", Main.getTotalDistance() );
        httpServletRequest.setAttribute( "nbPossibilities", Main.getNbPossibilities() );
        httpServletRequest.setAttribute( "nodesSolution", Main.getNodesSolution() );
        httpServletRequest.setAttribute( "users", ElementsToDisplay.getUsers());

        this.getServletContext().getRequestDispatcher(VIEW).forward( httpServletRequest, httpServletResponse );



    }

}