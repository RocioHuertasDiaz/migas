package com.migas.Controller;

import com.migas.Model.Beans.usuario;
import com.migas.Model.Dao.ConsultaUsuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "ServletUsuario", value = "/Usuario")

public class ServletUsuario extends HttpServlet {


    private usuario Usuario;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");

        switch (opcion) {


            case "listar":

                String acceso = "";
                PrintWriter out = response.getWriter();
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "vistas/Usuario/Administrador.jsp";
                } else {
                    response.sendRedirect("vistas/Usuario/InicioSesion.jsp");
                }
                break;

            case "ObtenerId":
                usuario Usuario = null;
                int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
                try {
                    Usuario = ConsultaUsuario.obtenerPorId(idUsuario);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                request.setAttribute("Usuario", Usuario);
                RequestDispatcher dispatcher = request.getRequestDispatcher("vistas/Usuario/EditarUsuario.jsp");
                dispatcher.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");

        System.out.println(opcion);

        switch (opcion) {

            case "guardar":
                PrintWriter out = response.getWriter();

                String usuario = request.getParameter("usuario");
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String clave = request.getParameter("Clave");
                String tipo = request.getParameter("tipoUsuario");
                String estado = request.getParameter("estadoUsuario");

                ConsultaUsuario co = new ConsultaUsuario();
                if (co.registrar(usuario, nombre, apellido, clave, tipo, estado)) {
                    response.sendRedirect("vistas/Usuario/Administrador.jsp");
                } else {
                    request.setAttribute("MensajeError","El usuario NO se ha registrado");
                    request.getRequestDispatcher("RegistroUsuario.jsp").forward(request,response);
                }

                break;


            case "editar":
                usuario Usuario = new usuario();
                ConsultaUsuario Consulta = new ConsultaUsuario();

                Usuario.setIdUsuario(Integer.parseInt(request.getParameter("idUsuario")));
                Usuario.setUsuario(request.getParameter("usuario"));
                Usuario.setNombre(request.getParameter("nombre"));
                Usuario.setApellido(request.getParameter("apellido"));
                Usuario.setClave(request.getParameter("Clave"));
                Usuario.setTipo(request.getParameter("tipoUsuario"));
                Usuario.setEstado(request.getParameter("estadoUsuario"));


                try {
                    if (Consulta.editar(Usuario)) {
                        response.sendRedirect("vistas/Usuario/Administrador.jsp");
                    } else {
                        response.sendRedirect("vistas/Usuario/EditarUsuario.jsp");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;


            case "iniciar":

                String iniUsuario = request.getParameter("idenUsuario");
                String iniClave = request.getParameter("claveUsuario");

                ConsultaUsuario ingreso = new ConsultaUsuario();
                if (ingreso.autenticacion(iniUsuario, iniClave)) {
                    response.sendRedirect("vistas/Usuario/Administrador.jsp");
                } else {
                    response.sendRedirect("vistas/Usuario/inicioS.jsp");
                }
                break;

            case "verificar":
                String User = (request.getParameter("idenUsuario"));
                String Clave = request.getParameter("claveUsuario");
                ConsultaUsuario usuarioDAO = new ConsultaUsuario();
                try {
                    Usuario = usuarioDAO.verificar(User, Clave);


                    if (Usuario != null) {
                        String roll = Usuario.getTipo();

                        if (roll.equals("Administrador")) {

                            response.sendRedirect("vistas/Usuario/Administrador.jsp");

                        } else if (roll.equals("Asistente Inventario")) {
                            response.sendRedirect("vistas/Produccion/AsistenteInventarios.jsp");

                        } else if (roll.equals("Asistente Ventas")) {
                            response.sendRedirect("vistas/Venta/AsistenteVentas.jsp");

                        } else if (roll.equals("Asistente Compras")) {
                            response.sendRedirect("vistas/Compras/AreaCompras.jsp");
                        } else if (roll.equals("Cajero")) {
                            response.sendRedirect("vistas/Venta/Cajero.jsp");

                        } else if (roll.equals("Jefe de produccion")) {
                            response.sendRedirect("vistas/Produccion/JefeProduccion.jsp");
                        }
                    } else {
                       response.sendRedirect("vistas/Usuario/InicioSesion.jsp");
                       request.setAttribute("MensajeError","El usuario NO se ha registrado");
                        request.getRequestDispatcher("InicioSesion.jsp?error").forward(request,response);

                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;

        }
    }


}
