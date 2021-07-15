package com.migas.Controller;

import com.migas.Model.Beans.Producto;
import com.migas.Model.Dao.ConsultaProducto;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;

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

                ConsultaProducto DAO = new ConsultaProducto();
                Producto producto = new Producto();

                producto.setIdProducto(Integer.parseInt(request.getParameter("idProducto")));
                producto.setNombreProducto(request.getParameter("nombreProducto"));
                producto.setIdProducto(Integer.parseInt(request.getParameter("cantidadProducto")));
                producto.setFechaElaboracion(Date.valueOf(request.getParameter("fechaElaboracion")));
                producto.setFechaVencimiento(Date.valueOf(request.getParameter("fechaVencimiento")));
                producto.setLoteProducto(request.getParameter("loteProducto"));
                producto.setPrecioUnitario(Double.parseDouble(request.getParameter("precioUnitario")));



                ConsultaProducto prod = new ConsultaProducto();

                try {
                    if (prod.registraP(producto)) {
                        response.sendRedirect("vistas/Producto/listaProducto.jsp");
                    } else {
                        response.sendRedirect("RegistroProducto.jsp");
                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
        }

    }


}
