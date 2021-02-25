<%@ Page Title="Facilitator - Learner Progress" Language="vb" AutoEventWireup="false" MasterPageFile="~/Facilitator.Master" CodeBehind="facilitator-progress-modules.aspx.vb" Inherits="Form2Flow.facilitator_progress_modules" %>
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
                    <h4>Learner Module Progress</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped" id="table-1">
                        <thead>
                          <tr>
                            <th>Module Name</th>
                            <th>Due Date</th>
                            <th>Progress</th>
                            <th>Topics Completed</th>                            
                           </tr>
                        </thead>

                        <tbody>
                          <tr>
                            <td>Module 1</td>
                            <td>
                              2020-12-04
                            </td>
                            <td>
                                <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td>
                              <div class="progress progress-xs">
                                <div class="progress-bar bg-success width-per-100">
                                </div>
                              </div>
                            </td>
                          </tr>

                          <tr>
                            <td>Module 2</td>
                            <td>
                             2021-01-04
                            </td>
                            <td>
                                <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td>
                              <div class="progress progress-xs">
                                <div class="progress-bar bg-orange width-per-40">
                                </div>
                              </div>
                            </td>
                          </tr>

                          <tr>
                            <td>Module 3</td>
                            <td>
                              2021-01-10
                            </td>
                            <td>
                                <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td>
                              <div class="progress progress-xs">
                                <div class="progress-bar bg-orange width-per-60">
                                </div>
                              </div>
                            </td>
                          </tr>

                          <tr>
                            <td>Module 4</td>                          
                            <td>
                             2021-01-16
                            </td>
                            <td>
                             <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td>
                              <div class="progress progress-xs">
                                <div class="progress-bar bg-success width-per-100">
                                </div>
                              </div>
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
