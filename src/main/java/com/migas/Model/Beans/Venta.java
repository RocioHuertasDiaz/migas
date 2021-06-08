package com.migas.Model.Beans;

import java.util.Date;

public class Venta {
    private int idFacturaV;
    private Date fechaFactura;
    private int idProducto;
    private int Cantidad;
    private double precioUnitario;
    private String LoteProducto;
    private Date fechaVencimiento;
    private double Descuento;
    private double totalVenta;
    private int NitCliente;

    public Venta() {
    }

    public Venta(int idFacturaV, Date fechaFactura, int idProducto, int cantidad, double precioUnitario, String loteProducto, Date fechaVencimiento, double descuento, double totalVenta, int nitCliente) {
        this.idFacturaV = idFacturaV;
        this.fechaFactura = fechaFactura;
        this.idProducto = idProducto;
        Cantidad = cantidad;
        this.precioUnitario = precioUnitario;
        LoteProducto = loteProducto;
        this.fechaVencimiento = fechaVencimiento;
        Descuento = descuento;
        this.totalVenta = totalVenta;
        NitCliente = nitCliente;
    }

    public int getIdFacturaV() {
        return idFacturaV;
    }

    public void setIdFacturaV(int idFacturaV) {
        this.idFacturaV = idFacturaV;
    }

    public Date getFechaFactura() {
        return fechaFactura;
    }

    public void setFechaFactura(Date fechaFactura) {
        this.fechaFactura = fechaFactura;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int cantidad) {
        Cantidad = cantidad;
    }

    public double getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(double precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public String getLoteProducto() {
        return LoteProducto;
    }

    public void setLoteProducto(String loteProducto) {
        LoteProducto = loteProducto;
    }

    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public double getDescuento() {
        return Descuento;
    }

    public void setDescuento(double descuento) {
        Descuento = descuento;
    }

    public double getTotalVenta() {
        return totalVenta;
    }

    public void setTotalVenta(double totalVenta) {
        this.totalVenta = totalVenta;
    }

    public int getNitCliente() {
        return NitCliente;
    }

    public void setNitCliente(int nitCliente) {
        NitCliente = nitCliente;
    }
}
