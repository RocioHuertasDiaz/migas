package com.migas.Model.Beans;

public class Proveedor {
    private int nitPro;
    private String razonSocialPro;
    private String nombreContactoPro;
    private String emailPro;
    private String direccionPro;
    private int telefonoPro;

    public Proveedor() {
    }

    public Proveedor(int nitPro, String razonSocialPro, String nombreContactoPro, String emailPro, String direccionPro, int telefonoPro) {
        this.nitPro = nitPro;
        this.razonSocialPro = razonSocialPro;
        this.nombreContactoPro = nombreContactoPro;
        this.emailPro = emailPro;
        this.direccionPro = direccionPro;
        this.telefonoPro = telefonoPro;
    }

    public int getNitPro() {
        return nitPro;
    }

    public void setNitPro(int nitPro) {
        this.nitPro = nitPro;
    }

    public String getRazonSocialPro() {
        return razonSocialPro;
    }

    public void setRazonSocialPro(String razonSocialPro) {
        this.razonSocialPro = razonSocialPro;
    }

    public String getNombreContactoPro() {
        return nombreContactoPro;
    }

    public void setNombreContactoPro(String nombreContactoPro) {
        this.nombreContactoPro = nombreContactoPro;
    }

    public String getEmailPro() {
        return emailPro;
    }

    public void setEmailPro(String emailPro) {
        this.emailPro = emailPro;
    }

    public String getDireccionPro() {
        return direccionPro;
    }

    public void setDireccionPro(String direccionPro) {
        this.direccionPro = direccionPro;
    }

    public int getTelefonoPro() {
        return telefonoPro;
    }

    public void setTelefonoPro(int telefonoPro) {
        this.telefonoPro = telefonoPro;
    }
}
