package com.migas.Model.Dao;
import com.migas.Model.Beans.Proveedor;
import com.migas.Model.Beans.usuario;
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

    public boolean registrar(int nitPro, String razonSocialPro, String nombreContactoPro, String direccionPro,
                            int telefonoPro) {

        try {
            String consulta = "insert into proveedor(NIT_Proveedor,Razon_Social,Nombre_Contacto,Direccion,Telefono) values(?,?,?,?,?)";
            pSt = getConexion().prepareStatement(consulta);
            pSt.setInt(1, nitPro);
            pSt.setString(2, razonSocialPro);
            pSt.setString(3, nombreContactoPro);
            pSt.setString(4, direccionPro);
            pSt.setInt(5, telefonoPro);

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
                pro.setDireccionPro(res.getString(4));
                pro.setTelefonoPro(res.getInt(5));
                listaProveedores.add(pro);

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listaProveedores;
    }

}
