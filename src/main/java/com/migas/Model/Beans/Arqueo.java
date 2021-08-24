package com.migas.Model.Beans;

import java.util.Date;

public class Arqueo {
    private int numeroArqueo;
    private Date fechaApertura;
    private Date fechaCierre;
    private double montoInical;
    private double montoFinal;
    private double ventasCajero;

    public Arqueo() {
    }

    public Arqueo(int numeroArqueo, Date fechaApertura, Date fechaCierre, double montoInical, double montoFinal, double ventasCajero) {
        this.numeroArqueo = numeroArqueo;
        this.fechaApertura = fechaApertura;
        this.fechaCierre = fechaCierre;
        this.montoInical = montoInical;
        this.montoFinal = montoFinal;
        this.ventasCajero = ventasCajero;
    }

    public int getNumeroArqueo() {
        return numeroArqueo;
    }

    public void setNumeroArqueo(int numeroArqueo) {
        this.numeroArqueo = numeroArqueo;
    }

    public Date getFechaApertura()
    {
        return fechaApertura;
    }

    public void setFechaApertura(Date fechaApertura)
    {
        this.fechaApertura = fechaApertura;
    }

    public Date getFechaCierre()
    {
        return fechaCierre;
    }

    public void setFechaCierre(Date fechaCierre)
    {
        this.fechaCierre = fechaCierre;
    }

    public double getMontoInical() {
        return montoInical;
    }

    public void setMontoInical(double montoInical) {
        this.montoInical = montoInical;
    }

    public double getMontoFinal() {
        return montoFinal;
    }

    public void setMontoFinal(double montoFinal) {
        this.montoFinal = montoFinal;
    }

    public double getVentasCajero() {
        return ventasCajero;
    }

    public void setVentasCajero(double ventasCajero) {
        this.ventasCajero = ventasCajero;
    }
}
