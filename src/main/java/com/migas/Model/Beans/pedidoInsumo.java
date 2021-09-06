package com.migas.Model.Beans;

import java.util.Date;

public class pedidoInsumo {

    private int idPedidoInsumo;
    private Date fechapedido;
    private Date fechaEntrega;
    private int cantidadInsumo;
    private int idInsumo;
    private int NITProveedor;


    public pedidoInsumo() {
    }

    public pedidoInsumo(int idPedidoInsumo, Date fechapedido, Date fechaEntrega, int cantidadInsumo, int idInsumo, int NITProveedor) {
        this.idPedidoInsumo = idPedidoInsumo;
        this.fechapedido = fechapedido;
        this.fechaEntrega = fechaEntrega;
        this.cantidadInsumo = cantidadInsumo;
        this.idInsumo = idInsumo;
        this.NITProveedor = NITProveedor;
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

    public int getIdInsumo() {
        return idInsumo;
    }

    public void setIdInsumo(int idInsumo) {
        this.idInsumo = idInsumo;
    }

    public int getNITProveedor() {
        return NITProveedor;
    }

    public void setNITProveedor(int NITProveedor) {
        this.NITProveedor = NITProveedor;
    }
}
