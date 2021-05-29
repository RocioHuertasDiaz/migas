package com.migas.Controller;

import com.migas.Model.Dao.Consultas;
import com.migas.Model.Dao.ConsultasProv;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletProveedor", value = "/ServletProveedor")
public class ServletProveedor extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");

        switch (opcion) {

            case "listar":

                String acceso = "";
                PrintWriter out = response.getWriter();
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "listaProv.jsp";
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

                int nit = Integer.parseInt(request.getParameter("nitPro"));
                String razonSocial = request.getParameter("razonSocialPro");
                String nombreContacto = request.getParameter("nombreContactoPro");
                String direccion = request.getParameter("direccionPro");
                int telefono = Integer.parseInt(request.getParameter("telefonoPro"));

                ConsultasProv con = new ConsultasProv();
                if (con.registrar(nit, razonSocial, nombreContacto, direccion, telefono)) {
                    response.sendRedirect("vistas/Proveedor/listaProv.jsp");
                } else {
                    response.sendRedirect("RegistroProv.jsp");
                }
                break;
        }
    }
}
