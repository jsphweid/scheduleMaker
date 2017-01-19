<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'weekPrediction.label', default: 'weekPrediction')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<a href="#create-weekPrediction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="create-weekPrediction" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.weekPrediction}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.weekPrediction}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save">
        <fieldset class="form">
            <div id="list-weekpredictions" class="content scaffold-list" role="main">
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
                            <td><g:textField name="text" /></td>
                            <td><g:select name="day1" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                            <td><g:select name="day2" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                            <td><g:select name="day3" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                            <td><g:select name="day4" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                            <td><g:select name="day5" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                            <td><g:select name="day6" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                            <td><g:select name="day7" from="${dayIdText}" optionKey="key" optionValue="value"/></td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
