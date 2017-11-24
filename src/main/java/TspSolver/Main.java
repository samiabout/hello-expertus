package TspSolver;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

/**
 * Created by sami- on 23/09/2017.
 */
public class Main {


    public String solve(HttpServletRequest request ) {
        ArrayList<Node> nodesL=new ArrayList<>();
        Node[] nodes;
        for (int i = 1; i < 50; i++) {

            try{
                nodesL.add(new Node("val"+i,Integer.parseInt(request.getParameter("x"+i)),Integer.parseInt(request.getParameter("y"+i))));

            }catch (Exception e){
            }

        }
        nodes=new Node[nodesL.size()];
        for (int i = 0; i < nodesL.size(); i++) {
            nodes[i]=new Node(nodesL.get(i).getName(),nodesL.get(i).getX(),nodesL.get(i).getY());
        }
          Graph graphTest=new Graph(nodes,true,true);


//       Graph graph=new Graph("test.txt");
        return graphTest.getSolution();
    }

}