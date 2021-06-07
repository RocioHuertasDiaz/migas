package com.migas.Model.Dao;
import com.migas.Model.Beans.Proveedor;
import com.migas.Util.Conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConsultasProv extends Conexion {

    PreparedStatement pSt = null;
    ResultSet res = null;
    Proveedor Pro = new Proveedor();

    public boolean Registra(int nitPro, String razonSocialPro, String nombreContactoPro, String emailPro, String direccionPro,
                             int telefonoPro) {

        try {
            String sql = "insert into proveedor(NIT_Proveedor,razon_Social,nombre_Contacto,email_Proveedor,direccion_Proveedor,telefono_proveedor) values(?,?,?,?,?,?)";

            pSt = getConexion().prepareStatement(sql);
            pSt.setInt(1,nitPro);
            pSt.setString(2,razonSocialPro);
            pSt.setString(3,nombreContactoPro);
            pSt.setString(4,emailPro);
            pSt.setString(5,direccionPro);
            pSt.setInt(6,telefonoPro);

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
                pro.setNitPro(res.getInt(1));
                pro.setRazonSocialPro(res.getString(2));
                pro.setNombreContactoPro(res.getString(3));
                pro.setEmailPro(res.getString(4));
                pro.setDireccionPro(res.getString(5));
                pro.setTelefonoPro(res.getInt(6));
                listaProveedores.add(pro);

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listaProveedores;
    }

}
