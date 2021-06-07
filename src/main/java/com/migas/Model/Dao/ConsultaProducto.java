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


    public boolean registraP(int idProducto, String nombreProducto, int cantidadProducto, Date fechaElaboracion,
                             Date fechaVencimiento, String loteProducto, double precioUnitario) {


        try {
            String sql = "insert into producto(id_Producto,nombre_Producto,cantidad_Produccion,fecha_Elaboración,fecha_Vencimiento,lote_Producto,precio_Unitario) values(?,?,?,?,?,?,?)";
            Pst = getConexion().prepareStatement(sql);

            Pst.setInt(1, idProducto);
            Pst.setString(2, nombreProducto);
            Pst.setInt(3, cantidadProducto);
            Pst.setDate(4, (java.sql.Date) fechaElaboracion);
            Pst.setDate(5, (java.sql.Date) fechaVencimiento);
            Pst.setString(6,loteProducto);
            Pst.setDouble(7,precioUnitario);

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

}
