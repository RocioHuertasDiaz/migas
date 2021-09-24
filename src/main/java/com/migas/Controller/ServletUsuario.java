package com.migas.Controller;

import com.migas.Model.Beans.usuario;
import com.migas.Model.Dao.ConsultaUsuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "ServletUsuario", value = "/Usuario")

public class ServletUsuario extends HttpServlet {


    public usuario Usuario;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


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

                break;

            case "logout":

                HttpSession session = request.getSession();
                session.invalidate();
                response.sendRedirect("vistas/Usuario/InicioSesion.jsp");

                break;

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

                ConsultaUsuario consultaUsuario = new ConsultaUsuario(Usuario);
                if (consultaUsuario.registrar(usuario, nombre, apellido, clave, tipo, estado)) {
                    response.sendRedirect("vistas/Usuario/Administrador.jsp");
                } else {
                    request.setAttribute("MensajeError", "El usuario NO se ha registrado");
                    request.getRequestDispatcher("RegistroUsuario.jsp").forward(request, response);
                }

                break;


            case "editar":
                usuario Usuario = new usuario();
                ConsultaUsuario Consulta = new ConsultaUsuario(Usuario);

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
                String idUsuario = request.getParameter("idUsuario");
                String idenUsuario = request.getParameter("idenUsuario");
                String Clave = request.getParameter("claveUsuario");

                Usuario = new usuario(idUsuario, idenUsuario, Clave);
                ConsultaUsuario consultaUs = new ConsultaUsuario(Usuario);


                if (consultaUs.inicioSesion(idenUsuario, Clave)){
                    HttpSession sesion = request.getSession(true);
                    Usuario = new usuario(idenUsuario,Clave);
                    sesion.setAttribute("datosUsuario",Usuario);
                    request.getRequestDispatcher("vistas/Compras/AreaCompras.jsp").forward(request,response);

                }else{
                    request.setAttribute("mensajeError","Datos incorrectos");
                    request.getRequestDispatcher("vistas/Usuario/InicioSesion.jsp").forward(request,response);
                }
                break;



            case "verificar":
                HttpSession sesion = request.getSession();

                idenUsuario = (request.getParameter("idenUsuario"));
                Clave = request.getParameter("claveUsuario");
                Usuario = new usuario();
                Consulta = new ConsultaUsuario(Usuario);

                try {
                    Consulta.verificar(idenUsuario,Clave);
                    sesion.setAttribute("datosUsuario", Usuario);


                    if (Usuario.getUsuario() != null) {

                        String rol = Usuario.getTipo();

                        if (rol.equals("Administrador")) {

                            response.sendRedirect("vistas/Usuario/Administrador.jsp");

                        } else if (rol.equals("Asistente Inventario")) {
                            response.sendRedirect("vistas/Produccion/AsistenteInventarios.jsp");

                        } else if (rol.equals("Asistente Ventas")) {
                            response.sendRedirect("vistas/Venta/AsistenteVentas.jsp");

                        } else if (rol.equals("Asistente Compras")) {
                            response.sendRedirect("vistas/Compras/AreaCompras.jsp");
                        } else if (rol.equals("Cajero")) {
                            response.sendRedirect("vistas/Venta/Cajero.jsp");

                        } else if (rol.equals("Jefe de produccion")) {
                            response.sendRedirect("vistas/Produccion/JefeProduccion.jsp");
                        }
                    } else {
                        request.setAttribute("mensajeError", "Datos errados");
                        request.getRequestDispatcher("/vistas/Usuario/InicioSesion.jsp").forward(request, response);

                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;


        }
    }
}






