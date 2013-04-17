import java.sql.*;
import java.util.ArrayList;

public class Pop
{
   private static Connection connect = null;
   private static Statement statement = null;
   private static ResultSet resultSet = null;
   
   public static void main(String[] arg) throws ClassNotFoundException, SQLException
   {
      // This will load the MySQL driver, each DB has its own driver
      Class.forName("com.mysql.jdbc.Driver");
      // Setup the connection with the DB
      connect = DriverManager
            .getConnection("jdbc:mysql://localhost/star?"
                  + "user=root&password=huiling77");
      statement = connect.createStatement();
      resultSet = statement.executeQuery("select id from dim_airplane");
      ArrayList<Integer> airplane = new ArrayList<Integer>();
      while(resultSet.next())
      {
         airplane.add(resultSet.getInt("id"));
      }
      resultSet = statement.executeQuery("select id from dim_time");
      ArrayList<Integer> time = new ArrayList<Integer>();
      while(resultSet.next())
      {
         time.add(resultSet.getInt("id"));
      }
      resultSet = statement.executeQuery("select id from dim_airport");
      ArrayList<Integer> airport = new ArrayList<Integer>();
      while(resultSet.next())
      {
         airport.add(resultSet.getInt("id"));
      }
      
      int count = 1;
      for(int i = 0; i < airplane.size(); i++)
      {
         for(int j = 0; j < time.size(); j++)
         {
            for(int k = 0; k < airport.size(); k++)
            {
               statement.executeUpdate("insert into air_ticket values(" +
               		count + ", " + (Math.random() * 100 + 600) + ", "
                     + (Math.random() * 1000000 + 100000) + ", " + airport.get(k) +
                     ", " + time.get(j) + ", " + airplane.get(i) +")");
               count++;
            }
         }
      }
   }
}