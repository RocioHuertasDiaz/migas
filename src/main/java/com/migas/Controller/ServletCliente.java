package com.migas.Controller;

import com.migas.Model.Beans.Cliente;
import com.migas.Model.Beans.Proveedor;
import com.migas.Model.Dao.ConsultasCliente;
import com.migas.Model.Dao.ConsultasProveedor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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
                    acceso = "listaClientes.jsp";
                } else {
                    response.sendRedirect("index.jsp");
                }
                break;

            case "ObtenerNit":
                Cliente cliente = null;
                int Nit = Integer.parseInt(request.getParameter("nitCliente"));
                try {
                    cliente = ConsultasCliente.obtenerNit(Nit);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                request.setAttribute("cliente", cliente);
                RequestDispatcher dispatcher = request.getRequestDispatcher("vistas/Venta/EdicionCliente.jsp");
                dispatcher.forward(request, response);

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
                String Contacto = request.getParameter("nombreContacCliente");
                String Direccion = request.getParameter("direccionCliente");
                String Correo = request.getParameter("emailCliente");
                int Telefono = Integer.parseInt(request.getParameter("telefonoCliente"));
                String TipoCliente = request.getParameter("tipoCliente");


                ConsultasCliente Cli = new ConsultasCliente();
                if (Cli.Registrar(NIT, Nombre, Contacto, Direccion, Correo, Telefono, TipoCliente)) {
                    response.sendRedirect("vistas/Venta/listaClientes.jsp");
                } else {
                    response.sendRedirect("RegistroCliente.jsp");
                }
                break;


            case "editar":
                Cliente cliente = new Cliente();
                ConsultasCliente consulta = new ConsultasCliente();
                cliente.setNitCliente(Integer.parseInt(request.getParameter("nitCliente")));
                cliente.setNombreCliente(request.getParameter("nombreCliente"));
                cliente.setNombreContacCliente(request.getParameter("nombreContacCliente"));
                cliente.setDireccionCliente(request.getParameter("direccionCliente"));
                cliente.setEmailCliente(request.getParameter("emailCliente"));
                cliente.setTelefonoCliente(Integer.parseInt(request.getParameter("telefonoCliente")));
                cliente.setTipoCliente(request.getParameter("tipoCliente"));


                try {
                    if (consulta.editar(cliente)) {
                        response.sendRedirect("vistas/Venta/listaClientes.jsp");
                    } else {
                        response.sendRedirect("vistas/Venta/EdicionCliente.jsp");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;


        }

    }
}
