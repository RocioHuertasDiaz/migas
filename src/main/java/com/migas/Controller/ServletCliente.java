package com.migas.Controller;

import com.migas.Model.Dao.ConsultasClient;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletCliente", value = "/ServletCliente")
public class ServletCliente extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "listar":

                String acceso = "";
                PrintWriter out = response.getWriter();
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "listaCli.jsp";
                } else {
                    response.sendRedirect("index.jsp");
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

                int NIT = Integer.parseInt(request.getParameter("nitCliente"));
                String Nombre = request.getParameter("nombreCliente");
                String Contacto = request.getParameter("nombreContacClien");
                String Direccion = request.getParameter("direccionCliente");
                String Correo = request.getParameter("emailCliente");
                int Telefono = Integer.parseInt(request.getParameter("telefonoCliente"));
                String TipoCliente = request.getParameter("tipoCliente");


                ConsultasClient Cli = new ConsultasClient();
                if (Cli.Registrar(NIT, Nombre, Contacto,Direccion,Correo,Telefono,TipoCliente)) {
                    response.sendRedirect("vistas/Cliente/listaCli.jsp");
                } else {
                    response.sendRedirect("RegistroCli.jsp");
                }
                break;
        }

    }
}
