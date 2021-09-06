package com.migas.Model.Dao;

import com.migas.Model.Beans.pedidoProducto;
import com.migas.Util.Conexion.Conexion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConsultaPedidoProducto extends Conexion {
    private static PreparedStatement pst;
    PreparedStatement Pst = null;
    ResultSet rs = null;
    pedidoProducto PIN = new pedidoProducto();

    public List<pedidoProducto> listar() throws SQLException {
        List<pedidoProducto> listaPedido = new ArrayList<>();

        String sql = "SELECT * FROM pedidoProducto";
        Pst = getConexion().prepareStatement(sql);
        ResultSet rs = Pst.executeQuery();
        try {
            while (rs.next()) {
                pedidoProducto PProducto = new pedidoProducto();

                PProducto.setIdPedidoProducto(rs.getInt(1));
                PProducto.setFechaPedido(rs.getDate(2));
                PProducto.setFechaEntrega(rs.getDate(3));
                PProducto.setIdProducto(rs.getInt(4));
                PProducto.setCantidadProducto(rs.getInt(5));
                PProducto.setNITCliente(rs.getInt(6));

                listaPedido.add(PProducto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaPedido;
    }

    public boolean registrar(pedidoProducto pedidoProducto) throws SQLException{

        try {
            String sql = "insert into pedidoProducto(fecha_Pedido, fecha_Entrega, Id_Producto, Cantidad_Producto, NIT_Cliente) values(?,?,?,?,?)";
            Pst = getConexion().prepareStatement(sql);

            Pst.setDate(1, (java.sql.Date) pedidoProducto.getFechaPedido());
            Pst.setDate(2, (java.sql.Date) pedidoProducto.getFechaEntrega());
            Pst.setInt(3, pedidoProducto.getIdProducto());
            Pst.setInt(4, pedidoProducto.getCantidadProducto());
            Pst.setInt(5, pedidoProducto.getNITCliente());


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

    public static pedidoProducto obtenerId(int id) throws SQLException {
        pedidoProducto pedido = null;

        String sql = "SELECT * FROM pedidoProducto WHERE id_PedidoProducto=?";
        pst = getConexion().prepareStatement(sql);
        pst.setInt(1, id);
        ResultSet res = pst.executeQuery();

        res = pst.executeQuery();
        if (res.next()) {

            pedido = new pedidoProducto(
                    res.getInt("id_PedidoInsumo"),
                    res.getDate("fecha_Pedido"),
                    res.getDate("fecha_Entrega"),
                    res.getInt("cantidad_Insumo"),
                    res.getInt("Id_Insumo"),
                    res.getInt("NIT_Proveedor"));
        }
        res.close();
        pst.close();

        return pedido;
    }

    public boolean editar(pedidoProducto pedidoProducto) throws SQLException {
        String sql = null;
        boolean estadoOperacion = false;

        sql = "update pedidoProducto set fecha_Pedido=?, fecha_Entrega=?, Id_Producto=?, cantidad_Insumo=?,  NIT_Cliente=? where id_PedidoProducto=?";
        Pst = getConexion().prepareStatement(sql);

        Pst.setDate(1, (java.sql.Date) pedidoProducto.getFechaPedido());
        Pst.setDate(2, (java.sql.Date) pedidoProducto.getFechaEntrega());
        Pst.setInt(3, pedidoProducto.getIdProducto());
        Pst.setInt(4, pedidoProducto.getCantidadProducto());
        Pst.setInt(5, pedidoProducto.getNITCliente());

        estadoOperacion = Pst.executeUpdate() > 0;

        getConexion().close();
        Pst.close();

        return estadoOperacion;

    }
}

