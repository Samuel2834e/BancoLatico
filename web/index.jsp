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
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js"></script>
    <script src="js/jquery.singlePageNav.min.js"></script>
    <script src="js/parallax/parallax.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="slick/slick.min.js"></script>
    <script src="js/templatemo-script.js"></script>

        <style>
            /*
        
TemplateMo 555 Upright

https://templatemo.com/tm-555-upright


        Color Codes
        =============
        Primary blue: #1b3666
        Gray text: #666666
        Light gray nav button bg: #F2F2F2;

        Credit
        =========
        https://tympanus.net/Development/HoverEffectIdeas/
        
            */

            html, body {
                overflow-x: hidden;
            }
            body {
                font-family: 'Kumbh Sans', sans-serif;
            }
            div, a, p {
                color: #666666;
            }
            p, address {
                line-height: 1.8;
            }
            a {
                transition: all 0.3s ease;
            }
            a:hover {
                color: #1b3666;
                text-decoration: none;
            }

            .container-fluid {
                margin-left: 0;
            }

            .btn-primary {
                padding: 12px 50px;
                border-radius: 0;
                background: #1b3666;
                font-size: 1.2rem;
                border: 0;
            }

            .btn-primary:hover {
                background: #068ccf;
            }
            .tm-text-primary {
                color: #1b3666;
            }
            .tm-text-secondary {
                color: #009999;
            }
            hr {
                border-top: 4px solid #CCC;
            }

            .tm-hr-short {
                border-top: 1px solid #1b3666;
                width: 238px;
                margin-left: auto;
                margin-right: auto;
            }

            /* Layout */

            .tm-main {
                width: 100%;
            }

            .tm-row-home {
                padding-left: 15px;
                padding-right: 15px;
            }

            .tm-mt-100 {
                margin-top: 100px;
            }

            .tm-sidebar {
                background-color: #fff;
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                z-index: 1000;
                padding-left: 40px;
                padding-top: 40px;
                width: 280px;
            }

            .tm-section-wrap {
                width: calc(100% - 750px);
                margin-left: 750px;
                margin-right: 0;
                position: relative;
            }

            .tm-section {
                padding: 50px 70px 50px 0;
            }

            #gallery,
            #about,
            #contact {
                padding-bottom: 150px;
            }

            .tm-parallax {
                width: 400px;
                min-height: 100%;
                height: auto;
                background: transparent;
                position: absolute;
                width: 400px;
                left: -470px;
                top: 0;
            }

            /* Hide scrollbar */
            .tm-sidebar {
                overflow-y: scroll;
                scrollbar-width: none; /* Firefox */
                -ms-overflow-style: none; /* IE 10+ */
            }
            .tm-sidebar::-webkit-scrollbar {
                /* WebKit */
                width: 0;
                height: 0;
            }

            .tm-sidebar-sticky {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }

            .tm-nav {
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                height: 100%;
            }

            .navbar-toggler {
                display: none;
            }

            .tm-brand-box {
                height: 180px;
                background: #1b3666;
                color: white;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-bottom: 100px;
            }

            #tm-main-nav {
                padding: 0;
                margin: 0;
            }

            .nav-item {
                list-style: none;
                margin-top: 10px;
                margin-bottom: 10px;
            }

            .nav-link {
                position: relative;
                color: #1b3666;
                font-size: 1.4rem;
                padding-top: 15px;
                padding-bottom: 15px;
            }

            .triangle-right {
                position: absolute;
                top: 9px;
                left: -40px;
                width: 0;
                height: 0;
                border-top: 21px solid transparent;
                border-left: 20px solid #1b3666;
                border-bottom: 21px solid transparent;
                opacity: 0;
                transition: all 0.3s ease;
            }

            .nav-item:hover .nav-link,
            .nav-link.current {
                background-color: #F2F2F2;
                color: #1b3666;
                padding-left: 30px;
            }

            .nav-item:hover > .nav-link > .triangle-right,
            .nav-link.current > .triangle-right {
                opacity: 1;
            }

            .nav-icon {
                width: 40px;
                margin-right: 20px;
            }

            /* Home section */
            #home {
                min-height: 100vh;
            }
            .tm-col-home-l {
                width: calc(100% - 300px);
            }

            .tm-img-home-container {
                width: 250px;
                height: 500px;
                background: url(../img/img-home-01.jpg) no-repeat center;
                background-size: cover;
                margin-right: 0;
                margin-left: auto;
            }

            @media (max-width: 1600px) {
                .tm-col-home-l {
                    width: calc(100% - 250px);
                }

                .tm-img-home-container {
                    width: 200px;
                    height: 400px;
                }
            }

            .tm-icon-container {
                border: 1px solid #CCC;
                width: 122px;
                height: 122px;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .tm-text-container {
                max-width: 97%;
            }

            .tm-post-icon {
                width: 100px;
                height: 100px;
                margin-right: 20px;
            }

            .tm-post-link:hover {
                color: #068ccf;
            }

            /* Gallery section */
            .tm-gallery {
                position: relative;
                margin: 0 -10px;
                list-style: none;
                text-align: center;
                overflow: hidden;
            }

            .tm-gallery-links {
                padding-left: 0;
                display: flex;
                flex-wrap: wrap;
                margin-left: -15px;
                margin-bottom: 0;
            }

            .tm-gallery-links li {
                list-style: none;
                margin-bottom: 30px;
                margin-right: 55px;
            }

            .tm-gallery-link {
                padding: 15px;
                color: #1b3666;
            }

            .tm-gallery-link.active {
                color: #666666;
            }
            .tm-gallery-link-icon {
                width: 25px;
            }

            .tm-paging {
                margin-top: 35px;
                overflow: auto;
                display: flex;
                justify-content: flex-end;
            }

            .tm-paging-link {
                display: flex;
                float: left;
                width: 40px;
                height: 40px;
                align-items: center;
                justify-content: center;
                background: white;
                color: #999;
                margin-right: 15px;
                margin-bottom: 15px;
            }

            a.tm-paging-link.active,
            a.tm-paging-link:hover {
                background: #1b3666;
                color: white;
            }

            @media (max-width: 1972px) {
                .tm-paging {
                    max-width: 870px;
                }
            }
            @media (max-width: 1660px) {
                .tm-paging {
                    max-width: 580px;
                }
            }
            @media (max-width: 1258px) {
                .tm-paging {
                    max-width: 290px;
                }
            }
            @media (max-width: 991px) {
                .tm-paging {
                    max-width: 580px;
                }
            }
            @media (max-width: 898px) {
                .tm-paging {
                    max-width: 290px;
                }
            }
            @media (max-width: 700px) {
                .tm-paging {
                    max-width: 580px;
                }
            }

            @media (max-width: 618px) {
                .tm-paging {
                    max-width: 290px;
                    flex-wrap: wrap;
                }

                .tm-paging-link {
                    margin-right: 5px;
                }
            }

            .tm-gallery figure {
                position: relative;
                z-index: 50;
                float: left;
                overflow: hidden;
                margin: 1%;
                min-width: 270px;
                max-width: 270px;
                max-height: 180px;
                width: 48%;
                background: #3085a3;
                text-align: center;
                cursor: pointer;
            }

            .tm-gallery figure img {
                position: relative;
                display: block;
                min-height: 100%;
                max-width: 100%;
                opacity: 0.8;
            }

            .tm-gallery figure figcaption {
                padding: 1em;
                color: #fff;
                text-transform: uppercase;
                font-size: 1em;
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
            }

            .tm-gallery figure figcaption::before,
            .tm-gallery figure figcaption::after {
                pointer-events: none;
            }

            .tm-gallery figure figcaption,
            .tm-gallery figure figcaption > a {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }

            /* Anchor will cover the whole item by default */
            /* For some effects it will show as a button */
            .tm-gallery figure figcaption > a {
                z-index: 1000;
                text-indent: 200%;
                white-space: nowrap;
                font-size: 0;
                opacity: 0;
            }

            .tm-gallery figure h2 {
                word-spacing: -0.15em;
                font-weight: 300;
            }

            .tm-gallery figure h2 span {
                font-weight: 800;
            }

            .tm-gallery figure h2,
            .tm-gallery figure p {
                margin: 0;
            }

            .tm-gallery figure p {
                letter-spacing: 1px;
                font-size: 68.5%;
            }

            /*---------------*/
            /***** Honey *****/
            /*---------------*/

            figure.effect-honey {
                background: #4a3753;
            }

            figure.effect-honey img {
                opacity: 0.9;
                -webkit-transition: opacity 0.35s;
                transition: opacity 0.35s;
            }

            figure.effect-honey:hover img {
                opacity: 0.5;
            }

            figure.effect-honey figcaption::before {
                position: absolute;
                bottom: 0;
                left: 0;
                width: 100%;
                height: 10px;
                background: #1b3666;
                content: '';
                -webkit-transform: translate3d(0,10px,0);
                transform: translate3d(0,10px,0);
            }

            figure.effect-honey h2 {
                position: absolute;
                bottom: 0;
                left: 0;
                font-size: 1.6rem;
                padding: 1em;
                width: 100%;
                text-align: left;
                -webkit-transform: translate3d(0,-30px,0);
                transform: translate3d(0,-30px,0);
            }

            figure.effect-honey h2 i {
                font-style: normal;
                opacity: 0;
                -webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
                transition: opacity 0.35s, transform 0.35s;
                -webkit-transform: translate3d(0,-30px,0);
                transform: translate3d(0,-30px,0);
            }

            figure.effect-honey ul li a {
                opacity: 0;
                -webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
                transition: opacity 0.35s, transform 0.35s;
                -webkit-transform: translate3d(0,-30px,0);
                transform: translate3d(0,-30px,0);
            }

            figure.effect-honey figcaption::before,
            figure.effect-honey h2 {
                -webkit-transition: -webkit-transform 0.35s;
                transition: transform 0.35s;
            }

            figure.effect-honey:hover figcaption::before,
            figure.effect-honey:hover h2,
            figure.effect-honey:hover h2 i,
            figure.effect-honey:hover ul li a {
                opacity: 1;
                -webkit-transform: translate3d(0,0,0);
                transform: translate3d(0,0,0);
            }

            /* About */

            .tm-row-about {
                padding-left: 15px;
                padding-right: 15px;
            }

            .tm-col-about-l {
                width: calc(100% - 500px);
            }

            .tm-col-about-r {
                width: 400px;
                margin-right: 0;
                margin-left: auto;
            }

            @media (max-width: 1660px) {
                .tm-col-about {
                    width: 50%;
                }
                .tm-col-about-l {
                    padding-right: 30px;
                }
            }

            @media (max-width: 1200px) {
                .tm-col-about {
                    width: 100%;
                }
                .tm-col-about-l {
                    padding-right: 0;
                }
            }

            .tm-social {
                padding-left: 0;
                margin-bottom: 0;
                display: flex;
                flex-wrap: wrap;
            }

            .tm-social li {
                list-style: none;
            }

            .tm-social li a {
                font-size: 1.4rem;
                padding: 10px;
                color: white;
            }

            .fab {
                transition: all 0.3s ease;
            }
            .tm-social-link:hover .fa-instagram {
                color: #8134AF;
            }
            .tm-social-link:hover .fa-facebook {
                color: #3b5998;
            }
            .tm-social-link:hover .fa-twitter {
                color:  #00acee;
            }
            .tm-social-link:hover .fa-youtube {
                color: #c4302b;
            }

            .slick-dots {
                position: static;
                margin-top: 50px;
            }

            .slick-dots li {
                width: 24px;
                margin-bottom: 10px;
            }

            .slick-dots li button {
                width: 24px;
            }

            .slick-dots li button:before {
                font-family: "Font Awesome 5 Free";
                font-size: 24px;
                font-weight: 900;
                content: "\f04d";
                color: #eee;
                opacity: 1;
                width: 24px;
                height: 24px;
                transition: all 0.3s ease;
            }

            .slick-dots li button:hover:before,
            .slick-dots li button:focus:before,
            .slick-dots li.slick-active button:before {
                color: #1b3666;
            }

            .tm-carousel {
                width: 100%;
                max-width: 1800px;
                margin-left: -15px;
                margin-right: -15px;
            }

            .tm-carousel-item {
                padding-left: 15px;
                padding-right: 15px;
                max-width: 300px;
            }

            .tm-carousel figure {
                position: relative;
                float: left;
                overflow: hidden;
                background: #3085a3;
                text-align: center;
                cursor: pointer;
                max-width: 270px;
            }

            .tm-carousel figure img {
                position: relative;
                display: block;
                min-height: 100%;
                max-width: 100%;
                opacity: 0.8;
            }

            .tm-carousel figure figcaption {
                display: flex;
                align-items: center;
                justify-content: center;
                color: #fff;
                text-transform: uppercase;
                font-size: 1.25em;
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
            }

            .tm-carousel figure figcaption::before,
            .tm-carousel figure figcaption::after {
                pointer-events: none;
            }

            .tm-carousel figure figcaption,
            .tm-carousel figure figcaption > a {
                position: absolute;
                top: 0;
                left: 0;
                box-sizing: border-box;
                width: 100%;
                height: 100%;
            }

            /* Anchor will cover the whole item by default */
            /* For some effects it will show as a button */
            .tm-carousel figure figcaption > a {
                z-index: 1000;
                text-indent: 200%;
                white-space: nowrap;
                font-size: 0;
                opacity: 0;
            }

            .tm-about-title {
                font-size: 24px;
            }
            .tm-about-subtitle {
                font-size: 20px;
            }

            /* Contact */

            .tm-contact-col-l {
                padding-right: 25px;
            }

            .form-control {
                padding: 15px 20px 10px;
                width: 100%;
                height: auto;
            }

            .form-group {
                margin-bottom: 25px;
            }
            select.form-control {
                border-radius: 0;
            }
            select.form-control option {
                height: 30px;
            }

            select:not([multiple]) {
                -webkit-appearance: none;
                -moz-appearance: none;
                background-position: right 15px center;
                background-repeat: no-repeat;
                background-image: url(../img/select-arrow.png);
                padding: 14px 20px;
                padding-right: 20px;
                color: #666;
            }

            .mapouter{
                position:relative;
                height:360px;
                width:100%;
            }

            .gmap_canvas {
                overflow:hidden;
                background:none!important;
                height:360px;
                width:100%;
            }

            .tm-contact-links {
                padding-left: 0;
                margin: 0;
            }

            .tm-contact-links li {
                list-style: none;
            }

            .tm-contact-social {
                padding: 0;
                margin: 0;
                display: flex;
            }

            .tm-contact-social li {
                list-style: none;
                margin-right: 5px;
            }

            .tm-contact-social li a {
                width: 40px;
                height: 40px;
                display: block;
            }

            .tm-copyright {
                padding: 50px 70px 20px 0;
            }

            @media (max-width: 1400px) {
                .tm-section-wrap {
                    width: calc(100% - 630px);
                    margin-left: 630px;
                }
            }

            @media (max-width: 1200px) {
                .tm-col-home {
                    flex: 0 0 100%;
                    max-width: 100%;
                    padding-right: 15px;
                }

                .tm-img-home-container {
                    width: 100%;
                    height: 0;
                    padding-top: 133.28%;
                    background-image: url('../img/img-home-01-big.jpg');
                    background-size: contain;
                }
            }

            /* Hide the leftside bar */
            @media (max-width: 991px) {
                .tm-sidebar {
                    left: -280px;
                    transition: all 0.3s ease;
                }

                .navbar-toggler {
                    display: block;
                    position: fixed;
                    left: 0;
                    top: 0;
                    background-color: rgb(0 102 153 / 0.80);
                    color: white;
                    padding: 10px 15px;
                    transition: all 0.3s ease;
                    border-radius: 0;
                    border-top-right-radius: 5px;
                    border-bottom-right-radius: 5px;
                    top: 40px;
                    z-index: 10000;
                }

                .navbar-toggler:focus {
                    outline: none;
                }
                .tm-sidebar.show {
                    left: 0;
                }
                .tm-sidebar.show .navbar-toggler {
                    left: 280px;
                }

                .tm-parallax {
                    width: 280px;
                    left: -280px;
                }

                .tm-section-wrap {
                    width: calc(100% - 280px);
                    margin-left: 280px;
                }

                .tm-section {
                    padding-left: 30px;
                    padding-right: 30px;
                }

                .tm-text-container {
                    max-width: 100%;
                }
            }

            @media (max-width: 700px) {
                .tm-parallax {
                    position: static;
                    height: 360px;
                    width: 100%;
                }

                .tm-section-wrap {
                    width: 100%;
                    margin-left: 0;
                }
            }
        </style>
    </head>

    <body>    



        <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div>
            <div class="tm-brand-box" style="width: 100%; margin-bottom: 5%;">
                <h1 class="tm-brand">Latico</h1>
            </div>                
        </div>

        <c:if test="${not empty mensagem}">
            <div class="alert" style="right: -42%;">${mensagem}</div>
            <c:remove var="mensagem" scope="session" />
        </c:if>

        <div style="display: flex; flex-direction: row; justify-content: space-between;">

            <div class="card border-primary mb-3" style="max-width: 18rem; left:25%;">
                <div class="card-header">Login</div>
                <div class="card-body text-primary" style=" padding: 40px;">
                    <h5 class="card-title">Insira Codigo e Nome</h5>
                    <form action="login.jsp">
                        <input type="type" name="nome" placeholder="Nome"><br><br>
                        <input type="number" name="codigo" placeholder="Codigo" style="display: none;" >
                        <input type="password" name="senha" placeholder="Senha" ><br><br><br><br><br><br><br>

                        <button type="submit" class="btn btn-outline-primary" style="width: 100%;margin-top: 5%;">Logar</button>
                    </form>

                </div>
            </div>
            <div class="card border-primary mb-3" style="max-width: 18rem; right:25%;">
                <div class="card-header">Cadastro</div>
                <div class="card-body text-primary" style=" padding: 37px;">
                    <h5 class="card-title">Insira Codigo e Nome</h5>
                    <form action="cadastro.jsp">
                        <input type="type" name="nome" placeholder="Nome"><br><br>
                        <input type="number" name="codigo" placeholder="Codigo" style="display: none;" value="1">
                        <input type="password" name="senha" placeholder="Senha" ><br><br>
                        <input type="text" name="cpf" placeholder="Cpf" id="cpf"><br><br>
                        <input type="text" name="tel" placeholder="Telefone" ><br><br><br>


                        <button type="submit" class="btn btn-outline-primary" style="width: 100%;">Cadastrar</button>                    
                    </form>

                </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('#cpf').mask('999.999.999-99');
            });
        </script>    
    </body>
</html> 