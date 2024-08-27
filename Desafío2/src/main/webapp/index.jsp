<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <form method="post" action="procesa.jsp">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre"><br><br>
            <label for="apellido">Apellido:</label>
            <input type="text" id="apellido" name="apellido"><br><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email"><br><br>
            <label for="medio_pago">Medio de pago:</label>
            <select id="medio_pago" name="medio_pago">
                <option value="Contado">Contado</option>
                <option value="Tarjeta de crédito">Tarjeta de crédito</option>
                <option value="Transferencia bancaria">Transferencia bancaria</option>
            </select><br><br>
            <label for="dias">Días:</label>
            <select id="dias" name="dias">
                <option value="1">1 día</option>
                <option value="2">2 días</option>
                <option value="3">3 días</option>
                <option value="4">4 días</option>
                <option value="5">5 días</option>
            </select><br><br>
            <label for="fecha_entrada">Fecha de entrada:</label>
            <input type="date" id="fecha_entrada" name="fecha_entrada"><br><br>
            <input type="radio" name="idhabitacion" value="1"> Habitación 1<br>
            <input type="radio" name="idhabit
            <input type="radio" name="idhabitacion" value="1"> Habitación 1<br>
            <input type="radio" name="idhabitacion" value="2"> Habitación 2<br>
            <input type="radio" name="idhabitacion" value="3"> Habitación 3<br>
            <button type="submit">Enviar Solicitud de Compra</button>
        </form>
    </main>
    <footer>
        <%@ include file="assets/html/footer.jsp" %>
    </footer>
</body>
</html>