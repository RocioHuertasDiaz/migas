package com.migas.Model.Dao;

import com.migas.Model.Beans.Cliente;
import com.migas.Util.Conexion.Conexion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConsultasClient extends Conexion {

    PreparedStatement pst = null;
    ResultSet res = null;
    Cliente Cli = new Cliente();

    public boolean Registrar(int nitCliente, String nombreCliente, String nombreContacClien, String direccionCliente, String emailCliente,
                             int telefonoCliente, String tipoCliente) {

        try {
            String sql = "insert into cliente(Nit_Cliente,Nombre_Cliente,Nombre_ContactoCli,Direccion_Cliente,Email_Cliente,Telefono_Cliente,Tipo_Cliente) values(?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(sql);
            pst.setInt(1,nitCliente);
            pst.setString(2,nombreCliente);
            pst.setString(3,nombreContacClien);
            pst.setString(4,direccionCliente);
            pst.setString(5,emailCliente);
            pst.setInt(6,telefonoCliente);
            pst.setString(7,tipoCliente);


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

    public List<Cliente> listar() throws SQLException {
        List<Cliente> listaClientes = new ArrayList<>();

        String consulta = "SELECT * FROM cliente";
        pst = getConexion().prepareStatement(consulta);
        ResultSet res = pst.executeQuery();
        try {
            while (res.next()) {
                Cliente cli = new Cliente();
                cli.setNitCliente(res.getInt(1));
                cli.setNombreCliente(res.getString(2));
                cli.setNombreContacClien(res.getString(3));
                cli.setDireccionCliente(res.getString(4));
                cli.setEmailCliente(res.getString(5));
                cli.setTelefonoCliente(res.getInt(6));
                cli.setTipoCliente(res.getString(7));
                listaClientes.add(cli);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaClientes;
    }

}
