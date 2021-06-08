package com.migas.Model.Dao;

import com.migas.Model.Beans.Venta;
import com.migas.Util.Conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ConsultaVenta extends Conexion {
    PreparedStatement pst = null;
    ResultSet rs = null;
    Venta P = new Venta();

    public List<Venta> listar() throws SQLException {
        List<Venta> listaVentas = new ArrayList<>();

        String sql = "SELECT * FROM venta";
        pst = getConexion().prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        try {
            while (rs.next()){
                Venta venta = new Venta();
                venta.setIdFacturaV(rs.getInt(1));
                venta.setFechaFactura(rs.getDate(2));
                venta.setIdProducto(rs.getInt(3));
                venta.setCantidad(rs.getInt(4));
                venta.setPrecioUnitario(rs.getDouble(5));
                venta.setLoteProducto(rs.getString(6));
                venta.setFechaVencimiento(rs.getDate(7));
                venta.setDescuento(rs.getDouble(8));
                venta.setTotalVenta(rs.getDouble(9));
                venta.setNitCliente(rs.getInt(10));


                listaVentas.add(venta);

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listaVentas;
    }


    public boolean registraV(int idFacturaV, Date fechaFactura, int idProducto, int cantidad, double precioUnitario, String loteProducto, Date fechaVencimiento, double descuento, double totalVenta, int nitCliente) {


        try {
            String sql = "insert into venta(id_Factura_Venta, fecha_Factura, id_Producto, Cantidad, Precio_Unitario, Lote_Producto, Fecha_Vencimiento, descuento, Total_Venta, NIT_Cliente) values(?,?,?,?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(sql);

            pst.setInt(1,idFacturaV);
            pst.setDate(2, (java.sql.Date) fechaFactura);
            pst.setInt(3,idProducto);
            pst.setInt(4,cantidad);
            pst.setDouble(5,precioUnitario);
            pst.setString(6,loteProducto);
            pst.setDate(7, (java.sql.Date) fechaVencimiento);
            pst.setDouble(8,descuento);
            pst.setDouble(9,totalVenta);
            pst.setInt(10,nitCliente);

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

}
