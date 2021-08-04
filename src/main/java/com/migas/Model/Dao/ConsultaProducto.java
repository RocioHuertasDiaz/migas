package com.migas.Model.Dao;

import com.migas.Model.Beans.Producto;
import com.migas.Model.Beans.usuario;
import com.migas.Util.Conexion.Conexion;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConsultaProducto extends Conexion {
    private static PreparedStatement Pst;
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

    public static Producto obtenerPorId(int id) throws SQLException {
        Producto producto = null;

        String sql = "SELECT * FROM producto WHERE id_Producto= ? ";
        Pst = getConexion().prepareStatement(sql);
        Pst.setInt(1, id);
        ResultSet res = Pst.executeQuery();

        res = Pst.executeQuery();
        if (res.next()) {
            producto = new Producto(res.getInt("id_Producto"),
                    res.getString("nombre_Producto"),
                    res.getInt("cantidad_Produccion"),
                    res.getDate("fecha_Elaboración"),
                    res.getDate("fecha_Vencimiento"),
                    res.getString("lote_Producto"),
                    res.getDouble("precio_Unitario"));
        }
        res.close();
        Pst.close();

        return producto;
    }

       public boolean editar(Producto producto) throws SQLException {
        String sql = null;
        boolean estadoOperacion = false;

        sql = "update producto set nombre_Producto=?,cantidad_Produccion=?, fecha_Elaboración=?,fecha_Vencimiento=?,lote_Producto=?,precio_Unitario=? where id_Producto=?;";
        Pst = getConexion().prepareStatement(sql);
        Pst.setString(1, producto.getNombreProducto());
        Pst.setInt(2, producto.getCantidadProducto());
        Pst.setDate(3, (Date) producto.getFechaElaboracion());
        Pst.setDate(4, (Date)producto.getFechaVencimiento());
        Pst.setString(5, producto.getLoteProducto());
        Pst.setDouble(6, producto.getPrecioUnitario());
        Pst.setInt(7, producto.getIdProducto());

        estadoOperacion = Pst.executeUpdate()>0;

        getConexion().close();
        Pst.close();

        return estadoOperacion;

    }



}
