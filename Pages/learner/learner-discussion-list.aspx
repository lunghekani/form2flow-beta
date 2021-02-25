<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-discussion-list.aspx.vb" Inherits="LearnerManagementSystem.learner_discussion_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="needs-validation" novalidate="">
            <div class="main-content">
        <section class="section">

          <!-- Page Heading -->
          <div class="section-body">
            <div class="row mt-4">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                      <h4 id="lblCategory" runat="server">All Discussions</h4>
                      <div class="card-header-action text-right">
                          <a href="learner-discussion-add.aspx" class="btn btn-sm btn-primary"><i class="fas fa-plus fa-sm text-white-50"></i> New Discussion</a>
                      </div>
                      <%--<div class="card-header-action text-right">
                          <div class="search-element form-inline">
                            <input class="form-control" type="search" placeholder="Search" aria-label="Search" data-width="200">
                             <button class="btn" type="submit">
                             <i class="fas fa-search"></i>
                             </button>
                          </div>
                      </div>--%>
                  </div>

            <!-- card body-->
                  <div class="card-body">
                    <div class="clearfix mb-3"></div>
                    <div class="table-responsive">
                        <asp:GridView ID="gvDiscussions" runat="server" 
                            CssClass="table table-striped"
                            AlternatingRowStyle-CssClass="bottomBorder" 
                            RowStyle-CssClass="bottomBorder" 
                            EmptyDataText="No Appeals Available."
                            Width="100%"
                            AutoGenerateColumns = "false"
                            Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                            OnPageIndexChanging="gvDiscussions_PageIndexChanging"
                            OnRowCommand="gvDiscussions_RowCommand"
                            OnRowDataBound="gvDiscussions_RowDataBound"
                            AlternatingRowStyle-BorderWidth="0px"
                            align-content="center" PageSize="10"
                            >
                            <Columns >
                                <asp:TemplateField >
                                    <ItemTemplate>
                                        <asp:Button CommandName="View" runat="server" Text="View" CssClass="btn btn-warning btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Title" HeaderText="Title" />
                                <asp:BoundField DataField="Course" HeaderText="Course" />
                                <asp:BoundField DataField="Module" HeaderText="Module" />    
                                <asp:BoundField DataField="Topic" HeaderText="Topic" />
                                <asp:BoundField DataField="Author" HeaderText="Author" /> 
                                <asp:BoundField DataField="Date Created" HeaderText="Date Created" />
                            </Columns>
                            <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                        </asp:GridView>
                    </div>
                  </div>

                     <!--return button-->
                    <div class="footer">
                      <div class="row">
                       <div class="col justify-content-aroundW" align="right">
                        <div class="form-group col-sm-3 col-md-3 col-lg-3">
                           <asp:Button ID="BtnReturn" CssClass="btn btn-primary btn-lg btn-block" Text="Return" runat="server" OnClick="BtnReturn_Click"></asp:Button>  
                        </div>
                       </div>                                           
                      </div>
                     </div>
                     <!-- end of button-->
                </div>

              </div>
            </div>
          </div>
        </section>
        
      </div>    
     </form>
</asp:Content>
