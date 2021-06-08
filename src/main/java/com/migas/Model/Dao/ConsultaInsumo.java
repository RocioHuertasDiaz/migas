package com.migas.Model.Dao;

import com.migas.Model.Beans.Insumo;
import com.migas.Model.Beans.Producto;
import com.migas.Util.Conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ConsultaInsumo extends Conexion {
    PreparedStatement Pst = null;
    ResultSet rs = null;
    Insumo Ins = new Insumo();

    public List<Insumo> listar() throws SQLException {
        List<Insumo> listaInsumos = new ArrayList<>();

        String sql = "SELECT * FROM insumo";
        Pst = getConexion().prepareStatement(sql);
        ResultSet rs = Pst.executeQuery();
        try {
            while (rs.next()){
                Insumo insumo = new Insumo();

                insumo.setIdInsumo(rs.getInt(1));
                insumo.setNombreInsumo(rs.getString(2));
                insumo.setCantidadInsumo(rs.getInt(3));
                insumo.setProveedor(rs.getString(4));
                insumo.setFechaIngreso(rs.getDate(5));
                insumo.setFechaVencimiento(rs.getDate(6));
                insumo.setLoteInsumo(rs.getString(7));
                insumo.setPrecioUnitario(rs.getDouble(8));

                listaInsumos.add(insumo);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listaInsumos;
    }

    public boolean registra(int idInsumo, String nombreInsumo, int cantidadInsumo, String proveedor, Date fechaIngreso, Date fechaVencimiento, String loteInsumo, double precioUnitario) {

        try {
            String sql = "insert into insumo(id_Insumo, nombre_Insumo, Cantidad_Insumo, proveedor, fecha_Ingreso, fecha_Vencimiento, Lote_Insumo, Precio_UnitarioIn) values(?,?,?,?,?,?,?,?)";
            Pst = getConexion().prepareStatement(sql);

            Pst.setInt(1, idInsumo);
            Pst.setString(2, nombreInsumo);
            Pst.setInt(3, cantidadInsumo);
            Pst.setString(4,proveedor);
            Pst.setDate(5, (java.sql.Date) fechaIngreso);
            Pst.setDate(6, (java.sql.Date) fechaVencimiento);
            Pst.setString(7,loteInsumo);
            Pst.setDouble(8,precioUnitario);

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
