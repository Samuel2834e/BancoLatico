<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Banco Latico</title>
        <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/specimen/Kumbh+Sans -->
        <link rel="stylesheet" href="fontawesome/css/all.min.css">  <!-- https://fontawesome.com/-->  
        <link rel="stylesheet" href="css/magnific-popup.css">       <!-- https://dimsemenov.com/plugins/magnific-popup/ -->
        <link rel="stylesheet" href="css/bootstrap.min.css">        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="slick/slick.min.css">          <!-- https://kenwheeler.github.io/slick/ -->
        <link rel="stylesheet" href="slick/slick-theme.css">
        <link rel="stylesheet" href="css/templatemo-upright.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

      
    </head>

    <body>    
        <c:set var="url" value= "jdbc:mysql://localhost:3306/banco?zeroDateTimeBehavior=CONVERT_TO_NULL" /> 
        <sql:setDataSource driver="com.mysql.jdbc.Driver" var= "conexao"  url= "${url}" user= "root"  password= "" />
        <div style="display: flex; align-items: center; background-color: #1b3666; padding: 25px;">
            <h1 style="color: white; margin: 0;">Editor de Saldo</h1>
            <img src="img/dinheiro.png" alt="alt" style="width: 80px; margin-left: 67%;">
        </div>
        <sql:query dataSource="${conexao}" var="resultDono" > 
            SELECT * FROM cliente 
        </sql:query>  

        <br>
        <c:forEach var="cliente" items="${resultDono.rows}">
            <div style="display: flex; justify-content: space-between; ">
                <div class="card text-bg mb-3" style="max-width: 18rem; background-color: #1b3666;" >
                    <div class="card-header" style="color: white;">Cliente: <c:out value="${cliente.Nome}" /></div>
                    <div class="card-body">
                        <form action="alterarSaldo.jsp">
                            <input type="hidden" name="nome" value="<c:out value="${cliente.Nome}"/>"/>
                            <div style="display: flex; justify-content: space-between; align-items: center; ">
                                <div style="flex-grow: 1;">
                                    <input type="text" name="saldo" id="saldo" value="<c:out value="${cliente.saldo}"/>" class="form-control" />
                                </div>
                                <input type="submit" value="Editar" class="btn btn-primary" style="margin-left: 10px;" />

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach><br><br>
        <button type="button" class="btn btn-success" onclick="redirecionar()" style="background-color: #1b3666;">Voltar</button>
        <script>
            function redirecionar() {
                window.location.href = "index.jsp";
            }
        </script>







        <script src="js/jquery-3.4.1.min.js"></script>          <!-- https://jquery.com/ -->
        <script src="js/jquery.singlePageNav.min.js"></script>  <!-- https://github.com/ChrisWojcik/single-page-nav -->
        <script src="js/parallax/parallax.min.js"></script>     <!-- https://pixelcog.github.io/parallax.js/ -->
        <script src="js/imagesloaded.pkgd.min.js"></script>     <!-- https://imagesloaded.desandro.com/ -->
        <script src="js/isotope.pkgd.min.js"></script>          <!-- https://isotope.metafizzy.co/ -->
        <script src="js/jquery.magnific-popup.min.js"></script> <!-- https://dimsemenov.com/plugins/magnific-popup/ -->
        <script src="slick/slick.min.js"></script>              <!-- https://kenwheeler.github.io/slick/ -->
        <script src="js/templatemo-script.js"></script>
    </body>
</html> 