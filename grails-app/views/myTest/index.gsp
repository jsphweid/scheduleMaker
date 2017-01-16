<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>

<g:each in="${employees}" var="employee" status="i">
    <h3>${i+1}. ${employee.last_name}, ${employee.first_name}</h3>
    <p>
        Wage: ${employee.hourly_wage}
    </p>
    <br/>
</g:each>

</body>
</html>
