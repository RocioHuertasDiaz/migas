package com.migas.Model.Dao;
import com.migas.Model.Beans.Proveedor;
import com.migas.Model.Beans.usuario;
import com.migas.Util.Conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConsultasProveedor extends Conexion {

    private static PreparedStatement pst;
    PreparedStatement pSt = null;
    ResultSet res = null;
    Proveedor Pro = new Proveedor();

    public boolean Registrar(int nitProveedor, String razonSocialProveedor, String nombreContactoProveedor, String emailProveedor,
                             String direccionProveedor, int telefonoProveedor) {

        try {
            String sql= "insert into proveedor(NIT_Proveedor,RazonSocial_Proveedor, nombre_Contacto,email_Proveedor,direccion_Proveedor,telefono_proveedor)" +
                    " values (?,?,?,?,?,?)";

            pSt = getConexion().prepareStatement(sql);
            pSt.setInt(1,nitProveedor);
            pSt.setString(2,razonSocialProveedor);
            pSt.setString(3,nombreContactoProveedor);
            pSt.setString(4,emailProveedor);
            pSt.setString(5,direccionProveedor);
            pSt.setInt(6,telefonoProveedor);

            if (pSt.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception ex) {
            System.err.println("ErrorR1" + ex);
        } finally {
            try {
                if (getConexion() != null)
                    getConexion().close();
                if (pSt != null)
                    pSt.close();
            } catch (Exception ex) {
                System.err.println("ErrorR2" + ex);
            }
        }
        return false;
    }
    public List<Proveedor> listar() throws SQLException{
        List<Proveedor> listaProveedores = new ArrayList<>();

        String consulta = "SELECT * FROM proveedor";
        pSt = getConexion().prepareStatement(consulta);
        ResultSet res = pSt.executeQuery();
        try {
            while (res.next()){
                Proveedor pro = new Proveedor();
                pro.setNitProveedor(res.getInt(1));
                pro.setRazonSocialProveedor(res.getString(2));
                pro.setNombreContactoProveedor(res.getString(3));
                pro.setEmailProveedor(res.getString(4));
                pro.setDireccionProveedor(res.getString(5));
                pro.setTelefonoProveedor(res.getInt(6));
                listaProveedores.add(pro);

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listaProveedores;
    }
    // obtener por id

    public static Proveedor obtenerNit(int nit) throws SQLException {
        Proveedor proveedor = null;

        String sql = "SELECT * FROM proveedor WHERE NIT_Proveedor=? ";
        pst = getConexion().prepareStatement(sql);
        pst.setInt(1, nit);
        ResultSet res = pst.executeQuery();

        res = pst.executeQuery();
        if (res.next()) {

            proveedor = new Proveedor(res.getInt("NIT_Proveedor"),
                    res.getString("RazonSocial_Proveedor"),
                    res.getString("nombre_Contacto"),
                    res.getString("email_Proveedor"),
                    res.getString("direccion_Proveedor"),
                    res.getInt("telefono_proveedor"));
        }
        res.close();
        pst.close();

        return proveedor;
    }

    public boolean editar(Proveedor proveedor) throws SQLException {
        String sql = null;
        boolean estadoOperacion = false;

        sql = "update proveedor set RazonSocial_Proveedor=?,nombre_Contacto=?,email_Proveedor=?,direccion_Proveedor=?,telefono_proveedor=? where NIT_Proveedor=?";
        pst = getConexion().prepareStatement(sql);

        pst.setString(1, proveedor.getRazonSocialProveedor());
        pst.setString(2, proveedor.getNombreContactoProveedor());
        pst.setString(3, proveedor.getEmailProveedor());
        pst.setString(4, proveedor.getDireccionProveedor());
        pst.setInt(5, proveedor.getTelefonoProveedor());
        pst.setInt(6, proveedor.getNitProveedor());

        estadoOperacion = pst.executeUpdate()>0;

        getConexion().close();
        pst.close();

        return estadoOperacion;

    }

}
