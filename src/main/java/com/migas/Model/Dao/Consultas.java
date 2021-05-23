package com.migas.Model.Dao;

import com.migas.Model.Beans.usuario;
import com.migas.Util.Conexion.Conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Consultas extends Conexion {

    PreparedStatement pst = null;
    ResultSet rs = null;

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
    // obtener por id

    public boolean obtenerXid(int idUsuario) throws SQLException {

            usuario usuario = new usuario();
            String consulta = "SELECT * FROM usuario WHERE idUsuario= ? ";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, idUsuario);

            ResultSet res = pst.executeQuery();
            if (res.next()) {
                usuario = new usuario(res.getInt("idUsuario"), res.getString("idenUsuario"),res.getString("nombreUsuario"),
                        res.getString("apellidoUsuario"), res.getString("tipoUsuario"),res.getString("claveUsuario"));
            }
            res.close();
            return false;
        }


        // actualizar
    /*public boolean actualizar(String idenUsuario, String nombreUsuario, String apellidoUsuario, String tipoUsuario,String claveUsuario) {
        boolean rowActualizar = false;
        String consulta = "UPDATE usuario SET idenUsuario=?,nombreUsuario=?,apellidoUsuario=?,tipoUsuario=?, claveUsuario=? WHERE idUsuario=?";
        pst = getConexion().prepareStatement(consulta);

        pst.setString(1, usuario.getUsuario());
        pst.setString(2, usuario.getNombre());
        pst.setString(3, usuario.getApellido());
        pst.setString(4, usuario.getTipoUsario());
        pst.setString(5, usuario.getClave());
        pst.setInt(6, usuario.getIdUsuario());

        rowActualizar = pst.executeUpdate() > 0;
        pst.close();
        rs.close();
        return rowActualizar;
    }*/

    /*public static void main(String[] args){
        Consultas con = new Consultas();
        try {
            System.out.println(con.obtener("41"));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }*/

}