<%-- 
    Document   : index
    Created on : Nov 30, 2020, 4:40:49 PM
    Author     : Daniel
--%>

<%@page import="disciplinaPkg.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title>Offcanvas template for Bootstrap</title>

        <!-- Bootstrap core CSS -->
        <link href="../../css/editor.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="offcanvas.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body class="bg-light">
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <main role="main" class="container bg-dark" style="margin-top: 90px" >
            <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded box-shadow">
                <img class="mr-3" src="https://media-exp1.licdn.com/dms/image/C4D03AQFRkCzQAGatVA/profile-displayphoto-shrink_200_200/0?e=1606953600&amp;v=beta&amp;t=zNSuVGyOOolGvR5Nv7aaEyu9acdkGvCm_BYWUB1D9fA" alt="" width="48" height="48">
                <div class="lh-100">
                    <h6 class="mb-0 text-white lh-100">Daniel Leite Oliveira</h6>
                    <small style="opacity: 1; color: rgb(245, 245, 245);">RA:&nbsp;1290481913011</small>
                    </br>
                    <small style="opacity: 1; color: rgb(245, 245, 245);">Disciplinas matriculadas: 
                        <%= Disciplina.getList().size() %>
                    </small>
                </div>
            </div>
        </main>
    </body>
    <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/holderjs@2.9.4/holder.js"></script>

        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" preserveAspectRatio="none" style="display: none; visibility: hidden; position: absolute; top: -100%; left: -100%;"><defs><style type="text/css"></style></defs><text x="0" y="2" style="font-weight:bold;font-size:2pt;font-family:Arial, Helvetica, Open Sans, sans-serif">32x32</text></svg></body>

</html>
