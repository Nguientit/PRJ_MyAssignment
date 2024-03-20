<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .container {
                background-color: #f8f9fa;
                padding: 20px;
                margin-top: 20px;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-8">
                    <h1>FPT University Academic Portal</h1>
                </div>
                <div class="col-md-4">
                    <strong>FAP mobile app (myFAP) is ready at</strong><br>
                    <a href="https://apps.apple.com/us/app/myfap/id1527723314">
                        <img src="https://fap.fpt.edu.vn/images/app-store.png" class="img-fluid" alt="apple store" style="width: 120px; height: 40px">
                    </a>
                    <a href="https://play.google.com/store/apps/details?id=com.fuct">
                        <img src="https://fap.fpt.edu.vn/images/play-store.png" class="img-fluid" alt="google store" style="width: 120px; height: 40px">
                    </a>
                </div>
            </div>
        </div>
        <div class="container mt-3">
            <h1>Hello ${sessionScope.account.displayname}</h1>
            <a href="login" class="btn btn-primary mr-2">Log out</a>
            <a href="lecturer/timetable?id=1" class="btn btn-success mr-2">Weekly timetable</a>
            <a href="lecturer/timetable?id=1" class="btn btn-success">Mark report</a>
        </div>
        <div>
            <h3 class="orangeTitle">Academic Information</h3>
            <div class="listBowWrapper">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <table>
                                    <tbody>
                                        <tr valign="top">
                                    <h4>Information Access(Tra cứu thông tin)</h4>
                                        </tr>
                                        <ul>
                                            <li>
                                                <a href="lecturer/timetable?id=1">University timetable </a><!-- comment -->
                                                (Lịch học)
                                            </li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                        </ul><!-- comment -->
                                        
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- Bootstrap JS and jQuery (optional) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
