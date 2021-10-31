<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login>

<@common.page>
    <div>
        <@login.logout />
    </div>
    <span><a href="/user">User list</a> </span>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Текст сообщения"/>
            <input type="text" name="tag" placeholder="Проставить тэги">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit">Отправить</button>
        </form>
    </div>
    <div>Список сообщений</div>
    <form method="get" action="/main">
        <input type="text" name="filter" placeholder="Искать по тэгу" value="${filter}">
        <button type="submit">Найти</button>
    </form>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        Список сообщений пуст
    </#list>
</@common.page>