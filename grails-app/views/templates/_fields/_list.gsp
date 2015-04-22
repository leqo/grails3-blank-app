<table class="table table-bordered table-condensed ${domainClass.propertyName}">
    <colgroup>
        <col class="col-xs-1">
        <col class="col-xs-7">
    </colgroup>
    <g:each in="${domainClass.persistentProperties}" var="p">
        <tr>
            <th id="${p.name}-label" class="property-label"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></th>
            <td class="property-value" aria-labelledby="${p.name}-label">${body(p)}</td>
        </tr>
    </g:each>
</table>
