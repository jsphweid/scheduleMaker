<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'dayPrediction.label', default: 'DayPrediction')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>


    <body>
        <a href="#create-dayPrediction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-dayPrediction" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.dayPrediction}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.dayPrediction}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <asset:javascript src="rgraph.moveablebargraph.min.js"/>

                <canvas id="cvs" width="600" height="250">
                    [No canvas support]
                </canvas>
                <g:javascript>
                    var rgraph = new RGraph.Bar({
                        id: 'cvs',
                        data: [8,6,4,0,9,5,3,8,5],
                        options: {
                            adjustable: true,
                        }
                    }).draw();
                </g:javascript>

                <g:form name="createNewDayPrediction" url="[controller: 'dayprediction', action: 'save']">
                    <g:textField name="text" value="${DayPredictionInstance?.text}"/>
                    <g:submitButton name="Add Day Prediction"/>
                </g:form>
            </g:form>
        </div>

    </body>
</html>
