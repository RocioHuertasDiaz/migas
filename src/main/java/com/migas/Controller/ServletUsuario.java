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
import java.util.ArrayList;

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

            /*case "obtenerId":

                acceso = "";
                PrintWriter su = response.getWriter();
                action = request.getParameter("accion");
                if (action.equalsIgnoreCase("Editar")) {
                    acceso = "vistas/Usuario/Editar.jsp";
                } else {
                    response.sendRedirect("vistas/Usuario/Administrador.jsp");
                }
                break;

            /*case "obtenerId":
                request.setAttribute("id_Usuario", request.getParameter("id_Usuario"));
                acceso = "vistas/Usuario/Editar.jsp";
                break;*/


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

               /* case "editar":
                int id=Integer.parseInt(request.getParameter("idUsuario"));
                System.out.println("Editar id: "+id);
                Consultas usuarioD = new Consultas();
                usuario u = new usuario();
                try {
                u = usuarioD.obtenerId(id);
                System.out.println(u);
                request.setAttribute("usuario", u);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/Usuario/Editar.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();

                }*/

            case "editar":

                Consultas Usu = new Consultas();
                usuario= request.getParameter("usuario");
                nombre = request.getParameter("nombre");
                apellido = request.getParameter("apellido");
                clave = request.getParameter("Clave");
                tipo = request.getParameter("tipoUsuario");

                if (Usu.actualizar(usuario,nombre,apellido,clave,tipo)) {
                    response.sendRedirect("Registro.jsp");
                } else {
                    response.sendRedirect("inicioS");
                }
                break;

            case "Eliminar":
                Consultas usua = new Consultas();
                int idl = Integer.parseInt(request.getParameter("idUsuario"));
                try {
                    usua.eliminar(idl);
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

                            response.sendRedirect("vistas/Usuario/Administrador.jsp");

                        } else if (roll.equals("Asistente Inventario")) {
                            response.sendRedirect("vistas/Usuario/AreaProduccion.jsp");

                        } else if (roll.equals("Asistente Ventas")) {
                            response.sendRedirect("vistas/Venta/AsistenteVentas.jsp");
                        }
                        else if (roll.equals("Asistente Compras")) {
                            response.sendRedirect("vistas/Usuario/AreaCompras.jsp");
                        }
                         else if (roll.equals("Cajero")) {
                            response.sendRedirect("vistas/Venta/Cajero.jsp");

                         }else if (roll.equals("Jefe de produccion")) {
                            response.sendRedirect("vistas/Usuario/AreaProduccion.jsp");
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
