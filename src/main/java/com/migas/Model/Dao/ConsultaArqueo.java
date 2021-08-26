package com.migas.Model.Dao;

import com.migas.Model.Beans.Arqueo;
import com.migas.Model.Beans.Insumo;
import com.migas.Model.Beans.Venta;
import com.migas.Util.Conexion.Conexion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ConsultaArqueo extends Conexion {
    PreparedStatement pst = null;
    ResultSet rs = null;
    Arqueo P = new Arqueo();

    public List<Arqueo> listar() throws SQLException {
        List<Arqueo> listaArqueo = new ArrayList<>();

        String sql = "SELECT * FROM arqueo";
        pst = getConexion().prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        try {
            while (rs.next()) {
                Arqueo arqueo = new Arqueo();
                arqueo.setNumeroArqueo(rs.getInt(1));
                arqueo.setFechaApertura(rs.getDate(2));
                arqueo.setFechaCierre(rs.getDate(3));
                arqueo.setMontoInical(rs.getDouble(4));
                arqueo.setMontoFinal(rs.getDouble(5));
                arqueo.setVentasCajero(rs.getDouble(6));


                listaArqueo.add(arqueo);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaArqueo;
    }


    public boolean registraA(Arqueo arqueo) throws SQLException {
        try {
            String sql = "insert into arqueo(fecha_Apertura, fecha_Cierre, monto_Inicial, monto_Final,ventas_Cajero) values(?,?,?,?,?);";
            pst = getConexion().prepareStatement(sql);

            pst.setDate(1, (java.sql.Date) arqueo.getFechaApertura());
            pst.setDate(2, (java.sql.Date) arqueo.getFechaCierre());
            pst.setDouble(3, arqueo.getMontoInical());
            pst.setDouble(4, arqueo.getMontoFinal());
            pst.setDouble(5, arqueo.getVentasCajero());

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
