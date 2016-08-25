<%@ page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; UTF-8">
    </head>
    <body>
        <c:import url="cabecalho.jsp" />

        <jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />

        <table>
            <tr>
                <td>Nome</td>
                <td>Email</td>
                <td>Endereço</td>
                <td>Data de nascimento</td>
            </tr>

            <c:forEach var="contato" items="${dao.lista}" varStatus="id">
                <tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff'}">
                    <td>${contato.nome}</td>
                    <td>
                        <c:choose>
                            <c:when test="${not empty contato.email}">
                                <a href="mailto:${contato.email}">${contato.email}</a>
                            </c:when>
                            <c:otherwise>
                                E-mail não informado
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>${contato.endereco}</td>
                    <td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
                    <td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a></td>
                </tr>
            </c:forEach>
        </table>

        <c:import url="rodape.jsp" />
    </body>
</html>