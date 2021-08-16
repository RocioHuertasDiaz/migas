package com.migas.Controller;

import com.migas.Model.Beans.Proveedor;
import com.migas.Model.Beans.usuario;
import com.migas.Model.Dao.ConsultaUsuario;
import com.migas.Model.Dao.ConsultasProveedor;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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
                    acceso = "vistas/Compras/listaProveedor.jsp";
                } else {
                    response.sendRedirect("vistas/Compras/AreaCompras.jsp");
                }
                break;

            case "ObtenerNit":
                Proveedor proveedor = null;
                int Nit = Integer.parseInt(request.getParameter("nitProveedor"));
                try {
                    proveedor = ConsultasProveedor.obtenerNit(Nit);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                request.setAttribute("proveedor", proveedor);
                RequestDispatcher dispatcher = request.getRequestDispatcher("vistas/Compras/EdicionProveedor.jsp");
                dispatcher.forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "guardar":
                PrintWriter out = response.getWriter();

                int nit = Integer.parseInt(request.getParameter("nitProveedor"));
                String razonSocial = request.getParameter("razonSocialProveedor");
                String Contacto = request.getParameter("nombreContactoProveedor");
                String Correo = request.getParameter("emailProveedor");
                String direccion = request.getParameter("direccionProveedor");
                int telefono = Integer.parseInt(request.getParameter("telefonoProveedor"));

                ConsultasProveedor pro = new ConsultasProveedor();
                if (pro.Registrar(nit, razonSocial, Contacto,Correo, direccion,telefono)) {
                    response.sendRedirect("vistas/Compras/listaProveedor.jsp");
                } else {
                    response.sendRedirect("vistas/Compras/RegistroProveedor.jsp");
                }
                break;


            case "editar":
                Proveedor proveedor = new Proveedor();
                ConsultasProveedor Consulta = new ConsultasProveedor();
                proveedor.setNitProveedor(Integer.parseInt(request.getParameter("nitProveedor")));
                proveedor.setRazonSocialProveedor(request.getParameter("razonSocialProveedor"));
                proveedor.setNombreContactoProveedor(request.getParameter("nombreContactoProveedor"));
                proveedor.setEmailProveedor(request.getParameter("emailProveedor"));
                proveedor.setDireccionProveedor(request.getParameter("direccionProveedor"));
                proveedor.setTelefonoProveedor(Integer.parseInt(request.getParameter("telefonoProveedor")));


                try {
                    if (Consulta.editar(proveedor)) {
                        response.sendRedirect("vistas/Compras/listaProveedor.jsp");
                    } else {
                        response.sendRedirect("vistas/Compras/EdicionProveedor.jsp");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }

    }
}
