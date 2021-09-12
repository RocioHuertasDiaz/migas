package com.migas.Model.Dao;

import com.migas.Model.Beans.Cliente;
import com.migas.Model.Beans.Insumo;
import com.migas.Model.Beans.Producto;
import com.migas.Util.Conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConsultaInsumo extends Conexion {
    private static PreparedStatement pst;
    PreparedStatement Pst = null;
    ResultSet rs = null;
    Insumo Ins = new Insumo();

    public List<Insumo> listar() throws SQLException {
        List<Insumo> listaInsumos = new ArrayList<>();

        String sql = "SELECT * FROM insumo";
        Pst = getConexion().prepareStatement(sql);
        ResultSet rs = Pst.executeQuery();
        try {
            while (rs.next()) {
                Insumo insumo = new Insumo();

                insumo.setIdInsumo(rs.getInt(1));
                insumo.setNombreInsumo(rs.getString(2));
                insumo.setCantidadInsumo(rs.getInt(3));
                insumo.setProveedor(rs.getString(4));
                insumo.setFechaIngreso(rs.getDate(5));
                insumo.setFechaVencimiento(rs.getDate(6));
                insumo.setLoteInsumo(rs.getString(7));
                insumo.setPrecioUnitario(rs.getDouble(8));
                insumo.setDocumentoProveedor(rs.getString(9));

                listaInsumos.add(insumo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaInsumos;
    }

    public boolean registrar(Insumo insumo) throws SQLException{

        try {
            String sql = "insert into insumo(id_Insumo, nombre_Insumo, Cantidad_Insumo, proveedor, fecha_Ingreso, fecha_Vencimiento, Lote_Insumo, Precio_UnitarioIn,documento_Proveedor) values(?,?,?,?,?,?,?,?,?)";
            Pst = getConexion().prepareStatement(sql);

            Pst.setInt(1, insumo.getIdInsumo());
            Pst.setString(2, insumo.getNombreInsumo());
            Pst.setInt(3, insumo.getCantidadInsumo());
            Pst.setString(4, insumo.getProveedor());
            Pst.setDate(5, (java.sql.Date) insumo.getFechaIngreso());
            Pst.setDate(6, (java.sql.Date) insumo.getFechaVencimiento());
            Pst.setString(7, insumo.getLoteInsumo());
            Pst.setDouble(8, insumo.getPrecioUnitario());
            Pst.setString(9, insumo.getDocumentoProveedor());

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

    public static Insumo obtenerId(int id) throws SQLException {
        Insumo insumo = null;

        String sql = "SELECT * FROM insumo WHERE id_Insumo=?";
        pst = getConexion().prepareStatement(sql);
        pst.setInt(1, id);
        ResultSet res = pst.executeQuery();

        res = pst.executeQuery();
        if (res.next()) {

            insumo = new Insumo(res.getInt("id_Insumo"),
                    res.getString("nombre_Insumo"),
                    res.getInt("Cantidad_Insumo"),
                    res.getString("proveedor"),
                    res.getDate("fecha_Ingreso"),
                    res.getDate("fecha_Vencimiento"),
                    res.getString("Lote_Insumo"),
                    res.getDouble("Precio_UnitarioIn"),
                    res.getString("documento_Proveedor"));
        }
        res.close();
        pst.close();

        return insumo;
    }

    public boolean editar(Insumo insumo) throws SQLException {
        String sql = null;
        boolean estadoOperacion = false;

        sql = "update insumo set nombre_Insumo=?, Cantidad_Insumo=?, proveedor=?, fecha_Ingreso=?, fecha_Vencimiento=?, Lote_Insumo=?, Precio_UnitarioIn=?,documento_Proveedor=? where id_Insumo=?";
        Pst = getConexion().prepareStatement(sql);
        Pst.setString(1, insumo.getNombreInsumo());
        Pst.setInt(2, insumo.getCantidadInsumo());
        Pst.setString(3,insumo.getProveedor());
        Pst.setDate(4, (java.sql.Date) insumo.getFechaIngreso());
        Pst.setDate(5, (java.sql.Date) insumo.getFechaVencimiento());
        Pst.setString(6, insumo.getLoteInsumo());
        Pst.setDouble(7, insumo.getPrecioUnitario());
        Pst.setString(8, insumo.getDocumentoProveedor());
        Pst.setInt(9, insumo.getIdInsumo());

        estadoOperacion = Pst.executeUpdate() > 0;

        getConexion().close();
        Pst.close();

        return estadoOperacion;

    }
    public Insumo ConsultarInsumo (int idInsumo) {
        Insumo consInsumo = null;
        try {
            String sql = "SELECT * FROM insumo where id_Insumo =?";
            pst = getConexion().prepareStatement(sql);
            pst.setInt(1, idInsumo);
            rs = pst.executeQuery();
            while (rs.next()) {
                consInsumo = new Insumo(idInsumo, rs.getString(2), rs.getInt(3),rs.getString(4), rs.getDate(5),
                        rs.getDate(6), rs.getString(7), rs.getDouble(8),rs.getString(9));
            }
        } catch (Exception ex) {
            Logger.getLogger(ConsultaVenta.class.getName()).log(Level.SEVERE, null, ex);
        }
        return consInsumo;
    }
}

