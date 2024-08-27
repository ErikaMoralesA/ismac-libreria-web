<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1> Libros </h1>
      <form action="del" method="get">

          <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}"/>
          <strong>¿Desea Eliminar el dato?</strong>
           <br/>
           <button type="submit">Guardar</button>
          <button onclick="window.location.href='//ismac-libreria-web-noc/libros2/findAll';return false;">
          CANCELAR 
          </button>
      </form>
 
 
</body>
</html>