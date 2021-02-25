<%@ Page Title="Admin - Progress Courses" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="admin-progress-courses.aspx.vb" Inherits="LearnerManagementSystem.admin_progress_courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server" class="needs-validation" novalidate="">
       <div class="main-content">
         <section class="section">
          <div class="container mt-5">

               <!-- Main Content -->
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Enrolled Learners</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped" id="table-1">
                        <thead>
                          <tr>
                            <th>Course Name</th>
                            <th>Date Started</th>
                            <th>Amount of Learners</th>
                            <th>Learner Progress</th>                            
                           </tr>
                        </thead>

                        <tbody>
                          <tr>
                            <td>Course 1</td>
                            <td>
                              2020-10-04
                            </td>
                            <td>
                                23
                            </td>
                            
                              <td><a href="admin-progress-courses.aspx" class="btn btn-primary">View</a></td>
                            
                          </tr>

                          <tr>
                            <td>Course 2</td>
                            <td>
                             2020-11-04
                            </td>
                            <td>
                                38
                            </td>
                            
                              <td><a href="admin-progress-courses.aspx" class="btn btn-primary">View</a></td>
                            
                          </tr>

                          <tr>
                            <td>Course 3</td>
                            <td>
                              2020-11-19
                            </td>
                            <td>
                                16
                            </td>
                                <td><a href="admin-progress-courses.aspx" class="btn btn-primary">View</a></td>                      
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>

                 <div class="row">
                  <div class="form-group col-md-3 offset-md-6 col-6">
                      <button type="button" id="btnReturn" runat="server" class="btn btn-primary btn-lg btn-block float-right" onclick="btnReturn_Click" tabindex="4">Return</button>
                   </div>
                </div>

               </div>              
              </div>
            </div>

         </div>   
         </section>
        </div>
    </form>
</asp:Content>
