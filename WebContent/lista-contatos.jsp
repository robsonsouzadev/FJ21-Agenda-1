<%@ page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; UTF-8">
    </head>
    <body>
        <jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />

        <table>
            <c:forEach var="contato" items="${dao.lista}">
                <tr>
                    <td>${contato.nome}</td>
                    <td>${contato.email}</td>
                    <td>${contato.endereco}</td>
                    <td>${contato.dataNascimento.time}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>