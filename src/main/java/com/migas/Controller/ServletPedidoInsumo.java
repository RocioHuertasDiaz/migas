package com.migas.Controller;

import com.migas.Model.Beans.pedidoInsumo;
import com.migas.Model.Dao.ConsultaPedidoInsumo;
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

@WebServlet(name = "ServletPedidoInsumo", value = "/PedidoInsumo")
public class ServletPedidoInsumo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "listar":

                String acceso = "";
                PrintWriter out = response.getWriter();
                String action = request.getParameter("accion");
                if (action.equalsIgnoreCase("listar")) {
                    acceso = "vistas/Compras/listaPedidoInsumo.jsp";
                } else {
                    response.sendRedirect("vistas/Compras/RegistroPedidoInsumo.jsp");
                }
                break;



            case "ObtenerId":
                pedidoInsumo pedidoinsumo = null;
                int idPedido = Integer.parseInt(request.getParameter("idPedidoInsumo"));
                try {
                    pedidoinsumo = ConsultaPedidoInsumo.obtenerId(idPedido);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                request.setAttribute("pedidoInsumo", pedidoinsumo);
                RequestDispatcher dispatcher = request.getRequestDispatcher("vistas/Compras/EdicionPedidoInsumo.jsp");
                dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        switch (opcion) {

            case "guardar":
                PrintWriter out = response.getWriter();

                ConsultaPedidoInsumo DAO = new ConsultaPedidoInsumo();
                pedidoInsumo pedido = new pedidoInsumo();

                pedido.setFechapedido(Date.valueOf(request.getParameter("fechaPedido")));
                pedido.setFechaEntrega(Date.valueOf(request.getParameter("fechaEntrega")));
                pedido.setCantidadInsumo(Integer.parseInt(request.getParameter("cantidadInsumo")));
                pedido.setProveedor(request.getParameter("NITProveedor"));
                pedido.setInsumo(request.getParameter("idInsumo"));


                ConsultaPedidoInsumo consultapedido = new ConsultaPedidoInsumo();
                try {
                    if (consultapedido.registrar(pedido)) {
                        response.sendRedirect("vistas/Compras/listaPedidoInsumo.jsp");
                    } else {
                        response.sendRedirect("vistas/Compras/RegistroPedidoInsumo.jsp");
                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;


            case "editar":

                pedido = new pedidoInsumo();
                ConsultaPedidoInsumo consulta = new ConsultaPedidoInsumo();

                pedido.setIdPedidoInsumo(Integer.parseInt(request.getParameter("idPedidoInsumo")));
                pedido.setFechapedido(Date.valueOf(request.getParameter("fechaPedido")));
                pedido.setFechaEntrega(Date.valueOf(request.getParameter("fechaEntrega")));
                pedido.setCantidadInsumo(Integer.parseInt(request.getParameter("cantidadInsumo")));
                pedido.setInsumo(request.getParameter("idInsumo"));
                pedido.setProveedor(request.getParameter("NITproveedor"));

                try {
                    if (consulta.editar(pedido)) {
                        response.sendRedirect("vistas/Compras/listaPedidoInsumo.jsp");
                    } else {
                        response.sendRedirect("vistas/Compras/EdicionPedidoInsumo.jsp");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }

    }
}
