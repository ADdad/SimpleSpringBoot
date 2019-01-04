<#import "parts/common.ftl" as c>

<@c.page>
    <h5>${username}</h5>
    ${message!}
    <form method="post">
            <div class="form-group">
                <label for="exampleInputEmail">Email</label>
                <input type="email" class="form-control col-sm-6" id="exampleInputEmail" name="email"
                       placeholder="Email" value="${email!''}">
            </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control col-sm-6" id="exampleInputPassword1" name="password"
                   placeholder="Password">
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</@c.page>