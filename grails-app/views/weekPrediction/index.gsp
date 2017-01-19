<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'weekPredictions.label', default: 'WeekPrediction')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-weekPredictions" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-weekPredictions" class="content scaffold-list" role="main">
<body>
    <h3>Week Prediction List</h3>
    <div id="list-weekpredictions" class="content scaffold-list" role="main">
        <table>
            <thead>
            <tr>
                <g:sortableColumn property="text" title="Name"/>
                <g:sortableColumn property="day1" title="Day 1"/>
                <g:sortableColumn property="day2" title="Day 2"/>
                <g:sortableColumn property="day3" title="Day 3"/>
                <g:sortableColumn property="day4" title="Day 4"/>
                <g:sortableColumn property="day5" title="Day 5"/>
                <g:sortableColumn property="day6" title="Day 6"/>
                <g:sortableColumn property="day7" title="Day 7"/>
                <g:sortableColumn property="lastUpdate" title="Last Modified"/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${weekPredictions}" status="i" var="weekPredictionInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}"
                    onclick='document.location = "<g:createLink action='show' id='${weekPredictionInstance.id}'/>"
                    '>
                    <td>${weekPredictionInstance.text}</td>
                    <td>${dayIdText[weekPredictionInstance.day1]}</td>
                    <td>${dayIdText[weekPredictionInstance.day2]}</td>
                    <td>${dayIdText[weekPredictionInstance.day3]}</td>
                    <td>${dayIdText[weekPredictionInstance.day4]}</td>
                    <td>${dayIdText[weekPredictionInstance.day5]}</td>
                    <td>${dayIdText[weekPredictionInstance.day6]}</td>
                    <td>${dayIdText[weekPredictionInstance.day7]}</td>
                    <td>${weekPredictionInstance.lastUpdate}</td>

                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

</body>
</html>