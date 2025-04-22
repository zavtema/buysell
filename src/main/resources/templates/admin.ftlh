<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
    <title>BUYSELL - Панель администратора</title>
    <meta charset="UTF-8">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .ban-button {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }
        .ban-button:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h4>Панель администратора</h4>

<#if users?? && users?size gt 0>
    <table>
        <thead>
            <tr>
                <th>Email</th>
                <th>Номер телефона</th>
                <th>Активность</th>
                <th>Роли</th>
                <th>Бан</th>
                <th>Редактирование</th>
                <th>Подробная информация</th>
            </tr>
        </thead>
        <tbody>
            <#list users as user>
            <tr>
                <td>${user.email!''}</td>
                <td>${user.phoneNumber!''}</td>
                <td><#if user.active>Активен<#else>Заблокирован</#if></td>
                <td>
                    <#list user.roles as role>
                        ${role}<#if role_has_next>, </#if>
                    </#list>
                </td>
                <td>
                    <form action="/admin/user/ban/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button type="submit" class="ban-button">
                            <#if user.active>Забанить<#else>Разбанить</#if>
                        </button>
                    </form>
                </td>
                <td><a href="/admin/user/edit/${user.id}">Редактировать</a></td>
                <td><a href="/user/${user.id}">Подробнее</a></td>
            </tr>
            </#list>
        </tbody>
    </table>
<#else>
    <h3>Пользователей нет</h3>
</#if>

</body>
</html>