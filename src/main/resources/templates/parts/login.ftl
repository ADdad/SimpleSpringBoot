<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">User name</label>
            <input type="text" name="username" class="form-control col-sm-6" id="exampleInputEmail1"
                   aria-describedby="emailHelp" placeholder="Enter username">
        </div>
        <#if isRegisterForm>
            <div class="form-group">
                <label for="exampleInputEmail">Email</label>
                <input type="email" class="form-control col-sm-6" id="exampleInputEmail" name="email"
                       placeholder="Email">
            </div>
        </#if>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control col-sm-6" id="exampleInputPassword1" name="password"
                   placeholder="Password">
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Create <#else> Login</#if></button>
        <#if !isRegisterForm>
            <a href="/registration">Register</a>
        </#if>
    </form>
</#macro>

<#macro logout>
    <div>
        <form action="/logout" method="post">
            <button type="submit" class="btn btn-primary">Log Out</button>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        </form>
    </div>
</#macro>