package TspSolver;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

/**
 * Created by sami- on 23/09/2017.
 */
public class Main {


    public String solve(HttpServletRequest request ) {
        ArrayList<Node> nodesL = new ArrayList<>();
        Node[] nodes;
        int increment=1;
        boolean finish=false;
        while (!finish){
            try {
                nodesL.add(new Node("val" + increment, Integer.parseInt(request.getParameter("x" + increment)), Integer.parseInt(request.getParameter("y" + increment))));
                increment++;
            } catch (Exception e) {
                finish=true;
            }

        }
        nodes = new Node[nodesL.size()];
        for (int i = 0; i < nodesL.size(); i++) {
            nodes[i] = new Node(nodesL.get(i).getName(), nodesL.get(i).getX(), nodesL.get(i).getY());
        }
        if(nodes.length>1){
            if (nodes.length <= 15) {
                Graph graphTest = new Graph(nodes, true, true);
                return graphTest.getSolution();
            }
            if (nodes.length > 15) {
                GraphApproximation graphTest = new GraphApproximation(nodes, true, false, 2);
                return graphTest.getSolution();
            }
        }

        return "";

//       Graph graph=new Graph("test.txt");

    }
}

