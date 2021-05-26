package com.migas.Model.Beans;

import java.util.Iterator;

public class usuario {
    private int idUsuario;
    private String usuario;
    private String nombre;
    private String apellido;
    private String tipoUsario;
    private String Clave;

    public usuario(int idUsuario, String usuario, String nombre, String apellido, String tipoUsario, String clave) {
        this.idUsuario = idUsuario;
        this.usuario = usuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.tipoUsario = tipoUsario;
        Clave = clave;
    }

    public usuario() {

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

    public String getTipoUsario() {
        return tipoUsario;
    }

    public void setTipoUsario(String tipoUsario) {
        this.tipoUsario = tipoUsario;
    }

    public String getClave() {
        return Clave;
    }

    public void setClave(String clave) {
        Clave = clave;
    }

    public Iterator<com.migas.Model.Beans.usuario> iterator() {
    return iterator();
    }

}
