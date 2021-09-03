package com.migas.Model.Dao;

import com.migas.Model.Beans.Arqueo;
import com.migas.Model.Beans.Venta;
import com.migas.Util.Conexion.Conexion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ConsultaVentaCajero extends Conexion {
    PreparedStatement pst = null;
    ResultSet rs = null;
    Arqueo Ar = new Arqueo();

    public List<Arqueo> listar() throws SQLException {
        List<Arqueo> listaVentasArqueo = new ArrayList<>();

        String sql = "SELECT * FROM arqueo";
        pst = getConexion().prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        try {
            while (rs.next()){
                Arqueo arqueo = new Arqueo();

                arqueo.setNumeroArqueo(rs.getInt(1));
                arqueo.setFechaApertura(rs.getDate(2));
                arqueo.setFechaCierre(rs.getDate(3));
                arqueo.setMontoInicial(rs.getDouble(4));
                arqueo.setVentasCajero(rs.getDouble(6));
                arqueo.setMontoFinal(rs.getDouble(5));

                listaVentasArqueo.add(arqueo);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listaVentasArqueo;
    }


    public boolean registraVC(Venta venta) throws SQLException{

        try {
            String sql = "insert into venta(id_Factura_Venta, fecha_Factura,NIT_Cliente,id_Producto, Cantidad, Precio_Unitario, Lote_Producto, Fecha_Vencimiento, descuento, Total_Venta,id_Arqueo) values(?,?,?,?,?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(sql);

            pst.setInt(1,venta.getIdFacturaV());
            pst.setDate(2, (java.sql.Date) venta.getFechaFactura());
            pst.setInt(3, venta.getNitCliente());
            pst.setInt(4,venta.getIdProducto());
            pst.setInt(5, venta.getCantidad());
            pst.setDouble(6, venta.getPrecioUnitario());
            pst.setString(7, venta.getLoteProducto());
            pst.setDate(8, (java.sql.Date) venta.getFechaVencimiento());
            pst.setDouble(9, venta.getDescuento());
            pst.setDouble(10,venta.getTotalVenta());
            pst.setInt(11, venta.getNumeroArqueo());

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
