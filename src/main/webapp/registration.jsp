<%-- 
    Document   : registration
    Created on : 18 Sep 2020, 11:11:23 AM
    Author     : Nondumiso Dhladhla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
        <link href="styling.css" rel="stylesheet">
    </head>
    <body>
        

        <nav class="navbar navbar-inverse navbar-fixed-top">

  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-left">
		<li><a href="index.html">Home</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
          <div class="container">
      <form class="form-horizontal" action="person.do" method="GET"  rol="form">
                <h3>Personal Details</h3>

                  <div class="form-group">
                    <label for="UserID" class="col-sm-3 control-label">UserID</label>
                    <div class="col-sm-9">
                        <input type="text" name="userID" placeholder="userID"  class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Name</label>
                    <div class="col-sm-9">
                        <input type="text" name="name" placeholder="name"  class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="surname" class="col-sm-3 control-label">Surname</label>
                    <div class="col-sm-9">
                        <input type="text" name="surname" placeholder="surname" class="form-control">
                    </div>
                </div>
                 <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Female" ">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Male" " >Male
                                </label>
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <label for="Contact Number" class="col-sm-3 control-label">Contact Number</label>
                    <div class="col-sm-9">
                        <input type="text" name="cellnumber" placeholder="Contact Number" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="E-mail address" class="col-sm-3 control-label">E-mail Address</label>
                    <div class="col-sm-9">
                        <input type="text" name="emailAddress" placeholder="E-mail Adress" class="form-control">
                    </div>
                </div>
               <h3>School Details</h3>
                    <div class="form-group">
                    <label for="School Name" class="col-sm-3 control-label">School Name</label>
                    <div class="col-sm-9">
                        <input type="text" name="schoolname" placeholder="School Name" required="true" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Previous grade" class="col-sm-3 control-label">Previous grade</label>
                    <div class="col-sm-9">
                        <input type="text" name="previousgrade" placeholder="Previous grade" required="true" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="School Code" class="col-sm-3 control-label">School Code</label>
                    <div class="col-sm-9">
                        <input type="text" name="schoolcode" placeholder="School Code" required="true" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Subject Code" class="col-sm-3 control-label">Subject Code</label>
                    <div class="col-sm-9">
                        <input type="text" name="subjectcode" placeholder="Subject Code" required="true" class="form-control">
                    </div>
                </div>
                <h3>Login Details</h3>
                                 <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">Username</label>
                    <div class="col-sm-9">
                        <input type="text" name="username" placeholder="username" required="true" class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" name="password" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" name="decission" value="register" class="btn btn-primary btn-block">SUBMIT</button>
                    </div>
                </div>
            </form> <!-- /form -->
        </div>
        
        <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
