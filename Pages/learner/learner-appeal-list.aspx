<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-appeal-list.aspx.vb" Inherits="Form2Flow.learner_appeal_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!-- Main Content -->
        <form runat="server" class="needs-validation" novalidate="">
            <div class="main-content">
        <section class="section">
             <!-- Page Heading -->
             <%--<div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Appeals</h1>
                </div>--%>
            <!-- Page Heading -->

          <div class="section-body">
            <%--<div class="row">
              <div class="col-12">
                <div class="card mb-0">
                  <div class="card-body">
                    <ul class="nav nav-pills">
                      <li class="nav-item">
                        <a class="nav-link active" id="btnAllUsers" runat="server" onserverclick="btnAllUsers_ServerClick">All <span class="badge badge-info" id="spAll" runat="server"></span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="btnAdmin" runat="server" onserverclick="btnAdmin_ServerClick">Administrator <span class="badge badge-success" id="spAdmin" runat="server"></span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="btnAssessor" runat="server" onserverclick="btnAssessor_ServerClick" >Assessor <span class="badge badge-primary" id="spAssessor" runat="server"></span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="btnFacilitator" runat="server" onserverclick="btnFacilitator_ServerClick">Facilitator <span class="badge badge-danger" id="spFacilitator" runat="server"></span></a>
                      </li>
                        <li class="nav-item">
                        <a class="nav-link" id="btnMentor" runat="server" onserverclick="btnMentor_ServerClick">Mentor <span class="badge badge-dark" id="spMentor" runat="server"></span></a>
                      </li>
                        <li class="nav-item">
                        <a class="nav-link" id="btnModerator" runat="server" onserverclick="btnModerator_ServerClick">Moderator <span class="badge badge-warning" id="spModerator" runat="server"></span></a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>--%>
            <div class="row mt-4">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4 id="lblCategory" runat="server">My Appeals</h4>
                      <div class="card-header-action text-right">
                          <%--<a href="#" class="btn btn-sm btn-warning" data-toggle="modal" data-target=".bd-example-modal-lg" ><i class="fas fa-edit fa-sm text-white-50"></i> Request Change</a>--%>
                          <%--<a href="admin-branch-add.aspx" class="btn btn-sm btn-primary"><i class="fas fa-plus fa-sm text-white-50"></i> Add Appeal</a>--%>
                      </div>
                  </div>
                  <div class="card-body">
                    <%--<div class="float-left">
                      <select class="form-control selectric">
                        <option>Action For Selected</option>
                        <option>Move to Draft</option>
                        <option>Move to Pending</option>
                        <option>Delete Permanently</option>
                      </select>
                    </div>--%>
                    <%--<div class="float-right">
                        <div class="input-group">
                          <input type="text" class="form-control" placeholder="Search">
                          <div class="input-group-append">
                            <button class="btn btn-primary"><i class="fas fa-search"></i></button>
                          </div>
                        </div>
                    </div>--%>
                    <div class="clearfix mb-3"></div>
                    <div class="table-responsive">
                        <asp:GridView ID="gvAppeals" runat="server" 
                            CssClass="table table-striped"
                            AlternatingRowStyle-CssClass="bottomBorder" 
                            RowStyle-CssClass="bottomBorder" 
                            EmptyDataText="No Appeals Available."
                            Width="100%"
                            AutoGenerateColumns = "false"
                            Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                            OnPageIndexChanging="gvAppeals_PageIndexChanging"
                            OnRowCommand="gvAppeals_RowCommand"
                            OnRowDataBound="gvAppeals_RowDataBound"
                            AlternatingRowStyle-BorderWidth="0px"
                            align-content="center" PageSize="10"
                            >
                            <Columns >
                                <asp:TemplateField >
                                    <ItemTemplate>
                                        <asp:Button CommandName="Edit" runat="server" Text="Edit" CssClass="btn btn-warning btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="ID" HeaderText="#" />
                                <asp:BoundField DataField="Appeal" HeaderText="Name" />
                                <asp:BoundField DataField="Description" HeaderText="Description" />
                                <asp:BoundField DataField="Course" HeaderText="Course" />
                                <asp:BoundField DataField="SubmittedOn" HeaderText="Submitted On" />
                                <asp:BoundField DataField="LastUpdatedOn" HeaderText="Last Updated On" />
                                
                            </Columns>
                            <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                        </asp:GridView>
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
