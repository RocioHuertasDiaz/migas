package com.migas.Util.Conexion;

import java.sql.DriverManager;
import java.sql.SQLException;
import com.mysql.jdbc.Connection;

public class Conexion {
    private String username ="root";
    private String password= "";
    private String host = "localhost";
    private String port = "3306";
    private String database = "migas";
    private String ClassName ="com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://"+host+":"+port+"/"+database;

    private Connection con;

    public Conexion(){
        try{
            Class.forName(ClassName);
            con = (Connection) DriverManager.getConnection(URL,username,password);
        }catch (ClassNotFoundException e){
            System.err.println("Error " + e);}
        catch (SQLException e){
            System.err.println("Error"+ e);}
    }
    public Connection getConexion()   {
        return con;

    }

}
