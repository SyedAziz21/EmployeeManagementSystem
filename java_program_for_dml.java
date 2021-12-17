import java.sql.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;
class MysqlCon{  
public static void main(String args[]){  
	
	try{  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/emp_mgmt_system","itadmin","itadmin@123"); 
		Statement stmt=con.createStatement();  
		ResultSet rs=stmt.executeQuery("show tables;");
		System.out.println("List of tables in the database");
		while (rs.next()) {
			System.out.println(rs.getString(1));
		}
		boolean a=true;
		while(a) {
			BufferedReader reader = new BufferedReader(
		            new InputStreamReader(System.in));
			System.out.println("\n Enter the table name you want to query on ");
			String db_name= reader.readLine();
			String sql = String.format("describe %s",db_name);
			ResultSet structure=stmt.executeQuery(sql);
			while (structure.next()) {
				System.out.println(structure.getString(1)+ "  "+structure.getString(2));
			}
			//System.out.println("Press 1 for Insert \n 2 for Update \n 3 for Delete \n 4 to read");
			//int option = reader.read();
			Scanner myInput = new Scanner( System.in );
			System.out.print( " 1 for Data Manipulation queries execution \n 2 for Data Definition queries execution" );
			int option = myInput.nextInt();
			System.out.println("\n Enter the query you want to execute as per the table structure");
			String query_to_execute=reader.readLine();
			boolean post_execution;
			
			if (option == 1){
				try {
				stmt.execute(query_to_execute);
				post_execution = true;
			} catch (Exception ex) {
				ex.printStackTrace();
				post_execution = false;
			}
			
//			boolean post_execution = stmt.execute(query_to_execute);
//			System.out.println(post_execution);
			//ResultSetMetaData rsm = post_execution.getMetaData();
			//int column = rsm.getColumnCount();
			if ( post_execution) {
				System.out.println("\n Query executed successfully");
				System.out.println("\n Required Data present in the table " + db_name + "\n");
				String readQuery = String.format("select * from %s;",db_name);
				ResultSet rs1 = stmt.executeQuery(readQuery);
				ResultSetMetaData rsmd = rs1.getMetaData();
				int columnCount = rsmd.getColumnCount();
				while (rs1.next()) {
					System.out.println("\n");
					int i = 1;
					while (i<=columnCount) {
						System.out.print(rs1.getString(i)+" |");
						i++;
					}
				//}
				}
				System.out.println("\n");
			}
			else {
				System.out.println("Unable to execute the query, kindly check the query and try again");
			}
			}
			else if (option == 2) {
				System.out.println("\n Query executed successfully");
				System.out.println("\n Required Data present in the table " + db_name + "\n");
				//String readQuery = String.format("select * from %s;",db_name);
				ResultSet rs1 = stmt.executeQuery(query_to_execute);
				ResultSetMetaData rsmd = rs1.getMetaData();
				int columnCount = rsmd.getColumnCount();
				while (rs1.next()) {
					System.out.println("\n");
					int i = 1;
					while (i<=columnCount) {
						System.out.print(rs1.getString(i)+" |");
						i++;
					}
					
				}
				System.out.println("\n");
			}
			else {
				System.out.println("Unable to execute the query, kindly check the query and try again");
			}
			
			
			
			System.out.println("\n*************** Enter false to terminate the program or anything else to continue ***************");
			String b = reader.readLine();
			if ( b.equalsIgnoreCase("false")) {
				a = false;
				System.out.println("\n Thank you ! Program has been completed");
				System.exit(0);
			}
			else a = true;
		}
//while(rs.next())  
//System.out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"  "+rs.getString(4)); 
//
//stmt.executeQuery("insert into emp_address values ('United States of America','California','San Francisco','94016')"); 

		con.close();  
	}
	catch(Exception e){ System.out.println(e);}
}
}
 
