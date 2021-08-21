package com.migas.Model.Beans;

import java.util.Date;

public class Insumo {

    private int idInsumo;
    private String nombreInsumo;
    private int cantidadInsumo;
    private String Proveedor;
    private Date fechaIngreso;
    private Date fechaVencimiento;
    private String loteInsumo;
    private double precioUnitario;
    private String documentoProveedor;

    public Insumo() {
    }

    public Insumo(int idInsumo, String nombreInsumo, int cantidadInsumo, String Proveedor, Date fechaIngreso, Date fechaVencimiento, String loteInsumo, double precioUnitario, String documentoProveedor) {
        this.idInsumo = idInsumo;
        this.nombreInsumo = nombreInsumo;
        this.cantidadInsumo = cantidadInsumo;
        this.Proveedor = Proveedor;
        this.fechaIngreso = fechaIngreso;
        this.fechaVencimiento = fechaVencimiento;
        this.loteInsumo = loteInsumo;
        this.precioUnitario = precioUnitario;
        this.documentoProveedor = documentoProveedor;
    }

    public int getIdInsumo() {
        return idInsumo;
    }

    public void setIdInsumo(int idInsumo) {
        this.idInsumo = idInsumo;
    }

    public String getNombreInsumo() {
        return nombreInsumo;
    }

    public void setNombreInsumo(String nombreInsumo) {
        this.nombreInsumo = nombreInsumo;
    }

    public int getCantidadInsumo() {
        return cantidadInsumo;
    }

    public void setCantidadInsumo(int cantidadInsumo) {
        this.cantidadInsumo = cantidadInsumo;
    }

    public String getProveedor() {return Proveedor;}

    public void setProveedor(String proveedor) { this.Proveedor = proveedor; }

    public Date getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public String getLoteInsumo() {
        return loteInsumo;
    }

    public void setLoteInsumo(String loteInsumo) {
        loteInsumo = loteInsumo;
    }

    public double getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(double precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public String getDocumentoProveedor() {
        return documentoProveedor;
    }

    public void setDocumentoProveedor(String documentoProveedor) {
        this.documentoProveedor = documentoProveedor;
    }
}
