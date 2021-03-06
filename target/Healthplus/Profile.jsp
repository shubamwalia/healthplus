<%@ page import="pojos.Users" %><%--
  Created by IntelliJ IDEA.
  User: affordplan
  Date: 29/3/19
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="bootstraplinks.html"%>
<html>
<head>
    <div class="container">
        <div class="card mt-3 shadow">
            <h5 class="card-header bg-info text-white">
                <i class="fas fa-user"></i>
                Add Profile
            </h5>
            <div class="card-body">

<%--                Profile Photo not build yet--%>
<%--                <div class="row">--%>
<%--                    <div class="col">--%>
<%--                        <form action="/profilephoto" method="POST" enctype="multipart/form-data">--%>
<%--                            <div class="avatar-upload">--%>
<%--                                <div class="avatar-edit">--%>
<%--                                    <input type='file' id="imageUpload" name="profilephoto">--%>
<%--                                    <label for="imageUpload"></label>--%>
<%--                                </div>--%>
<%--                                <div class="avatar-preview">--%>
<%--                                    <div id="imagePreview" style="background-image: url({{users.profilephoto}});">--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <button type="submit" class="btn btn-sm btn-info m-3 ml-5">Upload</button>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <hr>
                <form action="/addprofile?_method=PUT" method="POST">
                    <div class="row mb-3">
                        <div class="card w-100 m-3 shadow-sm">
                            <div class="card-header">
                                Basic Info
                            </div>
                            <div class="card-body">
                                <input type="hidden" name="_method" value="PUT">
                                <div class="form-group">
                                    <label>Email address</label>
                                    <input type="email" class="form-control" placeholder="Enter email" name="email" value="${user.email}"
                                           disabled required>
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control" placeholder="Enter name" name="name" value="{{users.name}}"
                                           required>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label>DOB</label>
                                            <input type="date" class="form-control" placeholder="Enter dob" name="dob"
                                                   value="{{users.dob}}" required>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Gender</label>
                                            <select data-style="btn-info" name="gender" class="form-control">
                                                <optgroup label="select gender">
                                                    <option value="male" selected="selected">Male</option>
                                                    <option value="female">Female</option>
                                                    <option value="other">Other</option>
                                                </optgroup>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    {{#if (ifcond user.role "!=" "admin")}}
                    <div class="row mb-3">
                        <div class="card w-100 m-3 shadow-sm">
                            <div class="card-header">
                                Contact Info
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input type="text" class="form-control" minlength="10" maxlength="10" placeholder="Enter phone number"
                                           name="phone" value="{{users.phone}}" required>
                                </div>
                                <div class="form-group">
                                    <label>City</label>
                                    <input type="text" class="form-control" placeholder="Enter city" name="city" value="{{users.city}}"
                                           required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="card w-100 m-3 shadow-sm">
                            <div class="card-header">
                                Personal Info
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Tell us bit about your journey</label>
                                    <textarea class="form-control" name="journeydetails" required>{{users.journeydetails}}</textarea>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label>What are your expectations from the communities</label>
                                    <textarea class="form-control" name="expectationdetails" required>{{users.expectationdetails}}</textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    {{/if}}
                    <button type="submit" class="btn btn-primary">Update Profile</button>
                </form>
            </div>
        </div>
    </div>
</head>
<body>

</body>
</html>
