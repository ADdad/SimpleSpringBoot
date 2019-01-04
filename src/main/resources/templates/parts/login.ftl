<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">User name</label>
            <input type="text" name="username" class="form-control col-sm-6 ${(usernameError??)?string('is-invalid', '')}"
                   id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username"
                   value="<#if user??>${user.username}</#if>">
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
        <#if isRegisterForm>
            <div class="form-group">
                <label for="exampleInputEmail">Email</label>
                <input type="email" class="form-control col-sm-6 ${(emailError??)?string('is-invalid', '')}"
                       id="exampleInputEmail" name="email"
                       placeholder="Email" value="<#if user??>${user.email}</#if>">
                <#if emailError??>
                    <div class="invalid-feedback">
                        ${emailError}
                    </div>
                </#if>
            </div>
        </#if>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control col-sm-6 ${(passwordError??)?string('is-invalid', '')}"
                   id="exampleInputPassword1" name="password"
                   placeholder="Password">
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
    <#if isRegisterForm>
        <div class="form-group">
            <label for="exampleInputPassword2">Confirm password</label>
            <input type="password" class="form-control col-sm-6 ${(password2Error??)?string('is-invalid', '')}"
                   id="exampleInputPassword2" name="password2"
                   placeholder="Confirmation">
            <#if password2Error??>
                <div class="invalid-feedback">
                    ${password2Error}
                </div>
            </#if>
        </div>
    </#if>
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