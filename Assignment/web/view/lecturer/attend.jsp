<%-- 
    Document   : att
    Created on : Mar 1, 2024, 1:54:23 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
                font-size: 14px;
                line-height: 1.42857143;
                color: #333;
                background-color: #fff;
            }

            .container {
                background-color: #f8f9fa;
                padding: 20px;
                margin-top: 20px;
                border-radius: 5px;
            }

            .btn-primary {
                background-color: #e97222;
                border-color: #FF5733;
            }

            .btn-primary:hover {
                background-color: #d1480f;
                border-color: #d1480f;
            }

            .table-bordered th, .table-bordered td {
                border: 1px solid #dee2e6;
            }

            .table-header {
                background-color: #e97222;
                color: #fff;
            }

            .table-header th {
                text-align: center;
            }

            .btn-take {
                background-color: #28a745;
                border-color: #28a745;
            }

            .btn-edit {
                background-color: #007bff;
                border-color: #007bff;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h1 class="display-4">FPT University Academic Portal</h1>
                </div>
                <div class="col-md-6 text-center">
                    <img src="https://seeklogo.com/images/F/fpt-university-logo-B3B6D84292-seeklogo.com.png" class="img-fluid" alt="FPT University Logo" width="200px" height="200px"/>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8">
                    <h2>Activities for nguyenpqhe171272 (Phạm Quốc Nguyên)</h2>
                    <p><b>Note</b>: These activities do not include extra-curriculum activities, such as club activities...</p>
                    <p><b>Chú thích</b>: Các hoạt động trong bảng dưới không bao gồm hoạt động ngoại khóa, ví dụ như hoạt động câu lạc bộ</p>
                    <div>
                        <p>Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...</p>
                        <p>Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..</p>
                        <p>Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...</p>
                        <p>Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.</p>
                        <p>Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..</p>
                        <p>Little UK (LUK) thuộc tầng 5 tòa nhà Delta</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <table>
                        <tbody>
                            <tr>
                                <td colspan="2">
                                    <strong>FAP mobile app (myFAP) is ready at</strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="https://apps.apple.com/us/app/myfap/id1527723314">
                                        <img src="https://fap.fpt.edu.vn/images/app-store.png" style="width: 120px; height: 40px" alt="apple store">
                                    </a>
                                </td>
                                <td>
                                    <a href="https://play.google.com/store/apps/details?id=com.fuct">
                                        <img src="https://fap.fpt.edu.vn/images/play-store.png" style="width: 120px; height: 40px" alt="google store">
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                        <div style="position: absolute; top: -35px; right: 30px; width: 150px;"></div>
                        <ol class="breadcrumb">
                            <li>
                                <span>
                                    <a href="../view/home.jsp">Home</a>
                                    |
                                    <b>View Schedule</b>
                                </span>
                            </li>
                        </ol>
                    </table>
                </div>
            </div>

            <div class="container">
                <form action="attend" method="POST">
                    <input type="hidden" name="id" value="${param.id}" />
                    <table class="table table-bordered">
                        <thead class="table-header">
                            <tr>
                                <td>Id</td>
                                <td>Name</td>
                                <td>Presented</td>
                                <td>Note</td>
                                <td>Time</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.atts}" var="a">
                                <tr>
                                    <td>${a.student.sid}</td>
                                    <td>${a.student.sname}</td>
                                    <td>
                                        ${a.present}
                                        <input type="radio" 
                                               ${!a.present ?"checked=\"checked\"":""}
                                               name="present${a.student.sid}" value="no"  /> No
                                        <input type="radio" 
                                               ${a.present ?"checked=\"checked\"":""}
                                               name="present${a.student.sid}" value ="yes" /> Yes
                                    </td>
                                    <td><input name="description${a.student.sid}" type="text" value="${a.description}"></td>
                                    <td>${a.time}</td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                    <input type="submit" class="btn btn-primary" value="Save"/>
                </form>
            </div>
        </div>
        <!-- Bootstrap JS and jQuery (optional) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
