package com.migas.Controller;

import com.migas.Model.Dao.ConsultaProducto;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

@WebServlet(name = "ServletProducto", value = "/ServletProducto")
public class ServletProducto extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "listar":

                String acceso = "";
                PrintWriter out = response.getWriter();
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "ListaProducto.jsp";
                } else {
                    response.sendRedirect("RegistroProducto.jsp");
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

                int id = Integer.parseInt(request.getParameter("idProducto"));
                String Nombre = request.getParameter("nombreProducto");
                int Cantidad = Integer.parseInt(request.getParameter("cantidadProducto"));
                Date FechaElab = Date.valueOf(request.getParameter("fechaElaboracion"));
                Date FechaVenc = Date.valueOf(request.getParameter("fechaVencimiento"));
                String lote = request.getParameter("loteProducto");
                Double precio = Double.valueOf(request.getParameter("precioUnitario"));


                ConsultaProducto prod = new ConsultaProducto();

                if (prod.registraP(id, Nombre, Cantidad, FechaElab, FechaVenc, lote, precio)) {
                    response.sendRedirect("vistas/Producto/listaProducto.jsp");
                } else {
                    response.sendRedirect("RegistroProducto.jsp");
                }
                break;
        }

    }


}
