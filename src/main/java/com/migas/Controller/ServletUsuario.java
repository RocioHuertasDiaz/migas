package com.migas.Controller;

import com.migas.Model.Beans.usuario;
import com.migas.Model.Dao.Consultas;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletUsuario", value = "/ServletUsuario")

public class ServletUsuario extends HttpServlet {
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {
            case "listar":
                PrintWriter out = response.getWriter();
                String acceso = "";
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "vista/usuario/Administrador.jsp";
                } else {
                    response.sendRedirect("vistas/usuario/InicioS.jsp");
                }
                break;

            case "obtenerId":
                int id = Integer.parseInt(request.getParameter("idUsuario"));
                System.out.println("Editar id: " + id);
                Consultas Usu = new Consultas();
                usuario usuario = new usuario();
                try {
                    usuario = Usu.obtenerId(id);
                    System.out.println(usuario);
                    request.setAttribute("usuario", usuario);
                    RequestDispatcher requestDispacher = request.getRequestDispatcher("vistas/usuario/Editar.jsp");
                    requestDispacher.forward(request, response);

                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
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

                String usuario = request.getParameter("usuario");
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String tipo = request.getParameter("tipoUsuario");
                String clave = request.getParameter("Clave");

                Consultas co = new Consultas();
                if (co.registrar(usuario, nombre, apellido, tipo, clave)) {
                    response.sendRedirect("vistas/Usuario/inicioS.jsp");
                } else {
                    response.sendRedirect("Registro.jsp");
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
            case "editar":

                PrintWriter oute = response.getWriter();

                String usuarioE = request.getParameter("usuario");
                String nombreE = request.getParameter("nombre");
                String apellidoE = request.getParameter("apellido");
                String tipoE = request.getParameter("tipoUsuario");
                String claveE = request.getParameter("Clave");

                Consultas cos = new Consultas();
                if (cos.actualizar(usuarioE, nombreE, apellidoE, tipoE, claveE)) {
                    response.sendRedirect("vistas/Usuario/Administrador.jsp");
                } else {
                    response.sendRedirect("Registro.jsp");
                }
                break;

        }


    }


}

