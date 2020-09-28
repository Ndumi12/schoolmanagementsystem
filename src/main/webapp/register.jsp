<%@page import="za.co.tut.person.Applications"%>
<!doctype html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0";
<title></title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="style.css" rel="stylesheet">
<link href="styling.css" rel="stylesheet">

<script>
function checkForm(form)
  {
    numberFormat = /^[0-9]+$/;
    stringForm = /^[a-zA-Z]+$/;
    var email = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.(A-Za-z]{2,4})$/;
    if(form.firstName.value === "") {
      alert("Error: First name cannot be blank!");
      form.firstName.focus();
      return false;
    }
    else if(!stringForm.test(form.firstName.value)){
        alert("Error: Wrong format!!!");
        form.firstName.focus();
        return false;
    }
    else if(form.lastName.value === ""){
        alert("Error: Last name cannot be blank!!");
        form.lastName.focus();
        return false;
    }
    else if(!stringForm.test(form.lastName.value)){
        alert("Error: Wrong format!!!");
        form.firstName.focus();
        return false;
    }
    else if(form.idNumber.value === ""){
        alert("Error: ID number cannot be empty!!");
        form.idNumber.focus();
        return false;
    }
    else if(form.idNumber.value.length !== 13){
        alert("Error: ID number must be 13 digits long!!");
        form.idNumber.focus();
        return false;
    }
    else if(!numberFormat.test(form.idNumber.value)){
        alert("Error: ID number must be digits only!!");
        form.idNumber.focus();
        return false;
    }
    else if(form.contactNo.value === ""){
        alert("Error: Contact number cannot be empty!!");
        form.contactNo.focus();
        return false;
    }
    else if(form.contactNo.value.length !== 10){
        alert("Error: Contact number must be 10 digits long!!");
        form.contactNo.focus();
        return false;
    }
    else if(stringForm.test(form.contactNo.value)){
        alert("Error: Contact number must be digits only!!");
        form.contactNo.focus();
        return false;
    }
    else if(form.emailAddress.value === ""){
        alert("Error: Email address cannot be empty!!");
        form.emailAddress.focus();
        return false;
    }
    var genders = document.getElementsByName("gender");
    if(genders[0].checked === true){
        return true;
    }else if(genders[1].checked === true){
        return true;
    }else{
        alert("Error: Please select a gender!");
        return false;
    }
    if(!email.test(form.emailAddress.value)){
        alert("Wrong email format");
        form.emailAddress.focus();
        return false;
    }
  var dropdown = document.getElementById("securityQuestion");
    if(form.username.value === "") {
      alert("Error: Username cannot be blank!");
      form.username.focus();
      return false;
    }
    else if(form.password.value === ""){
        alert("Error: Password cannot be blank!!");
        form.password.focus();
        return false;
    }
    else if(document.getElementById('securityAnswer').selectedIndex === 0){
        alert("Error: Security Answer cannot be empty!!");
        return false;
    }
    else if(dropdown.value === ""){
        alert("ERROR!! please select a security question");
        form.securityQuestion.focus();
        return false;
    }
  }
  function reset_message(){
      document.getElementById('message').innerHTML = '';
  }
</script>

</head>

<body>

<!-- Start of navigation bar navbar-fixed-top -->

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
		<li><a href="index.jsp">Home</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Register</h3>
  </div>
  <div class="panel-body">
  <br><br>
  <div class="container">
      <form class="form-horizontal" action="person.do" method="GET"  rol="form">
                <h3>Personal Details</h3>

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
                        <button type="submit" name="decission" value="Register" class="btn btn-primary btn-block">SUBMIT</button>
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
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
