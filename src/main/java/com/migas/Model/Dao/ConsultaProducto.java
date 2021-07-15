package com.migas.Model.Dao;

import com.migas.Model.Beans.Producto;
import com.migas.Util.Conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ConsultaProducto extends Conexion {
    PreparedStatement Pst = null;
    ResultSet res = null;
    Producto P = new Producto();

    public List<Producto> listar() throws SQLException {
        List<Producto> listaProductos = new ArrayList<>();

        String sql = "SELECT * FROM producto";
        Pst = getConexion().prepareStatement(sql);
        ResultSet res = Pst.executeQuery();
        try {
            while (res.next()){
                Producto producto = new Producto();
                producto.setIdProducto(res.getInt(1));
                producto.setNombreProducto(res.getString(2));
                producto.setCantidadProducto(res.getInt(3));
                producto.setFechaElaboracion(res.getDate(4));
                producto.setFechaVencimiento(res.getDate(5));
                producto.setLoteProducto(res.getString(6));
                producto.setPrecioUnitario(res.getDouble(7));

                listaProductos.add(producto);

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listaProductos;
    }


    public boolean registraP(Producto producto) throws SQLException{


        try {
            String sql = "insert into producto(id_Producto,nombre_Producto,cantidad_Produccion,fecha_Elaboración,fecha_Vencimiento,lote_Producto,precio_Unitario) values(?,?,?,?,?,?,?)";
            Pst = getConexion().prepareStatement(sql);

            Pst.setInt(1, producto.getIdProducto());
            Pst.setString(2, producto.getNombreProducto());
            Pst.setInt(3, producto.getCantidadProducto());
            Pst.setDate(4, (java.sql.Date) producto.getFechaElaboracion());
            Pst.setDate(5, (java.sql.Date) producto.getFechaVencimiento());
            Pst.setString(6,producto.getLoteProducto());
            Pst.setDouble(7,producto.getPrecioUnitario());

            if (Pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception ex) {
            System.err.println("ErrorR1" + ex);
        } finally {
            try {
                if (getConexion() != null)
                    getConexion().close();
                if (Pst != null)
                    Pst.close();
            } catch (Exception ex) {
                System.err.println("ErrorR2" + ex);
            }
        }
        return false;
    }

   /* public Producto obtenerProducto(int idProducto) throws SQLException {

        ResultSet rs =null;
        Producto producto = new Producto();

        String sql=null;

        try {

            sql="select * from inscripcion where id_inscripcion=?";
            statement=connection.prepareStatement(sql);
            statement.setInt(1, idInscripcion);


            resultSet=statement.executeQuery();
            if (resultSet.next()) {

                inscripcion.setIdInscripcion(resultSet.getInt(1));
                inscripcion.setFechaInscripcion(resultSet.getString(2));
                inscripcion.setFechaEntrada(resultSet.getDate(3));
                inscripcion.setHoraEntrada(resultSet.getString(4));
                inscripcion.setFechaSalida(resultSet.getDate(5));
                inscripcion.setHoraSalida(resultSet.getString(6));
                inscripcion.setEstadoInscripcion(resultSet.getString(7));
                inscripcion.setIdResidente(resultSet.getInt(8));
                inscripcion.setIdActividad(resultSet.getInt(9));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return inscripcion;

    }

    public boolean editar(Inscripcion inscripcion) throws SQLException {

        String sql=null;
        estadoOperacion=false;
        connection=obtenerConexion();

        try {
            connection.setAutoCommit(false);
            sql="update inscripcion set estado_inscripcion=? where id_inscripcion=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1, inscripcion.getEstadoInscripcion());
            statement.setInt(2, inscripcion.getIdInscripcion());

            estadoOperacion=statement.executeUpdate()>0;
            connection.commit();
            statement.close();
            connection.close();


        } catch (SQLException e) {
            connection.rollback();
            e.printStackTrace();
        }


        return estadoOperacion;

    }



*/
}
