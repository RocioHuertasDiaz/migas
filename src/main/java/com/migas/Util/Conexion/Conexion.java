
package com.migas.Util.Conexion;

import java.sql.*;
import java.sql.SQLException;

public class Conexion {
    private String username ="root";
    private String password= "Nr123";
    private String host = "localhost";
    private String port = "3306";
    private String database = "migasbd";
    private String ClassName ="com.mysql.cj.jdbc.Driver";
    private String URL = "jdbc:mysql://localhost:3306/migasbd?useTimezone=true&serverTimezone=UTC";

    private static Connection con =null;

    public Conexion(){
        try{
            Class.forName(ClassName);
            con = DriverManager.getConnection(URL,username,password);

        }catch (ClassNotFoundException e){
            System.err.println("Error " + e);}
        catch (SQLException e){
            System.err.println("Error"+ e);}
    }
    public static Connection getConexion()   {
        return con;

    }

}


