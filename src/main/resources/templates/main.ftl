<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>

    <@l.logout/>
    <div>
        <form method="post" action="/main">
            <input type="text" name="text" placeholder="Enter message"/>
            <input type="text" name="tag" placeholder="Tag"/>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit">Add</button>
        </form>
    </div>

    <div>Список сообщений</div>
    <form method="post" action="filter">
        <input type="text" name="filter" value="${filter!}"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Find</button>
    </form>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        No messages
    </#list>
</@c.page>