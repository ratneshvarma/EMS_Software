<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>EMS:: Software</title>

    <meta name="description" content="User login page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<c:url value="/resource/assets/css/bootstrap.min.css"/>" />
    <link rel="stylesheet" href="<c:url value="/resource/assets/font-awesome/4.5.0/css/font-awesome.min.css"/>" />

    <!-- text fonts -->
    <link rel="stylesheet" href="<c:url value="/resource/assets/css/fonts.googleapis.com.css"/>" />

    <!-- ace styles -->
    <link rel="stylesheet" href="<c:url value="/resource/assets/css/ace.min.css"/>" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="<c:url value="/resource/assets/css/ace-part2.min.css"/>" />
    <![endif]-->
    <link rel="stylesheet" href="<c:url value="/resource/assets/css/ace-rtl.min.css"/>" />


    <link rel="stylesheet" href="<c:url value="/resource/assets/css/ace-ie.min.css"/>" />

</head>
<body class="login-layout" bgcolor="#f0ffff" >
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>

                            <span class="red">Employee Management </span>
                            <span class="white" id="id-text2">Software</span>
                        </h1>
                        <%--<h4 class="blue" id="id-company-text">&copy; Company Name</h4>--%>
                    </div>

                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-coffee green"></i>
                                        Please Enter Your Information
                                    </h4>

                                    <div class="space-6"></div>

                                    <form:form  action="/employee/login" modelAttribute="index" >
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<form:input path="userName"  class="form-control" placeholder="Username" ></form:input>
															<i class="ace-icon fa fa-user"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<form:password path="password" class="form-control" placeholder="Password" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                            </label>

                                            <div class="space"></div>

                                            <div class="clearfix">
                                                <label class="inline">
                                                    <form:checkbox path="remember"  />
                                                    <span class="lbl"> Remember Me</span>
                                                </label>

                                                <form:button  class="width-35 pull-right btn btn-sm btn-primary">
                                                    <i class="ace-icon fa fa-key"></i>
                                                    <span class="bigger-110">Login</span>
                                                </form:button>
                                            </div>

                                            <div class="space-4"></div>
                                        </fieldset>
                                    </form:form>


                                    <div class="space-6"></div>


                                </div><!-- /.widget-main -->

                                <div class="toolbar clearfix">
                                    <div>
                                        <a href="#" data-target="#forgot-box" class="forgot-password-link">
                                            <i class="ace-icon fa fa-arrow-left"></i>
                                            I forgot my password
                                        </a>
                                    </div>

                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.login-box -->


                    </div><!-- /.position-relative -->


                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.main-content -->
</div><!-- /.main-container -->




</body>
</html>