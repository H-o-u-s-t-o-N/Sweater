<#import "parts/common.ftl" as c>

<@c.page>
<h3>${userChannel.username}</h3>
<div class="my-3">
    <h5>${type}</h5>
</div>
<ul class="list-group">
    <#list users as user>
        <li class="list-group-item">
            <a href="/user-messages/${user.id}">${user.getUsername()}</a>
        </li>
    </#list>
</ul>
</@c.page>
