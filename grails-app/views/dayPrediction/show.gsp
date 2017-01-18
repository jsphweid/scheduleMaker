<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'dayPredictionJSON.label', default: 'dayPredictionJSON')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        <asset:stylesheet src="mine.css" />
    </head>
    <body>
        <a href="#show-dayPredictionJSON" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-dayPredictionJSON" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>


            <asset:javascript src="dayPredictionJS/rgraph.moveablebargraph.min.js"/>
            <asset:javascript src="dayPredictionJS/dayPredictionMain.js"/>

            <div class="container-fluid">
                <div class="canvasBarGraph">
                    <canvas id="cvs" width="1000" height="450" >
                        [No canvas support]
                    </canvas>
                </div>
            </div>

            <div class="container-fluid">
                <g:javascript>
                    window.onload = function () {
                        var rgraph = drawGraph(getData("${dayPredictionJSON}"), {
                            color: "gray",
                            adjustable: false
                        });
                    };
                </g:javascript>

            </div>

            <f:display bean="dayPredictionJSON" />
            <g:form resource="${dayPrediction}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${dayPrediction}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>


        </div>
    </body>
</html>
