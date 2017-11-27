package TspSolver;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sami- on 23/09/2017.
 */
public class Main {
    public static ArrayList<Node> getNodesSolution() {
        return nodesSolution;
    }

    public static void setNodesSolution(ArrayList<Node> nodesSolution) {
        Main.nodesSolution = nodesSolution;
    }

    public static double getNbPossibilities() {
        return nbPossibilities;
    }

    public static void setNbPossibilities(int nbPossibilities) {
        Main.nbPossibilities = nbPossibilities;
    }

    public static double getTotalDistance() {
        return totalDistance;
    }

    public static void setTotalDistance(double totalDistance) {
        Main.totalDistance = totalDistance;
    }

    public static ArrayList<Node> getNodesL() {
        return nodesL;
    }

    public static void setNodesL(ArrayList<Node> nodesL) {
        Main.nodesL = nodesL;
    }

    public static String getMsg() {
        return msg;
    }



    static ArrayList<Node> nodesSolution;
    static String msg;
    static double nbPossibilities;
    static double totalDistance;
    static ArrayList<Node> nodesL;

    public String solve(HttpServletRequest request ) {
        nodesSolution = new ArrayList<>();
        nodesL = new ArrayList<>();
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
                msg="Exact solution";
                return graphTest.getSolution();
            }
            if (nodes.length > 15) {
                msg="Approximated solution";
                GraphApproximation graphTest = new GraphApproximation(nodes, true, false, 2);
                return graphTest.getSolution();
            }
        }

        return "";

//       Graph graph=new Graph("test.txt");

    }

}

