<%@ page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,
                 java.text.*,
                 br.com.caelum.agenda.dao.*,
                 br.com.caelum.agenda.modelo.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; UTF-8">
    </head>
    <body>
        <table>
            <tr>
                <td>Nome</td>
                <td>Email</td>
                <td>Endereço</td>
                <td>Data de Nascimento</td>
            </tr>
            <%
                ContatoDao dao = new ContatoDao();
                List<Contato> contatos = dao.getLista();

                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                for (Contato contato : contatos) { %>
                <tr>
                    <td><%= contato.getNome() %></td>
                    <td><%= contato.getEmail() %></td>
                    <td><%= contato.getEndereco() %></td>
                    <td><%= sdf.format(contato.getDataNascimento().getTime()) %></td>
                </tr>
            <%
                }
            %>
        </table>
    </body>
</html>