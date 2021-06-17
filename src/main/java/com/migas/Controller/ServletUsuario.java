package com.migas.Controller;

import com.migas.Model.Beans.Cargo;
import com.migas.Model.Beans.usuario;
import com.migas.Model.Dao.Consultas;


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

@WebServlet(name = "ServletUsuario", value = "/ServletUsuario")

public class ServletUsuario extends HttpServlet {


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
                    response.sendRedirect("vistas/Usuario/inicioS.jsp");
                }
                break;

            case "obtenerId":
                request.setAttribute("idUsuario", request.getParameter("idUsuario"));
                acceso = "vistas/Usuario/Editar.jsp";
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

                Consultas co = new Consultas();
                if (co.registrar(usuario, nombre, apellido, clave, tipo)) {
                    response.sendRedirect("vistas/Usuario/inicioS.jsp");
                } else {
                    response.sendRedirect("vistas/Usuario/Registro.jsp");
                }
                break;


            case "editar":
                Consultas usu = new Consultas();
                usuario = request.getParameter("usuario");
                nombre = request.getParameter("nombre");
                apellido = request.getParameter("apellido");
                clave = request.getParameter("Clave");
                tipo = request.getParameter("tipoUsuario");

                if (usu.actualizar(usuario, nombre, apellido, clave, tipo)) {
                    response.sendRedirect("vistas/Usuario/inicioS.jsp");
                } else {
                    response.sendRedirect("Registro.jsp");
                }
                break;

            case "Eliminar":
                Consultas usua = new Consultas();
                int id = Integer.parseInt(request.getParameter("idUsuario"));
                try {
                    usua.eliminar(id);
                    System.out.println("Registro eliminado");
                    RequestDispatcher requestDispacher = request.getRequestDispatcher("vistas/Usuario/Administrador.jsp");
                    requestDispacher.forward(request, response);
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                break;
            case "iniciar":

                String iniUsuario = request.getParameter("idenUsuario");
                String iniClave = request.getParameter("claveUsuario");

                Consultas ingreso = new Consultas();
                if (ingreso.autenticacion(iniUsuario, iniClave)) {
                    response.sendRedirect("vistas/Usuario/Administrador.jsp");
                } else {
                    response.sendRedirect("vistas/Usuario/inicioS.jsp");
                }
                break;

            case "verificar":
                String User= (request.getParameter("idenUsuario"));
                String Clave = request.getParameter("claveUsuario");

                Consultas usuarioDAO = new Consultas();

                try {

                    usuario Usuario = usuarioDAO.verificar(User,Clave);

                    if (Usuario != null) {
                        String roll = Usuario.getTipoUsuario();

                        if (roll.equals("Administrador")) {
                            /*RequestDispatcher requestDispacher = request.getRequestDispatcher("vistas/Usuario/Administrador.jsp");
                            requestDispacher.forward(request, response);*/
                            response.sendRedirect("vistas/Usuario/Administrador.jsp");


                        } else if (roll.equals("Asistente Inventario")) {
                            /*RequestDispatcher requestDispacher = request.getRequestDispatcher("vistas/Usuario/AreaProduccion.jsp");
                            requestDispacher.forward(request, response);*/
                            response.sendRedirect("vistas/Usuario/AreaProduccion.jsp");


                        } else if (roll.equals("Asistente Ventas")) {
                            RequestDispatcher requestDispacher = request.getRequestDispatcher("vistas/Usuario/AreaVentas.jsp");
                            requestDispacher.forward(request, response);

                        }

                        else if (roll.equals("Asistente Compras")) {
                            RequestDispatcher requestDispacher = request.getRequestDispatcher("vistas/Usuario/AreaCompras.jsp");
                            requestDispacher.forward(request, response);

                        }
                         else if (roll.equals("Cajero")) {
                            RequestDispatcher requestDispacher = request.getRequestDispatcher("vistas/Usuario/AreaVentas.jsp");
                            requestDispacher.forward(request, response);


                         }else if (roll.equals("Jefe de produccion")) {
                            RequestDispatcher requestDispacher = request.getRequestDispatcher("vistas/Usuario/AreaProduccion.jsp");
                            requestDispacher.forward(request, response);


                        }

                    } else {

                        //RequestDispatcher requestDispacher = request.getRequestDispatcher("vistas/Usuario/inicioS.jsp?Error");
                        //requestDispacher.forward(request, response);
                        response.sendRedirect("vistas/Usuario/inicioS.jsp?Error");

                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }


        }
    }

}
