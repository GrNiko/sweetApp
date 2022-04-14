<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}" class="card-img-top">
                </#if>
            </div>
            <div class="m-2">
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>

            <div class="card-footer text_muted">
                ${message.authorName}
            </div>

        </div>
    <#else>
        Список сообщений пуст
    </#list>
</div>