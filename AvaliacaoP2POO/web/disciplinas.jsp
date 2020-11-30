<%-- 
    Document   : disciplinas
    Created on : Nov 30, 2020, 4:41:24 PM
    Author     : Daniel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="disciplinaPkg.Disciplina"%>
<%@page import="java.util.Set" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String exceptionMsg = null;
    
    if (request.getParameter("cancelar")!= null) {
            response.sendRedirect(request.getRequestURI());
        }
    if(request.getParameter("formInsert")!=null){
    try {

            String nome = request.getParameter("nome");
            String ementa = request.getParameter("ementa");
            int ciclo = Integer.parseInt(request.getParameter("ciclo"));
            Double nota = Double.parseDouble(request.getParameter("nota")) ;
            Disciplina.insert(nome, ementa, ciclo, nota);
       
            response.sendRedirect(request.getRequestURI());
        } catch (Exception e) {
            exceptionMsg = e.getLocalizedMessage();
        }}
    
    if(request.getParameter("formUpdate")!=null){
    try {
            String nome = request.getParameter("nome");
            String nomeAntigo = request.getParameter("nomeAntigo");
            String ementa = request.getParameter("ementa");
            int ciclo = Integer.parseInt(request.getParameter("ciclo"));
            Double nota = Double.parseDouble(request.getParameter("nota")) ;
            Disciplina.update(nomeAntigo, nome, ementa, ciclo, nota);  
            response.sendRedirect(request.getRequestURI());
        } catch (Exception e) {
            exceptionMsg = e.getLocalizedMessage();
        }}
    
    if(request.getParameter("formDelete")!=null){
    try {  
            String nome = request.getParameter("nome");
            Disciplina.delete(nome);
            response.sendRedirect(request.getRequestURI());
        } catch (Exception e) {
            exceptionMsg = e.getLocalizedMessage();
        }}
%>   
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container" style="margin-top: 180px">
            
            <%if(request.getParameter("prepareInsert") != null){%>
            <h3>Inserir registros</h3>
                <form>
                    Nome: <input type="text" name="nome"/>
                    Ementa: <input type="text" name="ementa"/>
                    Ciclo: <input type="text" name="ciclo"/>
                    Nota: <input type="text" name="nota"/>
                    <input type="submit" name="formInsert" value="inserir">
                    <input type="submit" name="cancelar" value="Cancelar">
                </form>
            
            
            <%}else if(request.getParameter("prepareUpdate") !=null ){ %>
            <form>
                    <% String nome = request.getParameter("nome");
                    String ementa = request.getParameter("ementa");
                    int ciclo = Integer.parseInt(request.getParameter("ciclo"));
                    Double nota = Double.parseDouble(request.getParameter("nota"));%>
                    <input type="hidden" name="nomeAntigo" value="<%= nome %>"/>
                    Nome: <input type="text" name="nome" value="<%= nome %>"/>
                    Ementa: <input type="text" name="ementa" value="<%= ementa %>" />
                    Ciclo: <input type="text" name="ciclo" value="<%= ciclo %>" />
                    Nota: <input type="text" name="nota" value="<%= nota %>" />
                    <input type="submit" name="formUpdate" value="inserir">
                    <input type="submit" name="cancelar" value="Cancelar">
                </form>
        <%}else if(request.getParameter("prepareDelete") !=null ){ %>
            <form>
                    <% String nome = request.getParameter("nome");%>
                    <input type="hidden" name="nome" value="<%= nome %>"/>
                    Excluir o registro <b><%= nome %></b>?
                    <input type="submit" name="formDelete" value="excluir">
                    <input type="submit" name="cancelar" value="Cancelar">
               </form>
        <%}else{%>
        <form method="post">
            <input type="submit" name="prepareInsert" value="inserir"/> 
        </form>
        <%}%>
        
        <h3>Lista</h3>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>ementa</th>
                <th>Ciclo</th>
                <th>nota</th>
                <th>Comandos</th>
            </tr>
            <%for(Disciplina c: Disciplina.getList()){%>
            <tr>
                <td><%= c.getNome()%></td>
                <td><%= c.getEmenta()%></td>
                <td><%= c.getCiclo()%></td>
                <td><%= c.getNota()%></td>
                <td>
                    <form>
                        <input type="hidden" name="nome" value="<%= c.getNome() %>"/>
                        <input type="hidden" name="ementa" value="<%= c.getEmenta()%>"/>
                        <input type="hidden" name="ciclo" value="<%= c.getCiclo()%>"/>
                        <input type="hidden" name="nota" value="<%= c.getNota() %>"/>
                        <input type="submit" name="prepareUpdate" value="Alterar"/>
                        <input type="submit" name="prepareDelete" value="Excluir"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</html>
