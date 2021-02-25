<%@ Page Title="Learner - Progress Courses" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-progress-courses.aspx.vb" Inherits="Form2Flow.learner_progress_courses" %>
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
                    <h4>My Progress</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped" id="table-1">
                        <thead>
                          <tr>
                            <th>Course Name</th>
                            <th>Assessor</th>
                            <th>Due Date</th>
                            <th>Status</th>
                            <th>Module Progress</th>
                           </tr>
                        </thead>

                        <tbody>
                          <tr>
                            <td>Course 1</td>
                            <td>
                              Miriam
                            </td>
                            <td>2021-01-20</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="#" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Course 2</td>
                            <td>
                             Vanessa
                            </td>
                            <td>2021-04-10</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td><a href="#" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Course 3</td>
                            <td>
                              Will
                            </td>
                            <td>2021-01-29</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td><a href="#" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Course 4</td>
                            
                            <td>
                             Pete
                            </td>
                            <td>2021-01-16</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="#" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Course 5</td>
                            <td>
                              Sam
                            </td>
                            <td>2021-01-20</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="#" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Course 6</td>
                            <td>
                              Sandra
                            </td>
                            <td>2021-04-10</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td><a href="#" class="btn btn-primary">View</a></td>
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
