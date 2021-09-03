package com.migas.Controller;

import com.migas.Model.Beans.Arqueo;
import com.migas.Model.Dao.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;

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
                ConsultaArqueo DAO = new ConsultaArqueo();
                Arqueo arqueo = new Arqueo();

                arqueo.setFechaApertura(Date.valueOf(request.getParameter("fechaApertura")));
                arqueo.setFechaCierre(Date.valueOf(request.getParameter("fechaCierre")));
                arqueo.setMontoInicial(Double.parseDouble(request.getParameter("montoInicial")));
                arqueo.setMontoFinal(Double.parseDouble(request.getParameter("montoFinal")));
                arqueo.setVentasCajero(Double.parseDouble(request.getParameter("ventasCajero")));

                ConsultaArqueo co = new ConsultaArqueo();
                try {
                    if (co.registrarA(arqueo)) {
                        response.sendRedirect("vistas/Venta/RegistroVenta.jsp");
                    } else {
                        response.sendRedirect("vistas/Venta/iniciarCaja.jsp");
                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;

        }



    }

}
