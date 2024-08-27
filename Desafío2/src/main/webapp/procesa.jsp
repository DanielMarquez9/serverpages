<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cl.desafiolatam.model.Habitacion" %>
<%@ page import="cl.desafiolatam.business.HabitacionBusiness" %>

<html>
<head>
    <title>Desafío 2</title>
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
    <header>
        <%@ include file="assets/html/header.jsp" %>
    </header>
    <main>
        <%
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String email = request.getParameter("email");
            String medioPago = request.getParameter("medio_pago");
            int dias = Integer.parseInt(request.getParameter("dias"));
            String fechaEntrada = request.getParameter("fecha_entrada");
            int idHabitacion = Integer.parseInt(request.getParameter("idhabitacion"));

            HabitacionBusiness habitacionBusiness = new HabitacionBusiness();
            Habitacion habitacion = habitacionBusiness.getHabitacionById(idHabitacion);

            if (habitacion != null) {
                int precioTotal = habitacion.getPrecio() * dias;
                %>
                <h2>Resumen de la compra</h2>
                <p>Nombre: <%= nombre %></p>
                <p>Apellido: <%= apellido %></p>
                <p>Email: <%= email %></p>
                <p>Medio de pago: <%= medioPago %></p>
                <p>Días: <%= dias %></p>
                <p>Fecha de entrada: <%= fechaEntrada %></p>
                <p>Habitación: <%= habitacion.getNombre() %></p>
                <p>Precio total: <%= precioTotal %></p>
                <%
            } else {
                %>
                <h2>Error</h2>
                <p>No se encontró la habitación seleccionada</p>
                <%
            }
        %>
    </main>
    <footer>
        <%@ include file="assets/html/footer.jsp" %>
    </footer>
</body>
</html>