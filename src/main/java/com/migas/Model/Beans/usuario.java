package com.migas.Model.Beans;

public class usuario {
    public String usuario;
    public String tipoUsuario;
    public String nombre;
    private int idUsuario;
    private String apellido;
    private String Clave;
    private static String tipoUsuario1;
    private static String Nombre1;


    public usuario() {
    }

    public usuario(int idUsuario, String usuario, String nombre, String apellido, String clave, String tipoUsuario) {
        this.idUsuario = idUsuario;
        this.usuario = usuario;
        this.nombre = nombre;
        this.apellido = apellido;
        Clave = clave;
        this.tipoUsuario = tipoUsuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public static String getTipoUsuario1() {
        return tipoUsuario1;
    }
    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public static String getNombre1() {
        return Nombre1;
    }
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getClave() {
        return Clave;
    }

    public void setClave(String clave) {
        Clave = clave;
    }
}


