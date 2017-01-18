<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'dayPrediction.label', default: 'DayPrediction')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
    <asset:stylesheet src="mine.css" />
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

    <asset:javascript src="rgraph.moveablebargraph.min.js"/>

    <div class="container-fluid">

        <g:form name="createNewDayPrediction" controller="DayPrediction" action="save">
            Title:
            <g:textField name="text" value="${DayPredictionInstance?.text}"/>
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
            <g:submitButton name="Save"/>
        </g:form>

        <div class="container-fluid">
            <div class="canvasBarGraph">
                <canvas id="cvs" width="1000" height="450" >
                    [No canvas support]
                </canvas>
            </div>
        </div>
        <g:javascript>
            var rgraph;
            window.onload = function () {
                rgraph = new RGraph.Bar({
                    id: 'cvs',
                    data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    options: {
                        adjustable: false,
                        titleYaxis: "Necessary Labor Index",
                        ymax: 300,
                        titleYaxisX: 30,
                        ylabelsCount: 10,
                        numyticks: 10,
                        gutterLeft: 80,
                        labels: ['4 AM', '5 AM', '6 AM', '7 AM', '8 AM', '9 AM',
                            '10 AM', '11 AM', '12 PM', '1 PM', '2 PM', '3 PM',
                            '4 PM', '5 PM', '6 PM', '7 PM', '8 PM', '9 PM',
                            '10 PM', '11 PM', '12 AM', '1 AM', '2 AM', '3 AM'],
                        textAngle: -90,
                        labelsOffsety: 50
                    }
                }).draw();

                $(function() {
                    $("[name='createNewDayPrediction']").submit(function() {
                        for (var i = 0; i < 24; i++) {
                            var hour = "hour";
                            hour += ("0" + i).slice(-2);
                            console.log(hour);
                            $("[name='" + hour + "']").val(Math.floor(rgraph.data[i]));
                        }
                    });
                })
            };
        </g:javascript>

    </div>
</div>

</body>
</html>
