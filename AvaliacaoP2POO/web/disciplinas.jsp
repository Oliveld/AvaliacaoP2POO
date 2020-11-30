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
    Disciplina disciplina = null;
    try {
            disciplina = (Disciplina) application.getAttribute("disciplinas");
        } catch (Exception e) {
        }
    if (disciplina !=null){
        
        ArrayList<Disciplina> listD = disciplina.getList();
        ArrayList<Disciplina> newList = new ArrayList<>();
        int count = 0;
        for (int i = 0; i < disciplina.getList().size(); i++){
            try {
                    Float nota = Float.parseFloat(request.getParameter("nota" + i));
                    if (nota >=0 && nota <=10){
                        Disciplina disci = listD.get(i);
                        disci.setNota(nota);
                        newList.add(disci);
                        count++;
                    }else {
                        %>
                        <script>
                            alert("Parametro incorreto! (Utilize valores 0 a 10)");
                        </script>
                        <%
                    }
                } catch (Exception e) {
                    continue;
                }
        }
        if (count == disciplina.getList().size()){
            disciplina.setList(newList);
}
        
    application.setAttribute("disciplinas", disciplina);
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
        <div class="container">
            <form>


                <table class="table" style="margin-top: 90px">
                    <thead class="thead-dark">
                        <tr>
                            <th>Disciplina</th>
                            <th>Ementa</th>
                            <th>Ciclo</th>
                            <th>Nota</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (int i = 0; i < disciplina.getList().size(); i++){
                        %>

                        <tr>

                            <td><% out.println(disciplina.getList().get(i).getNome()); %></td>
                            <td><% out.println(disciplina.getList().get(i).getEmenta()); %></td>
                            <td><% out.println(disciplina.getList().get(i).getCiclo()); %></td>
                            <td><input type="text" name="nota<% out.print(Integer.toString(i)); %>" value="<% out.println(disciplina.getList().get(i).getNota()); %>"><td>
                        </tr>
                    </tbody>
                    <%
                        }
                    %>



                </table>

                <input type="submit" name="" value="Atualizar Notas">
            </form>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</html>
<%
    }
%>