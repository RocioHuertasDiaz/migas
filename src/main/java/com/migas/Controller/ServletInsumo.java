package com.migas.Controller;

import com.migas.Model.Beans.Insumo;
import com.migas.Model.Dao.ConsultaInsumo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "ServletInsumo", value = "/Insumo")
public class ServletInsumo extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "listar":

                String acceso = "";
                PrintWriter out = response.getWriter();
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "vistas/Insumo/listaInsumo";
                } else {
                    response.sendRedirect("vistas/Insumo/RegistroInsumo.jsp");
                }
                break;

            case "ObtenerId":
                Insumo insumo = null;

                int idInsumo = Integer.parseInt(request.getParameter("idInsumo"));
                try {
                    insumo = ConsultaInsumo.obtenerId(idInsumo);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                request.setAttribute("insumo", insumo);
                RequestDispatcher dispatcher = request.getRequestDispatcher("vistas/Compras/EdicionInsumo.jsp");
                dispatcher.forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "guardar":
                PrintWriter out = response.getWriter();


                Insumo insumo = new Insumo();
                ConsultaInsumo DAO = new ConsultaInsumo();
                insumo.setIdInsumo(Integer.parseInt(request.getParameter("idInsumo")));
                insumo.setNombreInsumo(request.getParameter("nombreInsumo"));
                insumo.setCantidadInsumo(Integer.parseInt(request.getParameter("cantidadInsumo")));
                insumo.setProveedor(request.getParameter("Proveedor"));
                insumo.setFechaIngreso(Date.valueOf(request.getParameter("fechaIngreso")));
                insumo.setFechaVencimiento(Date.valueOf(request.getParameter("fechaVencimiento")));
                insumo.setLoteInsumo(request.getParameter("loteInsumo"));
                insumo.setPrecioUnitario(Double.parseDouble(request.getParameter("precioUnitario")));
                insumo.setDocumentoProveedor(request.getParameter("documentoProveedor"));


                ConsultaInsumo consultaInsumo = new ConsultaInsumo();
                try {
                    if (consultaInsumo.registrar(insumo)) {
                        response.sendRedirect("vistas/Compras/listaInsumo.jsp");
                    } else {
                        request.setAttribute("mensajeError", "Datos errados");
                        response.sendRedirect("vistas/Compras/RegistroInsumo.jsp");
                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;


            case "editar":

                insumo = new Insumo();
                ConsultaInsumo consulta = new ConsultaInsumo();

                insumo.setIdInsumo(Integer.parseInt(request.getParameter("idInsumo")));
                insumo.setNombreInsumo(request.getParameter("nombreInsumo"));
                insumo.setCantidadInsumo(Integer.parseInt(request.getParameter("cantidadInsumo")));
                insumo.setProveedor(request.getParameter("Proveedor"));
                insumo.setFechaIngreso(Date.valueOf(request.getParameter("fechaIngreso")));
                insumo.setFechaVencimiento(Date.valueOf(request.getParameter("fechaVencimiento")));
                insumo.setLoteInsumo(request.getParameter("loteInsumo"));
                insumo.setPrecioUnitario(Double.parseDouble(request.getParameter("precioUnitario")));
                insumo.setDocumentoProveedor(request.getParameter("documentoProveedor"));

                try {

                    if (consulta.editar(insumo)) {
                        response.sendRedirect("vistas/Compras/listaInsumo.jsp");
                    } else {
                        response.sendRedirect("vistas/Compras/EdicionInsumo.jsp");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;

            /*case "consultaInsumo":
                try {
                    ConsultaInsumo Consulta = new ConsultaInsumo();
                    int idInsumo = 0;
                    insumo = Consulta.ConsultarInsumo(idInsumo);

                    if (insumo != null) {
                        request.setAttribute("Datos consultados", insumo);
                    } else {
                        request.setAttribute("mensajeError", "El insumo No existe");
                        request.getRequestDispatcher("vistas/Compras/InsumoConsulta.jsp").forward(request, response);
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;*/
                }

        }
    }
