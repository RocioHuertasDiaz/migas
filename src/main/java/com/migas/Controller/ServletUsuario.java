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

                String acceso = "";
                PrintWriter out = response.getWriter();
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "vista/usuario/Administrador.jsp";
                } else {
                    response.sendRedirect("vistas/usuario/InicioS.jsp");
                }
                break;

            case "obtenerId":
                PrintWriter Obt = response.getWriter();
                action = request.getParameter("opcion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "vista/usuario/Editar.jsp";
                } else {
                    response.sendRedirect("vistas/usuario/InicioS.jsp");
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
                int idEd = Integer.parseInt(request.getParameter("id"));
                usuario = request.getParameter("usuario");
                nombre = request.getParameter("nombre");
                apellido = request.getParameter("apellido");
                tipo = request.getParameter("tipoUsuario");
                clave = request.getParameter("Clave");

                Consultas Edi = new Consultas();
                if (Edi.actualizar(usuario, nombre, apellido, tipo, clave)) {
                    response.sendRedirect("vistas/Usuario/Administrador.jsp");
                } else {
                    response.sendRedirect("vistas/Usuario/Registro.jsp");
                }
                break;

            case "Eliminar":
                Consultas usua = new Consultas();
                int id=Integer.parseInt(request.getParameter("idUsuario"));
                try {
                    usua.eliminar(id);
                    System.out.println("Registro eliminado");
                    RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                    requestDispacher.forward(request, response);
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                break;

            }
    }
}

