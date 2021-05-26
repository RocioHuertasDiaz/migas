package com.migas.Model.Dao;

import com.migas.Model.Beans.usuario;
import com.migas.Util.Conexion.Conexion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class Consultas extends Conexion {

    PreparedStatement pst = null;
    ResultSet rs = null;
    usuario u = new usuario();


    public boolean autenticacion(String idenUsuario, String claveUsuario) {

        try {
            String consulta = "select * from usuario where idenUsuario = ? and claveUsuario = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, idenUsuario);
            pst.setString(2, claveUsuario);
            rs = pst.executeQuery();

            if (rs.absolute(1)) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error1 " + e);
        } finally {
            try {
                if (getConexion() != null)
                    getConexion().close();
                if (pst != null)
                    pst.close();
                if (rs != null)
                    rs.close();
            } catch (Exception e) {
                System.err.println("Error2 " + e);
            }
        }
        return false;
    }
    public boolean registrar(String idenUsuario, String nombreUsuario, String apellidoUsuario, String tipoUsuario,
                             String claveUsuario) {


        try {
            String consulta = "insert into usuario(idenUsuario,nombreUsuario,apellidoUsuario,tipoUsuario,claveUsuario) values(?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, idenUsuario);
            pst.setString(2, nombreUsuario);
            pst.setString(3, apellidoUsuario);
            pst.setString(4, tipoUsuario);
            pst.setString(5, claveUsuario);

            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception ex) {
            System.err.println("ErrorR1" + ex);
        } finally {
            try {
                if (getConexion() != null)
                    getConexion().close();
                if (pst != null)
                    pst.close();
            } catch (Exception ex) {
                System.err.println("ErrorR2" + ex);
            }
        }
        return false;
    }

    public List<usuario> listar() throws SQLException{
        List<usuario> listaUsuarios = new ArrayList<>();

        String consulta = "SELECT * FROM usuario";
        pst = getConexion().prepareStatement(consulta);
        ResultSet res = pst.executeQuery();
        try {
                while (res.next()){
                    usuario Usu = new usuario();
                    Usu.setIdUsuario(res.getInt(1));
                    Usu.setUsuario(res.getString(2));
                    Usu.setNombre(res.getString(3));
                    Usu.setApellido(res.getString(4));
                    Usu.setTipoUsario(res.getString(5));
                    Usu.setClave(res.getString(6));
                    listaUsuarios.add(Usu);

                }
        }catch (SQLException e){
            e.printStackTrace();
        }
    return listaUsuarios;
    }



    // obtener por id
    public usuario obtenerId(int idUsuario) throws SQLException {
        usuario USU = new usuario();

        String consulta = "SELECT * FROM usuario where=?";
        pst = getConexion().prepareStatement(consulta);
        pst.setInt(1,idUsuario);
        ResultSet res = pst.executeQuery();
        try {
            if (res.next()){
                USU.setIdUsuario(res.getInt(1));
                USU.setUsuario(res.getString(2));
                USU.setNombre(res.getString(3));
                USU.setApellido(res.getString(4));
                USU.setTipoUsario(res.getString(5));
                USU.setClave(res.getString(6));

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return USU;
    }



    // actualizar
    public boolean actualizar(String idenUsuario, String nombreUsuario, String apellidoUsuario, String tipoUsuario,
                             String claveUsuario) {


        try {
            String consulta = "update usuario set idenUsuario=?,nombreUsuario=?, apellidoUsuario=?,tipoUsuario=?,claveUsuario=? where idUsuario";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, idenUsuario);
            pst.setString(2, nombreUsuario);
            pst.setString(3, apellidoUsuario);
            pst.setString(4, tipoUsuario);
            pst.setString(5, claveUsuario);

            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception ex) {
            System.err.println("ErrorR1" + ex);
        } finally {
            try {
                if (getConexion() != null)
                    getConexion().close();
                if (pst != null)
                    pst.close();
            } catch (Exception ex) {
                System.err.println("ErrorR2" + ex);
            }
        }
        return false;
    }


    /*public static void main(String[] args){
        Consultas con = new Consultas();
        try {
            System.out.println(con.obtener("41"));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }*/

}