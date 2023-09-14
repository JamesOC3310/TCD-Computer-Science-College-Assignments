//All imported libraries from algs4 jar file found on Algorithms Princeton website: https://algs4.cs.princeton.edu/code/
//Imported DijkstaSP.java from Princeton textbook using alg4.jar file as external library
import edu.princeton.cs.algs4.DijkstraSP;
//Imported EdgeWeightedDigraph.java from Princeton textbook using alg4.jar file as external library
import edu.princeton.cs.algs4.EdgeWeightedDigraph;
//Imported DirectedEdge.java from Princeton textbook using alg4.jar file as external library
import edu.princeton.cs.algs4.DirectedEdge;
//Imported TST.java from Princeton textbook using alg4.jar file as external library
import edu.princeton.cs.algs4.TST;
import java.util.concurrent.TimeUnit;
import java.io.BufferedReader;
import java.io.*;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.time.LocalTime;
import java.util.ArrayList;
import java.time.format.DateTimeFormatter;
import java.util.*;


public class FinalProjectQ1 {

    public static void main(String[] args) throws Exception {

        // read text files to HashMaps
        Map<String, Integer> stopsMap = new HashMap<String, Integer>();
        Map<Integer, Integer> stopsMapIndexes = new HashMap<Integer, Integer>();
        Map<Integer, String> stopsMapToName = new HashMap<Integer, String>();
        Map<String, Integer> arrivalTimesMap = new HashMap<String, Integer>();

        //Array list for part 1, with costs and associated edges
        ArrayList<DirectedEdge>[] edgesAndWeights;

        // Passing the path to the file as a parameter
        BufferedReader reader = new BufferedReader(new FileReader("/Users/jamesoconnell/Documents/IntelliJ Programs/Algs Final Project/stops.txt"));
        //skipping labels in stops.txt
        reader.readLine();

        String line = null;

        int stopVertex = 0;
        int V = 0;

        int stopId;

        String stopName = null;

        //Using TST class from algs4 jar file from Algorithms Princeton website
        TST<String> busStopTST = new TST<>();

        while ((line = reader.readLine()) != null) {

            // split the line by using .split with ","
            String[] parts = line.split(",");

            // separated by stopId, stopCode, stopName, stopDesc, stopLatitude, zoneId, stopUrl, locationType, parentStation
             stopId = Integer.parseInt(parts[0]);

             stopName = parts[2];

             //Adding needed data to hashmaps
            stopsMap.put(stopName, stopId);
            stopsMapToName.put(stopVertex, stopName);
            stopsMapIndexes.put(stopId, stopVertex);
            stopVertex++;
            //Adding needed data to bus stop names TST object
            busStopTST.put(stopName, String.valueOf(stopId));

        }
        reader.close();

        //Getting number of entries in stops.txt
        int maximum_stops = 0;
        List<String> stops = Files.readAllLines(new File("/Users/jamesoconnell/Documents/IntelliJ Programs/Algs Final Project/stops.txt").toPath(), Charset.defaultCharset());
        for (int i = 1; i < stops.size(); i++)
        {
            String[] parts = stops.get(i).split(",");
            int currentStop = Integer.parseInt(parts[0]);
            if (currentStop > maximum_stops)
            {
                maximum_stops = currentStop;
            }
        }

        V = stopVertex;
        //Using EdgeWeightedDigraph to create eWD object with number of stops in stops.txt
        EdgeWeightedDigraph eWD = new EdgeWeightedDigraph(maximum_stops);

        edgesAndWeights = new ArrayList[V];
        for(int i = 0; i < V; i++)
        {
            edgesAndWeights[i] = new ArrayList<>();
        }

        // read text file to HashMap
        Map<String, String> transfersMap = new HashMap<String, String>();

        // Passing the path to the file as a parameter
        BufferedReader bufr = new BufferedReader(new FileReader("/Users/jamesoconnell/Documents/IntelliJ Programs/Algs Final Project/transfers.txt"));

        //skipping labels in transfers.txt
        bufr.readLine();

        String transfersLine = null;

        int fromStopId = 0;
        int toStopId = 0;
        int fromStopIndex = 0;
        int toStopIndex = 0;
        double transferWeight = 0;



        while ((transfersLine = bufr.readLine()) != null) {

            // split the line by using .split with ","
            String[] parts = transfersLine.split(",");

            // first part is from_stop_id, second is to_stop_id
             fromStopId = Integer.parseInt(parts[0].trim());
             toStopId = Integer.parseInt(parts[1].trim());
            fromStopIndex = stopsMapIndexes.get(fromStopId);
            toStopIndex = stopsMapIndexes.get(toStopId);
            transferWeight = (Integer.parseInt(parts[2]) == 0) ? 2.0 : Double.parseDouble(parts[3])/100;
            //Using the DirectedEdge class to add edges to the EdgeWeightedDigraph class object
            eWD.addEdge(new DirectedEdge(fromStopIndex,toStopIndex, 1.0));
            edgesAndWeights[fromStopIndex].add(new DirectedEdge(fromStopIndex, toStopIndex, transferWeight));

        }

        bufr.close();


        // Passing the path to the file as a parameter
        BufferedReader bufreader = new BufferedReader(new FileReader("/Users/jamesoconnell/Documents/IntelliJ Programs/Algs Final Project/stop_times.txt"));

        bufreader.readLine();

        String stopTimesLine = null;

        String arrivalTimes = null;

        int lastTripMapId = -1;

        int currentTripMapId = 0;

        while ((stopTimesLine = bufreader.readLine()) != null) {

            // split the line by using .split with ","
            assert stopTimesLine != null;
            String[] parts = stopTimesLine.split(",");

            //Handling invalid times
            try
            {

                LocalTime.parse(parts[1].replaceAll("\\s+", "0"), DateTimeFormatter.ofPattern("H:mm:ss"));
                LocalTime.parse(parts[2].replaceAll("\\s+", "0"), DateTimeFormatter.ofPattern("H:mm:ss"));
            }
            catch (Exception e)
            {
                continue;
            }

            currentTripMapId = Integer.parseInt(parts[0]);
            arrivalTimes = parts[1];

            toStopId = Integer.parseInt(parts[3]);

            //Adding needed data to hashmap
            arrivalTimesMap.put(arrivalTimes, currentTripMapId);

            if(currentTripMapId == lastTripMapId)
            {
                fromStopIndex = stopsMapIndexes.get(fromStopId);
                toStopIndex = stopsMapIndexes.get(toStopId);
                //Using the DirectedEdge class to add edges to the EdgeWeightedDigraph class object
               eWD.addEdge(new DirectedEdge(fromStopIndex,toStopIndex, 1.0));
                edgesAndWeights[fromStopIndex].add(new DirectedEdge(fromStopIndex, toStopIndex, transferWeight));

            }

            lastTripMapId = currentTripMapId;
            fromStopId = toStopId;
        }

        bufreader.close();


        //Getting user input and outputting the data required by the project
        System.out.print("Part 1 of bus stop management system: \n");
        System.out.print("Please enter two bus stops to get the shortest path between them\n");
        Scanner firstStop = new Scanner(System.in);
        System.out.print("First bus stop: ");
        Integer firstStopEntered = firstStop.nextInt();
        System.out.print("First bus stop: " + firstStopEntered + "\n");
        Scanner secondStop = new Scanner(System.in);
        System.out.print("Second bus stop: ");
        Integer secondStopEntered = secondStop.nextInt();
        System.out.print("Second bus stop: " + secondStopEntered + "\n");

        //Calling DijkstraSP from the algs4 jar file from the Algorithms Princeton website
        DijkstraSP dijkstra = new DijkstraSP(eWD, firstStopEntered);

        System.out.print("Shortest path from " + firstStopEntered + " to " + secondStopEntered + " is : " +
                            dijkstra.distTo(secondStopEntered) + "\n");



        //wait for 10 seconds to allow graph of costs and edges to be presented after shortest path is calculated
        TimeUnit.SECONDS.sleep(10);
        System.out.print("All stops en route as well as the associated cost: \n");

        //Print out all edges and costs en route
        for (ArrayList str : edgesAndWeights)
        {
            System.out.println(str);
        }

        System.out.print("Part 2 of bus stop management system: \n");
        System.out.print("Please enter bus stop name fully or first few characters\n");
        Scanner busStopName = new Scanner(System.in);
        System.out.print("Bus stop name: ");

        String busStopNames = busStopName.nextLine();

        //Converting string inputted by user to Iterable<String> type for use by TST class object
        Iterable<String> listBusNames = busStopTST.keysWithPrefix(busStopNames);
        System.out.print("All bus stops with names related to input are below: \n");

        System.out.print(listBusNames + "\n");

        System.out.print("Part 3 of bus stop management system: \n");
        System.out.print("Please enter an arrival time\n");
        Scanner inputArrivalTime = new Scanner(System.in);
        System.out.print("Arrival time (hh:mm:ss): ");

        String arrivalTimeUser = inputArrivalTime.nextLine();
        System.out.print(arrivalTimesMap.get(arrivalTimes));

    }

}
