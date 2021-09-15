package com.migas.Model.Beans;

public class usuario {


    private int idUsuario;
    private String usuario;
    private String nombre;
    private String apellido;
    private String Clave;
    private String tipo;
    private String estado;

    public usuario() {
    }

    public usuario(int idUsuario, String usuario, String nombre, String apellido, String clave, String tipo, String estado) {
        this.idUsuario = idUsuario;
        this.usuario = usuario;
        this.nombre = nombre;
        this.apellido = apellido;
        Clave = clave;
        this.tipo = tipo;
        this.estado = estado;
    }

    public usuario(String idenUsuario, String nombreUsuario, String apellidoUsuario, String claveUsuario, String tipoUsuario, String estadoUsuario) {
    }

    public usuario(String iniUsuario, String iniClave) {
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    public String getClave() {return Clave;}

    public void setClave(String clave) {
        Clave = clave;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

}