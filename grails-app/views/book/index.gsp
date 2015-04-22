<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

    <ul class="nav nav-pills">
        <li><a class="home" href="${createLink(uri: '/')}"><i class="fa fa-home"></i> <g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><i class="fa fa-plus-circle"></i> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
    <div id="list-book" class="content scaffold-list" role="main">
        <h2><g:message code="default.list.label" args="[entityName]" /></h2>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <f:table collection="${bookList}" />

        <div class="pagination">
            <bootstrap:paginate total="${bookCount ?: 0}" />
        </div>
    </div>
</body>
</html>