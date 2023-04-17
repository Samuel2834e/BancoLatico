<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
    <head>
        <title> Lista estrutura de tabelas </title>
    </head>
    <body>
        <c:set var="url" value= "jdbc:mysql://localhost:3306/banco?zeroDateTimeBehavior=CONVERT_TO_NULL" /> 
        <c:set var="codigo" value="${param.codigo}"/>
        <c:set var="nome" value="${param.nome}"/>
        <c:set var="senha" value="${param.senha}"/>


        <sql:setDataSource driver="com.mysql.jdbc.Driver" var= "conexao"  url= "${url}" user= "root"  password= "" />

        <sql:query dataSource="${conexao}" var="resultC" > 
            SELECT * FROM cliente WHERE Nome = '${nome}' AND Senha = '${senha}'
        </sql:query>

        <sql:query dataSource="${conexao}" var="resultDono" > 
            SELECT tipo FROM cliente WHERE Nome = '${nome}'
        </sql:query>    

        <sql:query dataSource="${conexao}" var="resultSaldo" > 
            SELECT Saldo FROM cliente WHERE Nome = '${nome}'
        </sql:query>


        <c:choose>
            <c:when test="${resultDono.rows[0].tipo eq 'd'}">
                <c:redirect url="banco.jsp" />
            </c:when>
            <c:when test="${not empty resultC.rows}">

                <c:set var="nomeSaldo" value="${nome}" scope="session" />


                <c:redirect url="home.jsp" />

            </c:when>    
            <c:otherwise>
                <c:set var="mensagem" value="Esse usuário não existe" scope="session" />
                <c:redirect url="index.jsp" />
            </c:otherwise>
        </c:choose> 




    </body>
</html>
