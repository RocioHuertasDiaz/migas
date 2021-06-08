package com.migas.Controller;

import com.migas.Model.Dao.ConsultaProducto;
import com.migas.Model.Dao.ConsultaVenta;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

@WebServlet(name = "ServletVenta", value = "/ServletVenta")
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
                PrintWriter out = response.getWriter();

                int idFacturaV = Integer.parseInt(request.getParameter("idFacturaV"));
                Date FechaFactura = Date.valueOf(request.getParameter("fechaFactura"));
                int idProducto = Integer.parseInt(request.getParameter("idProducto"));
                int Cantidad = Integer.parseInt(request.getParameter("Cantidad"));
                Double precio = Double.valueOf(request.getParameter("precioUnitario"));
                String lote = request.getParameter("loteProducto");
                Date FechaVenc = Date.valueOf(request.getParameter("fechaVencimiento"));
                Double descuento = Double.valueOf(request.getParameter("Descuento"));
                Double Total = Double.valueOf(request.getParameter("totalVenta"));
                int nitCliente = Integer.parseInt(request.getParameter("NitCliente"));


                ConsultaVenta venta = new ConsultaVenta();

                if (venta.registraV(idFacturaV, FechaFactura,idProducto, Cantidad, precio, lote, FechaVenc, descuento,Total,nitCliente)) {
                    response.sendRedirect("vistas/Venta/listaVenta.jsp");
                } else {
                    response.sendRedirect("RegistroVenta.jsp");
                }
                break;
        }

    }


}
