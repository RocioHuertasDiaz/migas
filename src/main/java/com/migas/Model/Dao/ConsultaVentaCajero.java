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
                arqueo.setMontoInical(rs.getDouble(4));
                arqueo.setVentasCajero(rs.getDouble(6));
                arqueo.setMontoFinal(rs.getDouble(5));



                listaVentasArqueo.add(arqueo);

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listaVentasArqueo;
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
