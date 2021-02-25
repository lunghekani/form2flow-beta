<%@ Page Title="Admin - Progress Info" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="admin-progress-info.aspx.vb" Inherits="Form2Flow.admin_progress_info" %>
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
                    <h4>Facilitators</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped" id="table-1">
                        <thead>
                          <tr>
                            <th>Facilitator  Name</th>
                            <th>Courses asssigned</th>
                            <th>Courses Created</th>
                            <th>Courses</th>
                           </tr>
                        </thead>

                        <tbody>
                          <tr>
                            <td>Danny</td>
                            <td>
                              3
                            </td>
                            <td>4</td>
                            <td><a href="admin-progress-courses.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Miriam</td>
                            <td>
                             6
                            </td>
                            <td>7</td>
                            <td><a href="admin-progress-courses.aspx" class="btn btn-primary">View</a></td>
                          </tr>

                          <tr>
                            <td>Carl</td>
                            <td>
                              4
                            </td>
                            <td>3</td>
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
