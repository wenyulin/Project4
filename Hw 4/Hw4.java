import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;


public class Hw4
{
   private static Connection connect = null;
   private static Statement statement = null;
   private static ResultSet resultSet = null;
   private static Scanner scan = null;
   private static String value = null;
   private static String input = null;
   private static String dim1 = null;
   private static String dim2 = null;
   private static String currentDim1 = null;
   private static String currentDim2 = null;
   private static ArrayList<String> columns = new ArrayList<String>();
   private static ArrayList<String> rows = new ArrayList<String>();
   private static String output = null;
   
   public static void main(String[] agr) throws ClassNotFoundException, SQLException
   {
      Class.forName("com.mysql.jdbc.Driver");
      connect = DriverManager
            .getConnection("jdbc:mysql://localhost/star?"
                  + "user=root&password=huiling77");
      statement = connect.createStatement();
      scan = new Scanner(System.in);
      
      System.out.println("Please choose what information you want to check:\n" +
      		"1. Average ticket prices.\n" +
      		"2. Total profit.");
      input = scan.nextLine();
      if(input.equalsIgnoreCase("1"))
      {
         value = "avg_price";
      }
      else if(input.equalsIgnoreCase("2"))
      {
         value = "profit";
      }
      System.out.println("Please choose two dimension you want to display:\n" +
      		"1. Time and airport.\n" +
      		"2. Time and airplane.\n" +
      		"3. Airport and airplane.");
      input = scan.nextLine();
      if(input.equalsIgnoreCase("1"))
      {
         dim1 = "dim_time";
         dim2 = "dim_airport";
         currentDim1 = "year";
         currentDim2 = "airport_state";
      }
      else if(input.equalsIgnoreCase("2"))
      {
         dim1 = "dim_time";
         dim2 = "dim_airplane";
         currentDim1 = "year";
         currentDim2 = "manufacturer";
      }
      else if(input.equalsIgnoreCase("3"))
      {
         dim1 = "dim_airport";
         dim2 = "dim_airplane";
         currentDim1 = "airport_state";
         currentDim2 = "manufacturere";
      }
      
      resultSet = statement.executeQuery("select distinct " + currentDim1 + " from "
            + dim1);
      while(resultSet.next())
      {
         columns.add(resultSet.getObject(currentDim1).toString());
      }
      resultSet = statement.executeQuery("select distinct " + currentDim2 + " from "
            + dim2);
      while(resultSet.next())
      {
         rows.add(resultSet.getObject(currentDim2).toString());
      }
      
      output = "\t";
      for(String str : columns)
      {
         output += str + "\t";
      }
      System.out.println(output);
      
      for(String str : rows)
      {
         output = str + "\t";
         for(String strg : columns)
         {
            String query = "select sum(" + value + ") from air_ticket " +
                  "where " + dim1 + "_id in (select id from " + dim1 + " where " + currentDim1
                  + " = ";
            if(isString(currentDim1))
            {
               query += "'" + strg + "'";
            }
            else
            {
               query += strg;
            }
            query += ") and " + dim2 + "_id in (select id from " + dim2 + " where "
                  + currentDim2 + " = ";
            if(isString(currentDim2))
            {
               query += "'" + str + "'";
            }
            else
            {
               query += str;
            }
            query += ")";
            resultSet = statement.executeQuery(query);
            resultSet.next();
            output += (resultSet.getObject(1).toString()) + "\t";
         }
         System.out.println(output);
      }
   }
   
   private static boolean isString(String dim)
   {
      if(dim.equalsIgnoreCase("manufacturer"))
         return true;
      if(dim.equalsIgnoreCase("airport_state"))
         return true;
      if(dim.equalsIgnoreCase("airport_city"))
         return true;
      if(dim.equalsIgnoreCase("airport_name"))
         return true;
      return false;
   }
}