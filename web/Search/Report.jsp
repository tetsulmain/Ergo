<%-- 
    Document   : Report
    Created on : Jan 26, 2016, 1:43:17 PM
    Author     : wayne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="Report.css" rel="stylesheet" type="text/css">
    </head><body>
        <div class="section">
            <div class="container">
                <nav role="navigation" class="navbar navbar-default navbar-static-top">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="#" class="navbar-brand">ErgoRisk</a>
                    </div>
                    <!-- Collection of nav links and other content for toggling -->
                    <div id="navbarCollapse" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="#">Home</a>
                            </li>
                            <li>
                                <a href="#">Profile</a>
                            </li>
                            <li>
                                <a href="#">Messages</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="#">Welcome $user.firstname</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="row">
                    <div class="col-md-12">
                        <h1>Client Name
                            <br>
                        </h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h1>Full Assessments</h1>
                        <form role="form">
                            <div class="form-group">
                                <label class="control-label">Select</label>
                                <select class="form-control">
                                    <option>Generic Full</option>
                                    <option>2</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </div>
                    <div class="col-md-4">
                        <h1>Spot Checks
                            <br>
                        </h1>
                        <form role="form">
                            <div class="form-group">
                                <label class="control-label">Select</label>
                                <select class="form-control">
                                    <option>Follow up Report</option>
                                    <option>2</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </div>
                    <div class="col-md-4">
                        <h1>Move Safe</h1>
                        <form role="form">
                            <div class="form-group">
                                <label class="control-label">Select</label>
                                <select class="form-control">
                                    <option>Full Report</option>
                                    <option>2</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div><div class="section"><div class="container"><div class="row"><div class="col-md-12"><div class="embed-responsive embed-responsive-16by9"><iframe class="embed-responsive-item" src="http://www.youtube.com/embed/oVXZTmi2ruI" allowfullscreen=""></iframe></div></div></div></div></div>
    

</body></html>