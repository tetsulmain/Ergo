<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@include file="/WEB-INF/jspf/header.jspf" %>

<div class="section">
            <div class="container">
                <div class="row">
                  <div class="col-md-12">
                    <h1>Add</h1>
                  </div></div>
              	<div class="row">
                    <div class="col-md-6">
                    <!-- Search company --> 
                        <div class="jumbotron">
                            <h1>Company</h1>
                            <form role="searchCompany" action="add" method="post">
                                <div class="form-group" id="companyName">
                                    <label class="control-label" for="exampleInputEmail1">Company Name</label>
                                    <input class="form-control" id="exampleInputEmail1" placeholder="Enter company name" type="text">
                                </div>
                                <div class="form-group" id="locationLeft">
                                    <label class="control-label" for="exampleInputPassword1">Location</label>
                                    <input class="form-control" id="exampleInputPassword1" placeholder="Enter location" type="text">
                                </div>
                                            <input type="hidden" name="action" value="addCompany">
                                <button type="submit" class="btn btn-default" id="addCompany">Submit</button>
                            </form>
                        </div>
                    </div>
                  
                  <!-- Add client --> 
                    <div class="col-md-6">
                        <div class="jumbotron">
                            <h1>Client</h1>
                            <form role="searchClient"  action="add" method="post">
                                <div class="form-group" id="fName">
                                    <label class="control-label" for="exampleInputEmail1">First Name</label>
                                    <input class="form-control" id="fname" placeholder="Enter First Name" type="text">
                                </div>
                                <div class="form-group" id="lName">
                                    <label class="control-label" for="exampleInputPassword1">Last Name
                                        <br>
                                    </label>
                                    <input class="form-control" id="lname" placeholder="Enter Last Name" type="text">
                                </div>
                                <div class="form-group" id="locationRight">
                                    <label class="control-label">Company - Location
                                        <br>
                                    </label>
                                    <select class="form-control">
                                        <option>Company - Location</option>
                                        <option>2</option>
                                    </select>
                                </div>
                                        <input type="hidden" name="action" value="addClient">
                                <button type="submit" class="btn btn-default" id="addClient">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>