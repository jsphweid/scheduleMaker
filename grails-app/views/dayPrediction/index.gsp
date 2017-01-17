<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'dayPrediction.label', default: 'DayPrediction')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-dayPrediction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-dayPrediction" class="content scaffold-list" role="main">
            <body>

            <h3>Day Prediction List</h3>
            <div id="list-daypredictions" class="content scaffold-list" role="main">
                <table>
                    <thead>
                    <tr>
                        <g:sortableColumn property="text" title="Name"/>
                        <g:sortableColumn property="lastUpdate" title="Last Modified"/>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${dayPredictions}" status="i" var="dayPredictionInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}"
                            onclick='document.location = "<g:createLink action='show' id='${dayPredictionInstance.id}'/>"
                            '>
                            <td>${dayPredictionInstance.text}</td>
                            <td>${dayPredictionInstance.lastUpdate}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>

            <div class="pagination">
                <g:paginate total="${dayPredictionCount ?: 0}" />
            </div>
        </div>
    </body>
</html>