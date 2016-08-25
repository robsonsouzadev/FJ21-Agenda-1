<%@ page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Contato - ${contato.nome}</title>
        <link href="css/jquery.css" rel="stylesheet">
        <script src="js/jquery.js"></script>
        <script src="js/jquery-ui.js"></script>
    </head>
    <body>
       <c:import url="cabecalho.jsp" />

       <h1>Contato - ${contato.nome}</h1>
        <hr />

        <form action="mvc?logica=AlteraContatoLogic" method="post">
            <input type="hidden" name="id" value="${contato.id}" />
            Nome: <input type="text" name="nome" value="${contato.nome}"/><br />
            Email: <input type="text" name="email" value="${contato.email}"/><br />
            EndereÃ§o: <input type="text" name="endereco" value="${contato.endereco}"/><br />
            Data de Nascimento: <caelum:campoData id="dataNascimento" value="${contato.dataNascimento.time}"/><br />

            <input type="submit" value="Alterar" />
        </form>

        <c:import url="rodape.jsp" />
    </body>
</html>