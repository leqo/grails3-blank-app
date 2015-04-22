<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
    <ul class="nav nav-pills">
        <li><a class="home" href="${createLink(uri: '/')}"><i class="fa fa-home"></i> <g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><i class="fa fa-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><i class="fa fa-plus-circle"></i> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
    <div id="show-book" class="content scaffold-show" role="main">
        <h2><g:message code="default.show.label" args="[entityName]" /></h2>
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>
        <f:display bean="book" />
        </ol>
        <g:form resource="${book}" method="DELETE">
            <div class="form-actions well-small">
                <g:link class="edit btn btn-default" action="edit" resource="${book}">
                    <i class="fa fa-edit"></i> <g:message code="default.button.edit.label" default="Edit" /></g:link>
                <button class="delete btn btn-danger pull-right"
                       type="submit"
                       onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" >
                    <i class="fa fa-trash"></i> ${message(code: 'default.button.delete.label', default: 'Delete')}
                </button>
            </div>
        </g:form>
    </div>
</body>
</html>