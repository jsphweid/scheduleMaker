<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-employee" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <table>
                <thead>
                    <tr>
                        <g:sortableColumn property="firstName" title="First Name"/>
                        <g:sortableColumn property="lastName" title="Last Name"/>
                        <g:sortableColumn property="hourlyWage" title="Hourly Wage"/>
                        <g:sortableColumn property="score" title="Score"/>
                        <g:sortableColumn property="minHours" title="Min. Hours"/>
                        <g:sortableColumn property="maxHours" title="Max. Hours"/>
                        <g:sortableColumn property="lastUpdated" title="Last Updated"/>
                    </tr>
                </thead>
                <tbody>
                <g:each in="${employeeList}" status="i" var="employee">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}"
                        onclick='document.location = "<g:createLink action='show' id='${employee.id}'/>"
                        '>
                        <td>${employee.firstName}</td>
                        <td>${employee.lastName}</td>
                        <td>${employee.hourlyWage}</td>
                        <td>${employee.score}</td>
                        <td>${employee.minHours}</td>
                        <td>${employee.maxHours}</td>
                        <td>${employee.lastUpdate}</td>
                    </tr>
                </g:each>

                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${employeeCount ?: 0}" />
            </div>
        </div>
    </body>
</html>