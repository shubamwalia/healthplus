<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <%@ include file="bootstraplinks.html" %>
</head>
<body>

<div class="row">
    <div class="col-3"></div>
    <div class="col-6 p-5">
        <div class="card">
            <div class="card-header">
                Login
            </div>
            <div class="card-body">

                <form action="login" method="post">
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" placeholder="Enter username" name="username">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" placeholder="Password" name="password">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <div class="col-3"></div>
</div>

</body>
</html>