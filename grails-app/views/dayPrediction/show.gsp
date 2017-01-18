<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'dayPrediction.label', default: 'DayPrediction')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        <asset:stylesheet src="mine.css" />
    </head>
    <body>
        <a href="#show-dayPrediction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-dayPrediction" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>


            <asset:javascript src="rgraph.moveablebargraph.min.js"/>

            <div class="container-fluid">
                <div class="canvasBarGraph">
                    <canvas id="cvs" width="1000" height="450" >
                        [No canvas support]
                    </canvas>
                </div>
            </div>

            <div class="container-fluid">
                <g:javascript>
                    var rgraph;
                    window.onload = function () {
                        drawGraph("${dayPrediction}");
                    };

                    function drawGraph(data) {
                        rgraph = new RGraph.Bar({
                            id: 'cvs',
                            data: makeDataArray(JSON.parse(data)),
                            options: {
                                adjustable: false,
                                titleYaxis: "Necessary Labor Index",
                                ymax: 300,
                                titleYaxisX: 30,
                                ylabelsCount: 10,
                                numyticks: 10,
                                gutterLeft: 80,
                                colors: ['gray'],
                                labels: ['4 AM', '5 AM', '6 AM', '7 AM', '8 AM', '9 AM',
                                    '10 AM', '11 AM', '12 PM', '1 PM', '2 PM', '3 PM',
                                    '4 PM', '5 PM', '6 PM', '7 PM', '8 PM', '9 PM',
                                    '10 PM', '11 PM', '12 AM', '1 AM', '2 AM', '3 AM'],
                                textAngle: -90,
                                labelsOffsety: 50
                            }
                        }).draw();
                    }
                    function makeDataArray(obj) {
                        var ret = [];
                        for (var i = 0; i < 24; i++) {
                            var hour = "hour";
                            hour += ("0" + i).slice(-2);
                            ret.push(obj[hour]);
                        }
                        return ret;
                    }
                </g:javascript>

            </div>



        </div>
    </body>
</html>
