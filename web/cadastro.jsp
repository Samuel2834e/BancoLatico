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
        <c:set var="cpf" value="${param.cpf}"/>
        <c:set var="tel" value="${param.tel}"/>


        <sql:setDataSource driver="com.mysql.jdbc.Driver" var= "conexao"  url= "${url}" user= "root"  password= "" />

        <sql:query dataSource="${conexao}" var="resultC" > 
            SELECT * FROM cliente LIMIT 100;
        </sql:query>

        <c:choose>
            <c:when test="${not empty resultC.rows}">
                <sql:query var="resultLinhas" dataSource="${conexao}">
                    SELECT COUNT(*) AS numLinhas FROM cliente;
                </sql:query>

                <c:set var="numLinhas" value="${resultLinhas.rows[0].numLinhas}" />

                
                <c:set var="codigoNovo" value="${param.codigo}+ ${numLinhas}" />
            </c:when>    
            <c:otherwise>
                <c:set var="codigoNovo" value="${param.codigo}" />
            </c:otherwise>
        </c:choose> 
        <sql:update dataSource="${conexao}">
            INSERT INTO cliente (Codigo, Nome, Senha, cpf, telefone, Saldo, tipo) VALUES (${codigoNovo}, '${nome}', '${senha}', '${cpf}', '${tel}', 0, 'c')
        </sql:update>
            <c:set var="mensagem" value="Cadastro Realizado" scope="session" />
        <c:redirect url="index.jsp" />

    </body>
</html>
