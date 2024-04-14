<%-- 
    Document   : index
    Created on : 13-04-2024, 18:42:19
    Author     : angem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
    </head>
    <body>
        <h1>Calcular interes simple anual</h1>
        <form action="Calculadora" method="post" >
            <table>
                <tr>
                    <td><label for="capital">Capital (CLP):</label></td>
                    <td><input type="number" name="capital" required min="0"></td>
                </tr>
                <tr>
                    <td><label for="interestRate">Tasa de Interés Anual (%):</label></td>
                    <td><input type="number" name="interestAnual" required min="0"></td>
                </tr>
                <tr>
                    <td><label for="years">Número de Años:</label></td>
                    <td><input type="number" name="years" required min="0"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Calcular"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
