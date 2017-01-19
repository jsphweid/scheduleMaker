<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'weekPrediction.label', default: 'weekPrediction')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-weekPrediction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="show-weekPrediction" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>


    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Day 1</th>
            <th>Day 2</th>
            <th>Day 3</th>
            <th>Day 4</th>
            <th>Day 5</th>
            <th>Day 6</th>
            <th>Day 7</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${weekPrediction?.text}</td>
            <td>${dayIdText.getAt(weekPrediction?.day1)}</td>
            <td>${dayIdText.getAt(weekPrediction?.day2)}</td>
            <td>${dayIdText.getAt(weekPrediction?.day3)}</td>
            <td>${dayIdText.getAt(weekPrediction?.day4)}</td>
            <td>${dayIdText.getAt(weekPrediction?.day5)}</td>
            <td>${dayIdText.getAt(weekPrediction?.day6)}</td>
            <td>${dayIdText.getAt(weekPrediction?.day7)}</td>
        </tbody>
    </table>


    <br><br><br>
    <p>
        More data will eventually go down here about the week
    </p>

    <br><br><br><br>


    <g:form resource="${weekPrediction}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${weekPrediction}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>


</div>
</body>
</html>
