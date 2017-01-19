<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'weekPrediction.label', default: 'weekPrediction')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
<a href="#edit-weekPrediction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="update"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>

    <g:form resource="${this.weekPrediction}" controller="WeekPrediction" action="update">
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
                        <td><g:textField value="${weekPrediction?.text}" name="text" /></td>
                        <td><g:select value="${weekPrediction?.day1}" name="day1" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                        <td><g:select value="${weekPrediction?.day2}" name="day2" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                        <td><g:select value="${weekPrediction?.day3}" name="day3" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                        <td><g:select value="${weekPrediction?.day4}" name="day4" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                        <td><g:select value="${weekPrediction?.day5}" name="day5" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                        <td><g:select value="${weekPrediction?.day6}" name="day6" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                        <td><g:select value="${weekPrediction?.day7}" name="day7" from="${dayIdText}" optionKey="key" optionValue="value"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </fieldset>
        <fieldset class="buttons">
            <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
        </fieldset>
    </g:form>
<input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
</div>
</body>
</html>
