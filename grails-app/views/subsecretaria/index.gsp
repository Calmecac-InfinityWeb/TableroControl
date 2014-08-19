
<%@ page import="mx.infinityweb.Subsecretaria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subsecretaria.label', default: 'Subsecretaria')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-subsecretaria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-subsecretaria" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreSubsecretaria" title="${message(code: 'subsecretaria.nombreSubsecretaria.label', default: 'Nombre Subsecretaria')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subsecretariaInstanceList}" status="i" var="subsecretariaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${subsecretariaInstance.id}">${fieldValue(bean: subsecretariaInstance, field: "nombreSubsecretaria")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${subsecretariaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
