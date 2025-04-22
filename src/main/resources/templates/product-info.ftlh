<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h4>Подробная информация о товаре</h4>
<#list product.images as img>
    <img src="/image/${img.id}" height="60px"/><br><br>
</#list>
<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена товара: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<#if product.user??>
    <b>Автор: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<#else>
    <b>Автор: </b>Неизвестен<br>
</#if>
</body>
</html>