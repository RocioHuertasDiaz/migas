package com.migas.Controller;

import com.migas.Model.Beans.pedidoProducto;
import com.migas.Model.Dao.ConsultaPedidoProducto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "ServletPedidoProducto", value = "/ServletPedidoProducto")
public class ServletPedidoProducto extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "listar":

                String acceso = "";
                PrintWriter out = response.getWriter();
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "vistas/Venta/listaPedidoProducto.jsp";
                } else {
                    response.sendRedirect("vistas/Venta/RegistroPedidoProducto.jsp");
                }
                break;

            case "ObtenerId":
                pedidoProducto pedidoP = null;
                int idPedido = Integer.parseInt(request.getParameter("idPedidoProducto"));
                try {
                    pedidoP = ConsultaPedidoProducto.obtenerId(idPedido);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                request.setAttribute("pedidoProducto", pedidoP);
                RequestDispatcher dispatcher = request.getRequestDispatcher("vistas/Venta/EdicionPedidoProducto.jsp");
                dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "guardar":
                PrintWriter out = response.getWriter();

                ConsultaPedidoProducto DAO = new ConsultaPedidoProducto();
                pedidoProducto pedido = new pedidoProducto();

                pedido.setFechaPedido(Date.valueOf(request.getParameter("fechaPedido")));
                pedido.setFechaEntrega(Date.valueOf(request.getParameter("fechaEntrega")));
                pedido.setIdProducto(Integer.parseInt(request.getParameter("idProducto")));
                pedido.setCantidadProducto(Integer.parseInt(request.getParameter("cantidadProducto")));
                pedido.setNITCliente(Integer.parseInt(request.getParameter("NITCliente")));

                ConsultaPedidoProducto consultapedido = new ConsultaPedidoProducto();
                try {
                    if (consultapedido.registrar(pedido)) {
                        response.sendRedirect("vistas/Venta/listaPedidoProducto.jsp");
                    } else {
                        response.sendRedirect("vistas/Venta/RegistroPedidoProducto.jsp");
                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;


            case "editar":

                pedido = new pedidoProducto();
                ConsultaPedidoProducto consulta = new ConsultaPedidoProducto();

                pedido.setIdPedidoProducto(Integer.parseInt(request.getParameter("idPedidoProducto")));
                pedido.setFechaPedido(Date.valueOf(request.getParameter("fechaPedido")));
                pedido.setFechaEntrega(Date.valueOf(request.getParameter("fechaEntrega")));
                pedido.setIdProducto(Integer.parseInt(request.getParameter("idProducto")));
                pedido.setCantidadProducto(Integer.parseInt(request.getParameter("cantidadProducto")));
                pedido.setNITCliente(Integer.parseInt(request.getParameter("NITCliente")));

                try {
                    if (consulta.editar(pedido)) {
                        response.sendRedirect("vistas/Venta/listaPedidoProducto.jsp");
                    } else {
                        response.sendRedirect("vistas/Venta/EdicionPedidoProducto.jsp");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }

    }
}
