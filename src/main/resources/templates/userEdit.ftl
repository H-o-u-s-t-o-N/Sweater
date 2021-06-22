<#import "parts/common.ftl" as c>

<@c.page>
    <h4>User editor</h4>

<form class="form-inline" action="/user" method="post">
    <input class="form-control" type="text" name="username" value="${user.username}" />
    <#list roles as role>
    <div class="form-check mx-5">
        <label class="form-check-label"><input class="form-check-input" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")} />${role}</label>
    </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId" />
    <input type="hidden" value="${_csrf.token}" name="_csrf" />
    <button class="btn btn-primary mb-2" type="submit">Save</button>
</form>
</@c.page>
