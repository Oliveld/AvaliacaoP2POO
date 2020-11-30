<%-- 
    Document   : index
    Created on : Nov 30, 2020, 4:40:49 PM
    Author     : Daniel
--%>

<%@page import="disciplinaPkg.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Disciplina disciplina = new Disciplina(null, null, 0);
    try {
            disciplina = (Disciplina) application.getAttribute("disciplinas");
        } catch (Exception e) {
        }
    if (disciplina == null) {
        disciplina = new Disciplina(null, null, 0);
        Disciplina ST = new Disciplina("Sociedade e Tecnologia", "Comunicação e Informação – conceitos e implicações no mundo contemporâneo; Da Cultura de Massa à Cultura Digital – novas formas de socialização da informação e  novos desafios na comunicação. Tecnologia e Sociedade - Problemas humanos e sociais referentes à utilização da tecnologia da informação e da computação: aspectos humanos da segurança e privacidade das informações e aspectos econômicos e éticos da utilização dos computadores.", 3);
        Disciplina BD = new Disciplina("Banco de Dados", "Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados: Relacional,  Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formas normais. Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e de manipulação de dados.", 4);
        Disciplina POO = new Disciplina("Programação Orientada a Objetos", "Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.", 4);
        Disciplina ES3 = new Disciplina("Engenharia de Software 3", "Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. Padrões de Distribuição. Camadas no desenvolvimento de software. Tipos de Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento para implementação. Integração do sistema. Testes: planejamento e tipos. Manutenção. Documentação.", 4);
        Disciplina LP4 = new Disciplina("Linguagem de Programação 4", "Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi­cas e interativas. Definição de layouts e formatação em geral. Adição de algorítmos usando laços, matrizes, datas, funções e condições. Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. Exercícios práticos com projeto de criação de sites.", 4);
        Disciplina SO2 = new Disciplina("Sistemas Operacionais 2", "Apresentação de um sistema operacional específico utilizado em ambiente corporativo. Requisitos de hardware para instalação do sistema. Processo de instalação, personalização, operação, administração e segurança sobre o sistema operacional focado.  Elaboração de projetos de seleção e implantação de um sistema operacional.", 4);
        Disciplina MT = new Disciplina("Metodologia da Pesquisa Científico-Tecnológica", "O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. O processo de leitura e de análise textual. Citações e bibliografias. Trabalhos acadêmicos: tipos, características e composição estrutural. O projeto de pesquisa experimental e não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normas da ABNT.", 4);
        Disciplina SI = new Disciplina("Segurança da Informação", "Requisitos de segurança de aplicações, de base de dados e de comunicações. Segurança de dispositivos móveis. Políticas de segurança. Criptografia. Firewalls. Vulnerabilidades e principais tecnologias de segurança.", 5);
        
        disciplina.addDisciplina(ST);
        disciplina.addDisciplina(BD);
        disciplina.addDisciplina(POO);
        disciplina.addDisciplina(ES3);
        disciplina.addDisciplina(LP4);
        disciplina.addDisciplina(SO2);
        disciplina.addDisciplina(MT);
        disciplina.addDisciplina(SI);
        
        application.setAttribute("disciplinas", disciplina);
    }
%>
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
                        <%
                            if(disciplina != null) {
                                out.println(disciplina.getList().size());
                            } else {
                        %>Nenhuma<%
                            }
                        %>
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
