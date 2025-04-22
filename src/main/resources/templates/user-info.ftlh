<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
    <h1>BUYSELL</h1><hr>
    <h3>Товары пользователя ${user.name}</h3>
    <b>Номер телефона: </b> ${user.phoneNumber}<br>
    <b>Email: </b> ${user.email}<br>
    <h4>Товары пользователя ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<#if errorMessage??>
    <h2 style="...">${errorMessage}</h2>
</#if>
</body>
</html>
