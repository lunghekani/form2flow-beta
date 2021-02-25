<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="admin-group-info.aspx.vb" Inherits="Form2Flow.admin_group_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="needs-validation" novalidate="">
        <div class="main-content">
            <section class="section">
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-lg-10 offset-lg-1 col-md-10 offset-md-1 col-sm-12 col-xs-12">
                            <div class="login-brand">
                                Group Info
                            </div>
                            <%-- MULTIVIEW LINK BUTTONS --%>
                            <div class="row nav nav-pills" align="center">

                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToGroupInfo" runat="server" class="btn btn-primary btn-block cancel" style="width: 90%;" onserverclick="btnToScreen1_Click" tabindex="4">1. Info</button>
                                </div>

                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToGroupUsers" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen2_Click" tabindex="4">2. Users</button>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToGroupCourses" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen3_Click" tabindex="4">3. Courses</button>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToGroupFiles" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen4_Click" tabindex="4">4. Files</button>
                                </div>
                            </div>
                            <br />
                            <asp:MultiView ID="mvGroup" runat="server">
                                <!-- Screeen 1 - Group Info -->
                                <asp:View ID="viewGroupInfo" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>Group Info</h4>
                                        </div>
                                        <div class="card-body">

                                            <!-- Name and Group-key -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="email">Name</label>
                                                    <input id="txtGroupName" runat="server" type="text" class="form-control" name="catName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the group name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label>Group-Key</label>
                                                    <input id="txtGroupKey" runat="server" type="text" class="form-control" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the group-key
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Description -->
                                            <div class="row">
                                                <div class="form-group col-12">
                                                    <label>Description</label>
                                                    <textarea id="txtDescription" runat="server"
                                                        class="form-control" placeholder="Short description up to 500 characters" maxlength="500" required></textarea>
                                                    <div class="invalid-feedback">
                                                        Short description up to 500 characters
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <asp:Label ID="lblError1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnCancel" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnCancel_ServerClick" tabindex="4">Cancel</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen1" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnSubmitScreen1_Click" TabIndex="4"></asp:Button>
                                                </div>
                                            </div>

                                        </div>

                                    </div>

                                </asp:View>

                                <!-- Screen 2 - Users -->
                                <asp:View ID="viewGroupUsers" runat="server">
                                    <div class="row mt-4">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h4 id="lblUser" runat="server">Users</h4>
                                                    <div class="card-header-action text-right">
                                                        <a href="#" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#ModAddUser"><i class="fas fa-plus fa-sm text-white-50"></i> Add User</a>
                                                        <%--<a href="../auth/register-user.aspx" class="btn btn-sm btn-primary"><i class="fas fa-plus fa-sm text-white-50"></i> Add User</a>--%>
                                                    </div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="clearfix mb-3"></div>
                                                    <div class="table-responsive">
                                                        <asp:GridView ID="gvUsers" runat="server"
                                                            CssClass="table table-striped"
                                                            AlternatingRowStyle-CssClass="bottomBorder"
                                                            RowStyle-CssClass="bottomBorder"
                                                            EmptyDataText="No Users Available."
                                                            Width="100%"
                                                            AutoGenerateColumns="false"
                                                            Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                                                            OnPageIndexChanging="gvUsers_PageIndexChanging"
                                                            OnRowCommand="gvUsers_RowCommand"
                                                            OnRowDataBound="gvUsers_RowDataBound"
                                                            AlternatingRowStyle-BorderWidth="0px"
                                                            align-content="center" PageSize="10">
                                                            <Columns>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <%--<asp:Button ID="btnSelect" runat="server" Text="VIEW" CommandName="Select" ItemStyle-HorizontalAlign="Center" Width="90%" CssClass="btn btn-primary btn-block valid" OnClick="Customerlist_SelectedIndexChanged" />--%>
                                                                        <asp:Button ID="btnView" CommandName="Remove" runat="server" Text="Remove" CssClass="btn btn-warning btn-block valid" UseSubmitBehavior="false" OnClick="btnView_Click" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="#" HeaderText="#" />
                                                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                                                <asp:BoundField DataField="Email" HeaderText="E-mail" ControlStyle-CssClass="max-texts" />
                                                                <asp:BoundField DataField="UserType" HeaderText="User Type" />
                                                            </Columns>
                                                            <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                        </asp:GridView>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                                <!-- Screen 3 - Courses -->
                                <asp:View ID="viewCourses" runat="server">
                                    <div class="row mt-4">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h4 id="lblCategory" runat="server">Courses</h4>
                                                    <div class="card-header-action text-right">
                                                        <a href="#" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#ModAddCourse"><i class="fas fa-plus fa-sm text-white-50"></i> Add Course</a>
                                                    </div>
                                                </div>
                                                <div class="card-body">

                                                    <div class="clearfix mb-3"></div>
                                                    <div class="table-responsive">
                                                        <asp:GridView ID="gvCourses" runat="server"
                                                            CssClass="table table-striped"
                                                            AlternatingRowStyle-CssClass="bottomBorder"
                                                            RowStyle-CssClass="bottomBorder"
                                                            EmptyDataText="No Courses Available."
                                                            Width="100%"
                                                            AutoGenerateColumns="false"
                                                            Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                                                            OnPageIndexChanging="gvCourses_PageIndexChanging"
                                                            OnRowCommand="gvCourses_RowCommand"
                                                            OnRowDataBound="gvCourses_RowDataBound"
                                                            AlternatingRowStyle-BorderWidth="0px"
                                                            align-content="center" PageSize="10">
                                                            <Columns>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:Button CommandName="Remove" runat="server" Text="Remove" CssClass="btn btn-warning btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="ID" HeaderText="#" />
                                                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                                                <asp:BoundField DataField="Category" HeaderText="Category" />

                                                            </Columns>
                                                            <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                        </asp:GridView>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                                <!-- Screen 4 - Files -->
                                <asp:View ID="viewGroupFiles" runat="server">
                                    <div class="row mt-4">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h4 id="H1" runat="server">Files</h4>
                                                    <div class="card-header-action text-right">
                                                        <a href="#" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#ModAddFile"><i class="fas fa-plus fa-sm text-white-50"></i> Add File</a>
                                                    </div>
                                                </div>
                                                <div class="card-body">

                                                    <div class="clearfix mb-3"></div>
                                                    <div class="table-responsive">
                                                        <asp:GridView ID="gvFiles" runat="server"
                                                            CssClass="table table-striped"
                                                            AlternatingRowStyle-CssClass="bottomBorder"
                                                            RowStyle-CssClass="bottomBorder"
                                                            EmptyDataText="No Files Available."
                                                            Width="100%"
                                                            AutoGenerateColumns="false"
                                                            Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                                                            OnPageIndexChanging="gvFiles_PageIndexChanging"
                                                            OnRowCommand="gvFiles_RowCommand"
                                                            OnRowDataBound="gvFiles_RowDataBound"
                                                            AlternatingRowStyle-BorderWidth="0px"
                                                            align-content="center" PageSize="10">
                                                            <Columns>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:Button CommandName="Download" runat="server" Text="Download" CssClass="btn btn-success  btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                        <asp:Button CommandName="Remove" runat="server" Text="Remove" CssClass="btn btn-warning btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="#" HeaderText="#" />
                                                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                                                <asp:BoundField DataField="Uploaded" HeaderText="Uploaded" />

                                                            </Columns>
                                                            <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                        </asp:GridView>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                            </asp:MultiView>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- Add User Modal -->
        <div class="modal fade" id="ModAddUser" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Add User</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <div class="row">
                            <div class="form-group col-md-12 col-12">
                                <label for="phone">User</label>
                                <asp:ListBox ID="ddlUsers" runat="server" CssClass="form-control select2" Width="100%" SelectionMode="Multiple"></asp:ListBox>
                                <div class="invalid-feedback">
                                    Please select a user to add
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="form-group col-md-12 col-12">
                                <asp:Label ID="lblErrorModUsers" runat="server" Text="" Visible="false"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer bg-whitesmoke br">
                        <button type="button" id="btnAddUser" runat="server" class="btn btn-primary" onserverclick="btnAddUser_ServerClick">Add</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    </div>

                </div>
            </div>
        </div>

        <!-- Add Course Modal -->
        <div class="modal fade" id="ModAddCourse" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle1">Add Course</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <div class="row">
                            <div class="form-group col-md-12 col-12">
                                <label for="phone">Course</label>
                                <asp:ListBox ID="ddlCourses" runat="server" CssClass="form-control select2" Width="100%" SelectionMode="Multiple"></asp:ListBox>
                                <div class="invalid-feedback">
                                    Please select a course to add
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="form-group col-md-12 col-12">
                                <asp:Label ID="lblErrorModCourses" runat="server" Text="" Visible="false"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer bg-whitesmoke br">
                        <button type="button" id="btnAddCourse" runat="server" class="btn btn-primary" onserverclick="btnAddCourse_ServerClick">Add</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    </div>

                </div>
            </div>
        </div>

        <!-- Add File Modal -->
        <div class="modal fade" id="ModAddFile" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle2">Add File</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <div class="row">
                            <div class="form-group col-md-12 col-12">
                                <label for="website">File</label>
                                <asp:FileUpload ID="upFile" runat="server" type="file" class="form-control" required="" autofocus="" />
                                <div class="invalid-feedback">
                                    Please upload a file
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="form-group col-md-12 col-12">
                                <asp:Label ID="lblErrorModFiles" runat="server" Text="" Visible="false"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer bg-whitesmoke br">
                        <button type="button" id="btnAddFile" runat="server" class="btn btn-primary" onserverclick="btnAddFile_ServerClick">Add</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    </div>

                </div>
            </div>
        </div>



    </form>
</asp:Content>
