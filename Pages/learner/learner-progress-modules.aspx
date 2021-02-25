<%@ Page Title="Learner - Progress Module" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-progress-modules.aspx.vb" Inherits="Form2Flow.learner_progress_modules" %>
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
                    <h4>My Module Progress</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped" id="table-1">
                        <thead>
                          <tr>
                            <th>Module Name</th>
                            <th>Assessor</th>
                            <th>Due Date</th>
                            <th>Status</th>
                            <th>Topic Progress</th>
                           </tr>
                        </thead>

                        <tbody>
                          <tr>
                            <td>Module 1</td>
                            <td>
                              Makebe
                            </td>
                            <td>2021-01-20</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="learner-progress-topic.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Module 2</td>
                            <td>
                             Andrea
                            </td>
                            <td>2021-04-10</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td><a href="learner-progress-topic.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Module 3</td>
                            <td>
                              Joey
                            </td>
                            <td>2021-01-29</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td><a href="learner-progress-topic.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Module 4</td>
                            
                            <td>
                             Alex
                            </td>
                            <td>2021-01-16</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="learner-progress-topic.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Module 5</td>
                            <td>
                              Samuel
                            </td>
                            <td>2021-01-20</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="learner-progress-topic.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Module 6</td>
                            <td>
                              Cassandra
                            </td>
                            <td>2021-04-20</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="learner-progress-topic.aspx" class="btn btn-primary">View</a></td>
                          </tr>
                           <tr>
                            <td>Module 7</td>
                            <td>
                             Andrea
                            </td>
                            <td>2021-04-10</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td><a href="#" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Module 7</td>
                            <td>
                              Joey
                            </td>
                            <td>2021-01-29</td>
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
