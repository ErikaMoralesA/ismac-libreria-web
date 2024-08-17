<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Libros</h1>

	<form action="add" method = "post">
		
		<input type ="hidden" id="idLibro" value="${libro.idLibro }" />
		Titulo
		<input type ="text" id="titulo" value="${libro.titulo }" />
		<br/>
		Editorial
		<input type ="text" id="editorial" value="${libro.editorial }" />
		<br/>
		Numero de Paginas
		<input type ="number" id="numPaginas" value="${libro.numPaginas }" />
		<br/>
		Edicion
		<input type ="text" id="edicion" value="${libro.edicion }" />
		<br/>
		Idioma
		<input type ="text" id="idioma" value="${libro.idioma }" />
		<br/>
		Fecha de Publicacion
		<input type ="date" id="fechaPublicacion" value="${fn:substring(libro.fechaPublicacion,0,10) }" />
		<br/>
		Descripcion
		<input type ="text" id="descripcion" value="${libro.descripcion }" />
		<br/>
		Tipo Pasta
		<input type ="text" id="tipoPasta" value="${libro.tipoPasta }" />
		<br/>
		ISBN
		<input type ="text" id="ISBN" value="${libro.ISBN }" />
		<br/>
		Numero de Ejemplares
		<input type ="number" id="numEjemplares" value="${libro.numEjemplares }" />
		<br/>
		Portada
		<input type ="text" id="portada" value="${libro.portada }" />
		<br/>
		Presentacion
		<input type ="text" id="presentacion" value="${libro.presentacion }" />
		<br/>
		Precio
		<input type ="NUMBER" id="precio" value="${libro.precio }" />
		<br/>
		Categoria
		<select id="idCategoria" name="idCategoria">
			<c:forEach var="item" items="${categorias}">
				<option value="${item.idCategoria}" ${item.idCategoria == libro.categoria.idCategoria ? 'selected' : '' } > ${item.categoria} </option>
			</c:forEach>
		</select>
		<br/>
		
		Autor
		<select id="idAutor" name="idAutor">
			<c:forEach var="item" items="${autores}">
				<option value="${item.idAutor}" ${item.idAutor == libro.autor.idAutor ? 'selected' : '' } > ${item.nombre} ${item.apellido} </option>
			</c:forEach>		
		</select>
		<br/>
		
		<button type="submit">Guardar</button>
		<button type="button" onclick="window.location.href='/ismac-libreria-nocturno-web/libros2/findAll';return false;">Cancelar</button>

			
		</select>
		<br/>
		
		
	</form>

</body>
</html>