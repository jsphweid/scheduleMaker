<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'dayPrediction.label', default: 'DayPrediction')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-dayPrediction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>




    <div id="create-dayPrediction" class="content scaffold-create" role="main">

        <asset:javascript src="dayPredictionJS/rgraph.moveablebargraph.min.js"/>
        <asset:javascript src="dayPredictionJS/dayPredictionMain.js"/>

        <div class="container-fluid">

            <g:form resource="${this.dayPrediction}" name="editDayPrediction" method="PUT" controller="DayPrediction" action="update">
                Title:
                <g:textField name="text" value="${dayPrediction?.text}"/>
                <g:hiddenField name="hour00" value=""/>
                <g:hiddenField name="hour01" value=""/>
                <g:hiddenField name="hour02" value=""/>
                <g:hiddenField name="hour03" value=""/>
                <g:hiddenField name="hour04" value=""/>
                <g:hiddenField name="hour05" value=""/>
                <g:hiddenField name="hour06" value=""/>
                <g:hiddenField name="hour07" value=""/>
                <g:hiddenField name="hour08" value=""/>
                <g:hiddenField name="hour09" value=""/>
                <g:hiddenField name="hour10" value=""/>
                <g:hiddenField name="hour11" value=""/>
                <g:hiddenField name="hour12" value=""/>
                <g:hiddenField name="hour13" value=""/>
                <g:hiddenField name="hour14" value=""/>
                <g:hiddenField name="hour15" value=""/>
                <g:hiddenField name="hour16" value=""/>
                <g:hiddenField name="hour17" value=""/>
                <g:hiddenField name="hour18" value=""/>
                <g:hiddenField name="hour19" value=""/>
                <g:hiddenField name="hour20" value=""/>
                <g:hiddenField name="hour21" value=""/>
                <g:hiddenField name="hour22" value=""/>
                <g:hiddenField name="hour23" value=""/>
                <g:submitButton name="Update"/>
            </g:form>

            <div class="container-fluid">
                <div class="canvasBarGraph">
                    <canvas id="cvs" width="1000" height="450" >
                        [No canvas support]
                    </canvas>
                </div>
            </div>
        <g:javascript>
            window.onload = function () {
                var rgraph = drawGraph({
                    color: "red",
                    adjustable: true
                }, "${dayPredictionJSON}");
                updateTagAssocations(rgraph, 'editDayPrediction');
            };
        </g:javascript>

        </div>
    </div>

    </body>
</html>
