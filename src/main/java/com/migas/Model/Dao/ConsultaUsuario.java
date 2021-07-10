package com.migas.Model.Dao;

import com.migas.Model.Beans.usuario;
import com.migas.Util.Conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ConsultaUsuario extends Conexion {

    PreparedStatement pst = null;
    ResultSet rs = null;
    usuario u = new usuario();
    private Object usuario;

  /*  public boolean idntificar(usuario usuario)throws Exception{
    }*/

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

    public boolean registrar(String idenUsuario, String nombreUsuario, String apellidoUsuario,
                             String claveUsuario, String tipoUsuario,String estadoUsuario) {


        try {
            String consulta = "insert into usuario(iden_Usuario,nombre_Usuario,apellido_Usuario,clave_Usuario,tipo_Usuario,estado_Usuario) values(?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, idenUsuario);
            pst.setString(2, nombreUsuario);
            pst.setString(3, apellidoUsuario);
            pst.setString(4, claveUsuario);
            pst.setString(5, tipoUsuario);
            pst.setString(6, estadoUsuario);



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

    public List<usuario> listar() throws SQLException {
        List<usuario> listaUsuarios = new ArrayList<>();

        String consulta = "SELECT * FROM usuario";
        pst = getConexion().prepareStatement(consulta);
        ResultSet res = pst.executeQuery();
        try {
            while (res.next()) {
                usuario Usu = new usuario();
                Usu.setIdUsuario(res.getInt(1));
                Usu.setUsuario(res.getString(2));
                Usu.setNombre(res.getString(3));
                Usu.setApellido(res.getString(4));
                Usu.setClave(res.getString(5));
                Usu.setTipoUsuario(res.getString(6));
                Usu.setEstadoUsuario(res.getString(7));
                listaUsuarios.add(Usu);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaUsuarios;
    }


    // obtener por id
    public usuario obtenerUsuario(int id) throws SQLException {

        ResultSet rs=null;
        usuario Usuario = new usuario();

        String sql=null;

        try {

            sql="select * from usuario where id_usuario=?";
            pst=getConexion().prepareStatement(sql);
            pst.setInt(1, id);

            rs=pst.executeQuery();
            if (rs.next()) {

                Usuario.setIdUsuario(rs.getInt(1));
                Usuario.setUsuario(rs.getString(2));
                Usuario.setNombre(rs.getString(3));
                Usuario.setApellido(rs.getString(4));
                Usuario.setClave(rs.getString(5));
                Usuario.setTipoUsuario(rs.getString(6));
                Usuario.setEstadoUsuario(rs.getString(7));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return Usuario;

    }








    // actualizar
    public boolean actualizar(String iden_Usuario, String nombre_Usuario, String apellido_Usuario,
                              String clave_Usuario, String tipo_Usuario, String estado_Usuario) {

        String sql=null;
        try {
            String consulta = "update usuario set iden_Usuario=?, nombre_Usuario=?,apellido_Usuario=?,clave_Usuario=?,tipo_Usuario=?,estado_Usuario=? where id_Usuario";


            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, iden_Usuario);
            pst.setString(2, nombre_Usuario);
            pst.setString(3, apellido_Usuario);
            pst.setString(4, clave_Usuario);
            pst.setString(5, tipo_Usuario);
            pst.setString(6, estado_Usuario);

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
        String consulta = "delete from usuario where id_Usuario =" + id;
        pst = getConexion().prepareStatement(consulta);

        if (pst.executeUpdate() == 1) {
            return true;
        }
        return false;

    }

    public usuario verificar(String idenUsuario, String contrasena) throws SQLException {

        usuario Usuario = null;
        rs = null;
        try {
            String consulta = "select * from usuario where iden_Usuario = ? and clave_Usuario = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, idenUsuario);
            pst.setString(2, contrasena);
            rs = pst.executeQuery();

            if   (rs.next()) {
                //instanciamos la clase usuario si la consulta devuelve datos sino el usuario queda null
                Usuario = new usuario(
                        rs.getInt("id_Usuario"),
                        rs.getString("iden_Usuario"),
                        rs.getString("nombre_Usuario"),
                        rs.getString("apellido_Usuario"),
                        rs.getString("clave_Usuario"),
                        rs.getString("tipo_Usuario"),
                        rs.getString("estado_Usuario"));

            }
            pst.close();
            getConexion().close();
            rs.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        //devuelve el usuario
        return Usuario;

    }

}


    /*public static void main(String[] args){
        Consultas con = new Consultas();
        try {
            System.out.println(con.obtener("41"));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }*/