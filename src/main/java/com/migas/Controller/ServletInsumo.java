package com.migas.Controller;

import com.migas.Model.Dao.ConsultaInsumo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

@WebServlet(name = "ServletInsumo", value = "/ServletInsumo")
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

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String opcion = request.getParameter("opcion");
            switch (opcion) {

                case "guardar":
                    PrintWriter out = response.getWriter();


                    int idin = Integer.parseInt(request.getParameter("idInsumo"));
                    String Nombre = request.getParameter("nombreInsumo");
                    int Cantidad = Integer.parseInt(request.getParameter("cantidadInsumo"));
                    String proveedor = request.getParameter("Proveedor");
                    Date Fechaingre = Date.valueOf(request.getParameter("fechaIngreso"));
                    Date FechaVenc = Date.valueOf(request.getParameter("fechaVencimiento"));
                    String lote = request.getParameter("LoteInsumo");
                    Double precio = Double.valueOf(request.getParameter("precioUnitario"));


                    ConsultaInsumo insumo = new ConsultaInsumo();
                    if(insumo.registra(idin,Nombre,Cantidad,proveedor,Fechaingre,FechaVenc,lote,precio)){
                        response.sendRedirect("vistas/Insumo/listaInsumo.jsp");
                    } else {
                        response.sendRedirect("vistas/Insumo/RegistroInsumo.jsp");
                    }
                    break;
        }

    }
}
