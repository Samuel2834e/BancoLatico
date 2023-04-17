<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    </head>
    <body>
        <h1>Dados para conexao</h1>
        <form action="cadastro.jsp">
            <!<!-- codigo --> <input type="number" name="codigo" style="display: none;" >
            Nome <input type="text" name="nome"><br><br>
            Saldo <input type="number" name="saldo"><br><br>
            CPF <input type="text" name="cpf" min="11" max="11"><br><br>
            <input type="submit" value="Conectar"/>   <br>

        </form>
    </body>
</html>

