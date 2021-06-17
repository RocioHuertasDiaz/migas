package com.migas.Model.Beans;

public class Cargo {
    private String tipoUsuario;
    private String Estado;

    public Cargo() {
    }

    public Cargo(String tipoUsuario, String estado) {
        this.tipoUsuario = tipoUsuario;
        Estado = estado;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String estado) {
        Estado = estado;
    }
}
