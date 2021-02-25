<%@ Page Title="Facilitator - Progress Info" Language="vb" AutoEventWireup="false" MasterPageFile="~/Facilitator.Master" CodeBehind="facilitator-progress-info.aspx.vb" Inherits="LearnerManagementSystem.facilitator_progress_info" %>
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
                    <h4>My Courses</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped" id="table-1">
                        <thead>
                          <tr>
                            <th>Course Name</th>
                            <th>Assessor</th>
                            <th>Due Date</th>
                            <th>Enrolled Learners</th>
                           </tr>
                        </thead>

                        <tbody>
                          <tr>
                            <td>Course 1</td>
                            <td>
                              Me
                            </td>
                            <td>2021-01-20</td>
                            <td><a href="facilitator-progress-learners.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Course 2</td>
                            <td>
                             Me
                            </td>
                            <td>2021-02-10</td>
                            <td><a href="facilitator-progress-learners.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Course 3</td>
                            <td>
                              Me
                            </td>
                            <td>2021-02-28</td>
                            <td><a href="facilitator-progress-learners.aspx" class="btn btn-primary">View</a></td>
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
