<%@ page import="com.example.employeeapi.model.Employee" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
    <style>
        #changeColor{
            text-align: center;
            border: solid 2px;
            width: 60%;
            margin: auto ;
            padding: 10px;
            border-collapse: collapse;
        }
        #changeColor th {
            color: #ffffff;
            background-color: black;
            border: solid 2px black;
            padding: 10px;
        }
        #changeColor td {
            text-align: center;
            border: solid 2px;
            padding: 10px;

        }
        .thead{
            border: solid 2px;
            background-color: yellow;
        }
    </style>
</head>
<body>
<% List<Employee> employeeList = (List<Employee>)request.getAttribute("message");%>
<table id="changeColor">
    <thead class="thead">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
    </tr>
    </thead>

<%
    for (Employee employee:employeeList){
        out.print("<tr><td>"+employee.getId()+"</td>");
        out.print("<td>"+employee.getName()+"</td>");
        out.print("<td>"+employee.getAge()+"</td>");
        out.print("<td>"+employee.getGender()+"</td></tr>");
    }
%>
</table>
<script type="text/javascript">
    function showColor(id) {
        var form = document.getElementById(id);
        var row = form.getElementsByTagName("tr");
        for(i = 0;i<row.length;i++){
            row[i].style.backgroundColor =i%2==0?"#ffffff":"#eeeeee";
        }
    }
    window.onload = function () { showColor("changeColor"); }
</script>
<%--<div>${message}</div>--%>

</body>
</html>
