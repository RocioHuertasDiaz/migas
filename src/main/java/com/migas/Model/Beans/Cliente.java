package com.migas.Model.Beans;

public class Cliente {

    private int nitCliente;
    private String nombreCliente;
    private String nombreContacCliente;
    private String direccionCliente;
    private String emailCliente;
    private int telefonoCliente;
    private String tipoCliente;

    public Cliente(){
        }

    public Cliente(int nitCliente, String nombreCliente, String nombreContacCliente, String direccionCliente, String emailCliente, int telefonoCliente, String tipoCliente) {
        this.nitCliente = nitCliente;
        this.nombreCliente = nombreCliente;
        this.nombreContacCliente = nombreContacCliente;
        this.direccionCliente = direccionCliente;
        this.emailCliente = emailCliente;
        this.telefonoCliente = telefonoCliente;
        this.tipoCliente = tipoCliente;
    }

    public int getNitCliente() {
        return nitCliente;
    }

    public void setNitCliente(int nitCliente) {
        this.nitCliente = nitCliente;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getNombreContacCliente() {
        return nombreContacCliente;
    }

    public void setNombreContacCliente(String nombreContacClien) {
        this.nombreContacCliente = nombreContacClien;
    }

    public String getDireccionCliente() {
        return direccionCliente;
    }

    public void setDireccionCliente(String direccionCliente) {
        this.direccionCliente = direccionCliente;
    }

    public String getEmailCliente() {
        return emailCliente;
    }

    public void setEmailCliente(String emailCliente) {
        this.emailCliente = emailCliente;
    }

    public int getTelefonoCliente() {
        return telefonoCliente;
    }

    public void setTelefonoCliente(int telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }

    public String getTipoCliente() {
        return tipoCliente;
    }

    public void setTipoCliente(String tipoCliente) {
        this.tipoCliente = tipoCliente;
    }
}
