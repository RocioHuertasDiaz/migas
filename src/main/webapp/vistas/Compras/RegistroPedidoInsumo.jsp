<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Collection" %>
<%@ page import="com.migas.Model.Dao.ConsultaInsumo" %>
<%@ page import="com.migas.Model.Beans.Insumo" %>
<%@ page import="com.migas.Model.Dao.ConsultasProveedor" %>
<%@ page import="com.migas.Model.Beans.Proveedor" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="com.migas.Model.Dao.ConsultaPedidoInsumo" %>
<%java.text.DateFormat fecha = new SimpleDateFormat("yyyy-MM-dd");%>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>
<html>

<div class="menu">
    <h3 class="tituloRoll"> ANALISTA DE COMPRAS <br></h3>
    <nav>

        <li><a href="../Usuario/InicioSesion.jsp">INICIO</a></li>
        <li><a href="../Compras/AreaCompras.jsp">COMPRAS</a></li>
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">MATERIA PRIMA E INSUMOS </a></li>
        <ul>
            <li class="nav-item"><a href="../Compras/listaInsumo.jsp">Inventario de Insumos</a></li>
            <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro Insumo</a></li>
            <li class="nav-item"><a href="../Compras/RegistroPedidoInsumo.jsp">Registro pedido</a></li>
            <li class="nav-item"><a href="../Compras/listaPedidoInsumo.jsp">Listado de pedidos</a></li>
            <li class="nav-item"><a href="">Registro devoluciones a proveedor</a></li>
        </ul>
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">PROVEEDORES</a></li>
        <ul>
            <li class="nav-item"><a href="../Compras/listaProveedor.jsp">Lista Proveedores</a></li>
            <li class="nav-item"><a href="../Compras/RegistroProveedor.jsp">Registro proveedores</a></li>
        </ul>
    </nav>
</div>

<div class="contenido">

    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
        </div>
        <div class="col-12 grid-margin stretch-card">
        </div>
        <div class="col-md-12 grid-margin stretch-card">

            <div class="col-xl-12 grid-margin">
                <div class="card">
                    <form class="card-body">
                        <h4 class="card-title">Registro de Pedido</h4>
                        <div class="col-sm-9">
                            <input type="number" class="hidden" name="idPedidoidInsumo"/>
                        </div>
                        <form class="form-sample">
                            <p class="card-description"></p>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">

                                        <label class="col-sm-3 col-form-label" for="fechaPedido">Fecha de Pedido</label>
                                        <div class="col-sm-9">
                                            <input type="date" class="form-control" name="fechaPedido"
                                                   id="fechaPedido"
                                                   value="<%= fecha.format(new java.util.Date())%>"
                                                   required/>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label" for="fechaEntrega">Fecha de
                                            Entrega:</label>
                                        <div class="col-sm-9">
                                            <input type="date" class="form-control" name="fechaPedido"
                                                   id="fechaEntrega"
                                                   value="<%= fecha.format(new java.util.Date())%>"
                                                   required/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Cantidad (kg):</label>
                                        <div class="col-sm-9">
                                            <input
                                                    class="form-control"
                                                    type="number"
                                                    name="cantidadInsumo"
                                                    placeholder="123456789"
                                                    pattern="{1,50000000}" required/>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Proveedor:</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" name="NITProveedor">
                                                <option>Seleccione...</option>
                                                <%
                                                    ConsultasProveedor consultaProveedor = new ConsultasProveedor();
                                                    for (Proveedor proveedor : consultaProveedor.listar()) {
                                                %>
                                                <option value="<%=proveedor.getNitProveedor()%>"><%=proveedor.getRazonSocialProveedor()%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Insumo:</label>
                                        <div class="col-sm-9">
                                            <select name="idInsumo" class="form-control p_input">
                                                <option>Seleccione...</option>
                                                <%
                                                    ConsultaInsumo consulta = new ConsultaInsumo();
                                                    for (Insumo insumo : consulta.listar()) {
                                                %>
                                                <option value="<%=insumo.getIdInsumo()%>"><%=insumo.getNombreInsumo()%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <div class="col-sm-9">
                                            <label class="col-sm-3 col-form-label"></label>
                                            <div class="col-sm-4">
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <button type="submit"
                                                                class="btn btn-inverse-success btn-block enter-btn">
                                                            Registrar
                                                        </button>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <button class="btn btn-inverse-secondary btn-block enter-btn">
                                                            Cancelar
                                                        </button>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <BR>
                        <div class="card">
                            <form class="card-body">
                                <h4 class="card-title">Detalle de Pedido</h4>
                                <div class="row">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>Nombre Insumo</th>
                                            <th>Cantidad</th>
                                            <th>Fecha Vencimiento</th>
                                            <th>Lote Insumo</th>
                                            <th>Precio Unitario</th>
                                            <th></th>
                                        </tr>
                                        </thead>
                                        <%
                                            ConsultaInsumo dao = new ConsultaInsumo();
                                            List<Insumo> list = dao.listar();
                                            Iterator<Insumo> iter = list.iterator();
                                            Insumo insumo = null;
                                            while (iter.hasNext()) {
                                                insumo = iter.next();
                                        %>
                                        <tr>
                                            <td><%=insumo.getNombreInsumo()%>
                                            </td>
                                            <td><%=insumo.getCantidadInsumo()%>
                                            </td>
                                            <td><%=insumo.getFechaVencimiento()%>
                                            </td>
                                            <td><%=insumo.getLoteInsumo()%>
                                            </td>
                                            <td><%=insumo.getPrecioUnitario()%>
                                            </td>
                                            <td>
                                                <a href="http://localhost:8080/migas_war_exploded/Insumo?opcion=ObtenerId&idInsumo=<%=insumo.getIdInsumo()%>">
                                                    <i class="far fa-edit" style="color: darkolivegreen;"></i></a>
                                            </td>
                                        </tr>
                                        <%}%>
                                    </table>
                                </div>
                            </form>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>