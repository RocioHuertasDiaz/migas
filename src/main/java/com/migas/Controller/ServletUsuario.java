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
                acceso = "";
                int id=Integer.parseInt(request.getParameter("idUsuario"));
                System.out.println("Editar id: "+id);
                ConsultaUsuario DAO = new ConsultaUsuario();
                usuario Usuario = new usuario();
                try {
                    Usuario = DAO.obtenerUsuario(id);
                    System.out.println(Usuario);
                    request.setAttribute("usuario", Usuario);
                    RequestDispatcher requestDispacher = request.getRequestDispatcher("vistas/Usuario/EditarUsuario.jsp");
                    requestDispacher.forward(request, response);

                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
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
                if (co.registrar(usuario, nombre, apellido, clave, tipo,estado)) {
                    response.sendRedirect("vistas/Usuario/Administrador.jsp");
                } else {
                    response.sendRedirect("vistas/Usuario/RegistroUsuario.jsp");
                }
                break;


            case "actualizar":
                PrintWriter act = response.getWriter();

                usuario= request.getParameter("usuario");
                nombre = request.getParameter("nombre");
                apellido = request.getParameter("apellido");
                clave = request.getParameter("Clave");
                tipo = request.getParameter("tipoUsuario");
                estado = request.getParameter("estadoUsuario");

                ConsultaUsuario Usu = new ConsultaUsuario();

                if (Usu.actualizar(usuario,nombre,apellido,clave,tipo,estado)) {
                    response.sendRedirect("vistas/Usuario/Administrador.jsp");
                } else {
                    response.sendRedirect("vistas/Usuario/EditarUsuario.jsp");
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
                String User= (request.getParameter("idenUsuario"));
                String Clave = request.getParameter("claveUsuario");
                ConsultaUsuario usuarioDAO = new ConsultaUsuario();
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
                        response.sendRedirect("vistas/Usuario/inicioS.jsp?Erro  r");
                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }


        }
    }

}
