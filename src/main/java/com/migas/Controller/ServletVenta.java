package com.migas.Controller;

import com.migas.Model.Beans.Venta;
import com.migas.Model.Dao.ConsultaVenta;
import com.migas.Model.Dao.ConsultaVentaCajero;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Document;
import java.awt.event.ActionEvent;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "ServletVenta", value = "/Venta")
public class ServletVenta extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "listar":

                String acceso = "";
                PrintWriter out = response.getWriter();
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "listaVenta.jsp";
                } else {
                    response.sendRedirect("RegistroVenta.jsp");
                }
                break;

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "guardar":
                PrintWriter out1 = response.getWriter();

                ConsultaVenta DAO = new ConsultaVenta();
                Venta venta = new Venta();

                venta.setIdFacturaV(Integer.parseInt(request.getParameter("idFacturaV")));
                venta.setFechaFactura(Date.valueOf(request.getParameter("fechaFactura")));
                venta.setNitCliente(Integer.parseInt(request.getParameter("NitCliente")));
                venta.setIdProducto(Integer.parseInt(request.getParameter("idProducto")));
                venta.setCantidad(Integer.parseInt(request.getParameter("Cantidad")));
                venta.setPrecioUnitario(Double.parseDouble(request.getParameter("precioUnitario")));
                venta.setLoteProducto(request.getParameter("LoteProducto"));
                venta.setFechaVencimiento(Date.valueOf(request.getParameter("fechaVencimiento")));
                venta.setDescuento(Double.parseDouble(request.getParameter("Descuento")));
                venta.setTotalVenta(Double.parseDouble(request.getParameter("totalVenta")));
                venta.setNumeroArqueo(Integer.parseInt(request.getParameter("numeroArqueo")));



                ConsultaVentaCajero consulta = new ConsultaVentaCajero();
                try {
                    if (consulta.registraVC(venta)) {
                        response.sendRedirect("vistas/Venta/mensajeVenta.jsp");
                    } else {
                        response.sendRedirect("vistas/Venta/RegistroVenta.jsp");
                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;







            }

        }




}
