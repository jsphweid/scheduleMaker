<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'position.label', default: 'Position')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-position" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-position" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <table>
                <thead>
                <tr>
                    <g:sortableColumn property="text" title="Position"/>
                    <g:sortableColumn property="lastUpdated" title="Last Updated"/>
                </tr>
                </thead>
                <tbody>
                <g:each in="${positionList}" status="i" var="position">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}"
                        onclick='document.location = "<g:createLink action='show' id='${position.id}'/>"
                        '>
                        <td>${position.text}</td>
                        <td>${position.lastUpdate}</td>
                    </tr>
                </g:each>

                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${positionCount ?: 0}" />
            </div>
        </div>
    </body>
</html>