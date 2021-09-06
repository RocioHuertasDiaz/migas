package com.migas.Model.Beans;

import java.util.Date;

public class pedidoProducto {

    private int idPedidoProducto;
    private Date fechaPedido;
    private Date fechaEntrega;
    private int idProducto;
    private int cantidadProducto;
    private int NITCliente;


    public pedidoProducto() {
    }

    public pedidoProducto(int idPedidoProducto, Date fechapedido, Date fechaEntrega, int idProducto, int cantidadProducto, int NITCliente) {
        this.idPedidoProducto = idPedidoProducto;
        this.fechaPedido = fechapedido;
        this.fechaEntrega = fechaEntrega;
        this.idProducto = idProducto;
        this.cantidadProducto = cantidadProducto;
        this.NITCliente = NITCliente;
    }

    public int getIdPedidoProducto() {
        return idPedidoProducto;
    }

    public void setIdPedidoProducto(int idPedidoProducto) {
        this.idPedidoProducto = idPedidoProducto;
    }

    public Date getFechaPedido() {
        return fechaPedido;
    }

    public void setFechaPedido(Date fechaPedido) {
        this.fechaPedido = fechaPedido;
    }

    public Date getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getCantidadProducto() {
        return cantidadProducto;
    }

    public void setCantidadProducto(int cantidadProducto) {
        this.cantidadProducto = cantidadProducto;
    }

    public int getNITCliente() {
        return NITCliente;
    }

    public void setNITCliente(int NITCliente) {
        this.NITCliente = NITCliente;
    }
}
