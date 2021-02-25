<%@ Page Title="Learner - Progress Topic" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-progress-topic.aspx.vb" Inherits="LearnerManagementSystem.learner_progress_topic" %>
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
                    <h4>My Topic Progress</h4>
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
                           </tr>
                        </thead>

                        <tbody>
                          <tr>
                            <td>Topic 1</td>
                            <td>
                              Samuel
                            </td>
                            <td>2021-01-20</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                          </tr>

                          <tr>
                            <td>Topic 2</td>
                            <td>
                             Samuel
                            </td>
                            <td>2021-01-22</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                          </tr>

                          <tr>
                            <td>Topic 3</td>
                            <td>
                              Samuel
                            </td>
                            <td>2021-01-29</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                          </tr>

                          <tr>
                            <td>Topic 4</td>
                            
                            <td>
                             Samuel
                            </td>
                            <td>2021-04-23</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                          </tr>

                          <tr>
                            <td>Topic 5</td>
                            <td>
                              Samuel
                            </td>
                            <td>2021-01-20</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                          </tr>                        
                        </tbody>
                      </table>
                    </div>
                  </div>
                 <div class="row">
                  <div class="form-group col-md-3 offset-md-6 col-6">
                      <button type="button" id="btnReturn" runat="server" class="btn btn-primary btn-lg btn-block float-right" onserverclick="btnReturn_Click" tabindex="4">Return</button>
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
