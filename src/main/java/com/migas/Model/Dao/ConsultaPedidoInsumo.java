package com.migas.Model.Dao;

import com.migas.Model.Beans.Insumo;
import com.migas.Model.Beans.pedidoInsumo;
import com.migas.Util.Conexion.Conexion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConsultaPedidoInsumo extends Conexion {
    private static PreparedStatement pst;
    PreparedStatement Pst = null;
    ResultSet rs = null;
    pedidoInsumo PIN = new pedidoInsumo();

    public List<pedidoInsumo> listar() throws SQLException {
        List<pedidoInsumo> listaPedido = new ArrayList<>();

        String sql = "SELECT * FROM pedidoInsumo";
        Pst = getConexion().prepareStatement(sql);
        ResultSet rs = Pst.executeQuery();
        try {
            while (rs.next()) {
                pedidoInsumo Pinsumo = new pedidoInsumo();

                Pinsumo.setIdPedidoInsumo(rs.getInt(1));
                Pinsumo.setFechapedido(rs.getDate(2));
                Pinsumo.setFechaEntrega(rs.getDate(3));
                Pinsumo.setCantidadInsumo(rs.getInt(4));
                Pinsumo.setInsumo(rs.getString(5));
                Pinsumo.setProveedor(rs.getString(6));

                listaPedido.add(Pinsumo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaPedido;
    }

    public boolean registrar(pedidoInsumo pedidoInsumo) throws SQLException{

        try {
            String sql = "insert into pedidoInsumo(fecha_Pedido, fecha_Entrega, Cantidad_Insumo, Id_Insumo, NIT_Proveedor) values(?,?,?,?,?)";
            Pst = getConexion().prepareStatement(sql);

            Pst.setDate(1, (java.sql.Date) pedidoInsumo.getFechapedido());
            Pst.setDate(2, (java.sql.Date) pedidoInsumo.getFechaEntrega());
            Pst.setInt(3, pedidoInsumo.getCantidadInsumo());
            Pst.setString(4, pedidoInsumo.getInsumo());
            Pst.setString(5, pedidoInsumo.getProveedor());


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

    public static pedidoInsumo obtenerId(int id) throws SQLException {
        pedidoInsumo pedido = null;

        String sql = "SELECT * FROM pedidoInsumo WHERE id_PedidoInsumo=?";
        pst = getConexion().prepareStatement(sql);
        pst.setInt(1, id);
        ResultSet res = pst.executeQuery();

        res = pst.executeQuery();
        if (res.next()) {

            pedido = new pedidoInsumo(
                    res.getInt("id_PedidoInsumo"),
                    res.getDate("fecha_Pedido"),
                    res.getDate("fecha_Entrega"),
                    res.getInt("cantidad_Insumo"),
                    res.getString("Id_Insumo"),
                    res.getString("NIT_Proveedor"));
        }
        res.close();
        pst.close();

        return pedido;
    }

    public boolean editar(pedidoInsumo pedidoinsumo) throws SQLException {
        String sql = null;
        boolean estadoOperacion = false;

        sql = "update pedidoInsumo set fecha_Pedido=?, fecha_Entrega=?, cantidad_Insumo=?, Id_Insumo=?, NIT_Proveedor=? where id_PedidoInsumo=?";
        Pst = getConexion().prepareStatement(sql);

        Pst.setDate(1, (java.sql.Date) pedidoinsumo.getFechapedido());
        Pst.setDate(2, (java.sql.Date) pedidoinsumo.getFechaEntrega());
        Pst.setInt(3, pedidoinsumo.getCantidadInsumo());
        Pst.setString(4, pedidoinsumo.getInsumo());
        Pst.setString(5, pedidoinsumo.getProveedor());

        estadoOperacion = Pst.executeUpdate() > 0;

        getConexion().close();
        Pst.close();

        return estadoOperacion;

    }
}

