package com.migas.Controller;

import com.migas.Model.Dao.ConsultaArqueo;
import com.migas.Model.Dao.ConsultaVenta;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

@WebServlet(name = "ServletArqueo", value = "/ServletArqueo")
public class ServletArqueo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "listar":

                String acceso = "";
                PrintWriter out = response.getWriter();
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "listaVentaCajero";
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

                Date FechaInicial = Date.valueOf(request.getParameter("fechaApertura"));
                Date FechaFinal = Date.valueOf(request.getParameter("fechaCierre"));
                Double montoIni = Double.valueOf(request.getParameter("montoInical"));
                Double montoFin = Double.valueOf(request.getParameter("montoFinal"));

                ConsultaArqueo arqueo = new ConsultaArqueo();

                if (arqueo.registraA(FechaInicial,FechaFinal,montoIni,montoFin)) {
                    response.sendRedirect("vistas/Venta/listaVentaCajero.jsp");
                } else {
                    response.sendRedirect("vistas/Venta/inicioCaja.jsp");
                }
                break;
        }

    }
}
