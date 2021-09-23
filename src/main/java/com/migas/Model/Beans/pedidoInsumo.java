package com.migas.Model.Beans;

import java.util.Date;

public class pedidoInsumo {

    private int idPedidoInsumo;
    private Date fechapedido;
    private Date fechaEntrega;
    private int cantidadInsumo;
    private String Insumo;
    private String Proveedor;

    public pedidoInsumo() {
    }

    public pedidoInsumo(int idPedidoInsumo, Date fechapedido, Date fechaEntrega, int cantidadInsumo, String insumo, String proveedor) {
        this.idPedidoInsumo = idPedidoInsumo;
        this.fechapedido = fechapedido;
        this.fechaEntrega = fechaEntrega;
        this.cantidadInsumo = cantidadInsumo;
        Insumo = insumo;
        Proveedor = proveedor;
    }

    public int getIdPedidoInsumo() {
        return idPedidoInsumo;
    }

    public void setIdPedidoInsumo(int idPedidoInsumo) {
        this.idPedidoInsumo = idPedidoInsumo;
    }

    public Date getFechapedido() {
        return fechapedido;
    }

    public void setFechapedido(Date fechapedido) {
        this.fechapedido = fechapedido;
    }

    public Date getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public int getCantidadInsumo() {
        return cantidadInsumo;
    }

    public void setCantidadInsumo(int cantidadInsumo) {
        this.cantidadInsumo = cantidadInsumo;
    }

    public String getInsumo() {
        return Insumo;
    }

    public void setInsumo(String insumo) {
        Insumo = insumo;
    }

    public String getProveedor() {
        return Proveedor;
    }

    public void setProveedor(String proveedor) {
        Proveedor = proveedor;
    }
}