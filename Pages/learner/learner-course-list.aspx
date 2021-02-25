<%@ Page Title="Learner - Course List" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-course-list.aspx.vb" Inherits="LearnerManagementSystem.learner_course_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main Content -->
        <form runat="server" class="needs-validation" novalidate="">
            <div class="main-content">
        <section class="section">
             <!-- Page Heading -->
               <%-- <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Users</h1>
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
                    <h4 id="lblCategory" runat="server">My Courses</h4>
                      <div class="card-header-action text-right">
                          <%--<a href="#" class="btn btn-sm btn-warning" data-toggle="modal" data-target=".bd-example-modal-lg" ><i class="fas fa-edit fa-sm text-white-50"></i> Request Change</a>--%>
                          <%--<a href="learner-course-add.aspx" class="btn btn-sm btn-primary"><i class="fas fa-plus fa-sm text-white-50"></i> Add Course</a>--%>
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
                        <asp:GridView ID="gvCourses" runat="server" 
                            CssClass="table table-striped"
                            AlternatingRowStyle-CssClass="bottomBorder" 
                            RowStyle-CssClass="bottomBorder" 
                            EmptyDataText="No Courses Available."
                            Width="100%"
                            AutoGenerateColumns = "false"
                            Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                            OnPageIndexChanging="gvCourses_PageIndexChanging"
                            OnRowCommand="gvCourses_RowCommand"
                            OnRowDataBound="gvCourses_RowDataBound"
                            AlternatingRowStyle-BorderWidth="0px"
                            align-content="center" PageSize="10"
                            >
                            <Columns >
                                <asp:TemplateField >
                                    <ItemTemplate>
                                        <asp:Button CommandName="View" runat="server" Text="View" CssClass="btn btn-primary btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="ID" HeaderText="#" />
                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:BoundField DataField="Category" HeaderText="Category" />
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
        <%--<div class="settingSidebar">
          <a href="javascript:void(0)" class="settingPanelToggle"> <i class="fa fa-spin fa-cog"></i>
          </a>
          <div class="settingSidebar-body ps-container ps-theme-default">
            <div class=" fade show active">
              <div class="setting-panel-header">Setting Panel
              </div>
              <div class="p-15 border-bottom">
                <h6 class="font-medium m-b-10">Select Layout</h6>
                <div class="selectgroup layout-color w-50">
                  <label class="selectgroup-item">
                    <input type="radio" name="value" value="1" class="selectgroup-input-radio select-layout" checked>
                    <span class="selectgroup-button">Light</span>
                  </label>
                  <label class="selectgroup-item">
                    <input type="radio" name="value" value="2" class="selectgroup-input-radio select-layout">
                    <span class="selectgroup-button">Dark</span>
                  </label>
                </div>
              </div>
              <div class="p-15 border-bottom">
                <h6 class="font-medium m-b-10">Sidebar Color</h6>
                <div class="selectgroup selectgroup-pills sidebar-color">
                  <label class="selectgroup-item">
                    <input type="radio" name="icon-input" value="1" class="selectgroup-input select-sidebar">
                    <span class="selectgroup-button selectgroup-button-icon" data-toggle="tooltip"
                      data-original-title="Light Sidebar"><i class="fas fa-sun"></i></span>
                  </label>
                  <label class="selectgroup-item">
                    <input type="radio" name="icon-input" value="2" class="selectgroup-input select-sidebar" checked>
                    <span class="selectgroup-button selectgroup-button-icon" data-toggle="tooltip"
                      data-original-title="Dark Sidebar"><i class="fas fa-moon"></i></span>
                  </label>
                </div>
              </div>
              <div class="p-15 border-bottom">
                <h6 class="font-medium m-b-10">Color Theme</h6>
                <div class="theme-setting-options">
                  <ul class="choose-theme list-unstyled mb-0">
                    <li title="white" class="active">
                      <div class="white"></div>
                    </li>
                    <li title="cyan">
                      <div class="cyan"></div>
                    </li>
                    <li title="black">
                      <div class="black"></div>
                    </li>
                    <li title="purple">
                      <div class="purple"></div>
                    </li>
                    <li title="orange">
                      <div class="orange"></div>
                    </li>
                    <li title="green">
                      <div class="green"></div>
                    </li>
                    <li title="red">
                      <div class="red"></div>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="p-15 border-bottom">
                <div class="theme-setting-options">
                  <label class="m-b-0">
                    <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input"
                      id="mini_sidebar_setting">
                    <span class="custom-switch-indicator"></span>
                    <span class="control-label p-l-10">Mini Sidebar</span>
                  </label>
                </div>
              </div>
              <div class="p-15 border-bottom">
                <div class="theme-setting-options">
                  <label class="m-b-0">
                    <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input"
                      id="sticky_header_setting">
                    <span class="custom-switch-indicator"></span>
                    <span class="control-label p-l-10">Sticky Header</span>
                  </label>
                </div>
              </div>
              <div class="mt-4 mb-4 p-3 align-center rt-sidebar-last-ele">
                <a href="#" class="btn btn-icon icon-left btn-primary btn-restore-theme">
                  <i class="fas fa-undo"></i> Restore Default
                </a>
              </div>
            </div>
          </div>
        </div>--%>
      </div>
           
        </form>
    
</asp:Content>
