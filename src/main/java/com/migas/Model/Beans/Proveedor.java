package com.migas.Model.Beans;

public class Proveedor {
    private int nitProveedor;
    private String razonSocialProveedor;
    private String nombreContactoProveedor;
    private String emailProveedor;
    private String direccionProveedor;
    private int telefonoProveedor;

    public Proveedor() {
    }

    public Proveedor(int nitProveedor, String razonSocialProveedor, String nombreContactoProveedor, String emailProveedor, String direccionProveedor, int telefonoProveedor) {
        this.nitProveedor = nitProveedor;
        this.razonSocialProveedor = razonSocialProveedor;
        this.nombreContactoProveedor = nombreContactoProveedor;
        this.emailProveedor = emailProveedor;
        this.direccionProveedor = direccionProveedor;
        this.telefonoProveedor = telefonoProveedor;
    }

    public int getNitProveedor() {
        return nitProveedor;
    }

    public void setNitProveedor(int nitProveedor) {
        this.nitProveedor = nitProveedor;
    }

    public String getRazonSocialProveedor() {
        return razonSocialProveedor;
    }

    public void setRazonSocialProveedor(String razonSocialProveedor) {
        this.razonSocialProveedor = razonSocialProveedor;
    }

    public String getNombreContactoProveedor() {
        return nombreContactoProveedor;
    }

    public void setNombreContactoProveedor(String nombreContactoProveedor) {
        this.nombreContactoProveedor = nombreContactoProveedor;
    }

    public String getEmailProveedor() {
        return emailProveedor;
    }

    public void setEmailProveedor(String emailProveedor) {
        this.emailProveedor = emailProveedor;
    }

    public String getDireccionProveedor() {
        return direccionProveedor;
    }

    public void setDireccionProveedor(String direccionProveedor) {
        this.direccionProveedor = direccionProveedor;
    }

    public int getTelefonoProveedor() {
        return telefonoProveedor;
    }

    public void setTelefonoProveedor(int telefonoProveedor) {
        this.telefonoProveedor = telefonoProveedor;
    }
}