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
            String consulta = "select * from usuario where iden_Usuario = ? and clave_Usuario = ?";
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
            String consulta = "insert into usuario(iden_Usuario,nombre_Usuario,apellido_Usuario,tipo_Usuario,clave_Usuario) values(?,?,?,?,?)";
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
    public usuario obtenerId(int id) throws SQLException {
        usuario Usuario = null;

        String consulta = "SELECT * FROM usuario where idUsuario=?"+id;
        try {
            pst = getConexion().prepareStatement(consulta);
            ResultSet rs = pst.executeQuery();
            pst.setInt(1, id);

            while (rs.next()) {
                u.setIdUsuario(rs.getInt("idUsuario"));
                u.setUsuario(rs.getString("usuario"));
                u.setNombre(rs.getString("nombre"));
                u.setApellido(rs.getString("apellido"));
                u.setTipoUsario(rs.getString("tipoUsuario"));
                u.setClave(rs.getString("clave"));
            }
        }
        catch(Exception e){
        }
        return u;
    }



    // actualizar
    public boolean actualizar(String idenUsuario, String nombreUsuario, String apellidoUsuario, String tipoUsuario,
                              String claveUsuario) {

        try {
            String consulta = "update usuario set iden_Usuario=?,nombre_Usuario=?, apellido_Usuario=?,tipo_Usuario=?,clave_Usuario=? where id_Usuario";
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

    public boolean eliminar(int id) throws SQLException {
        String consulta= "delete from usuario where idUsuario = "+id;
        pst = getConexion().prepareStatement(consulta);

        if (pst.executeUpdate() == 1) {
            return true;
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