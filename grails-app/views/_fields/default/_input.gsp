<%@ page defaultCodec="html" %>
<%
    def attrs = [:]
    attrs.name = property
    attrs.value = value
    attrs['class'] = "form-${property} form-control"
    if(required) attrs.required = ''
    out<<raw(g.textField(attrs))
%>