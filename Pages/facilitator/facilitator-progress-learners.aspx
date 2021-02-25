﻿<%@ Page Title="Facilitator - Progress Learner" Language="vb" AutoEventWireup="false" MasterPageFile="~/Facilitator.Master" CodeBehind="facilitator-progress-learners.aspx.vb" Inherits="LearnerManagementSystem.facilitator_progress_learners" %>
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
                    <h4>Learners Enrolled</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped" id="table-1">
                        <thead>
                          <tr>
                            <th>Learner Name</th>
                            <th>Facilitator</th>
                            <th>Enroll Date</th>
                            <th>Status</th>
                            <th> Progress</th>
                           </tr>
                        </thead>

                        <tbody>
                          <tr>
                            <td>Lunghi Tallorder</td>
                            <td>
                              Me
                            </td>
                            <td>2020-12-04</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="facilitator-progress-modules.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Marinus Lewis</td>
                            <td>
                             Me
                            </td>
                            <td>2021-01-04</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td><a href="facilitator-progress-modules.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Martina Navratilova</td>
                            <td>
                              Me
                            </td>
                            <td>2021-01-10</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td><a href="facilitator-progress-modules.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Billy Horschel</td>
                            
                            <td>
                             Me
                            </td>
                            <td>2021-01-16</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="facilitator-progress-modules.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Bruce Knee</td>
                            <td>
                              Me
                            </td>
                            <td>2021-01-20</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="facilitator-progress-modules.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Will Turner</td>
                            <td>
                              Me
                            </td>
                            <td>2021-02-07</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td><a href="facilitator-progress-modules.aspx" class="btn btn-primary">View</a></td>
                          </tr> 
                          <tr>
                            <td>Jack Reacher</td>
                            <td>
                              Me
                            </td>
                            <td>2021-02-09</td>
                            <td>
                              <div class="badge badge-success badge-shadow">Completed</div>
                            </td>
                            <td><a href="facilitator-progress-modules.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Elizabeth Swann</td>
                            <td>
                              Me
                            </td>
                            <td>2021-02-10</td>
                            <td>
                              <div class="badge badge-warning badge-shadow">In Progress</div>
                            </td>
                            <td><a href="facilitator-progress-modules.aspx" class="btn btn-primary">View</a></td>
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
