<%-- 
    Document   : Resultado.jsp
    Created on : 13-04-2024, 21:05:27
    Author     : angem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado del Calculo</title>
    </head>
    <body>
        <h1>Resultado del Calculo de interes simple</h1>
        <p>Capital= $${capital}CLP</p>
        <p>Tasa de Interes Anual= ${interestAnual}%</p>
        <p>A numero de Años= ${years}</p>
        <p>Interes Simple Generado= $${interesSimple}CLP</p>
        <form action="index.jsp" method="get">
            <button type="submit">Volver a calcular</button>
        </form>
    </body>
</html>
