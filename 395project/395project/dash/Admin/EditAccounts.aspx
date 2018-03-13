﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="EditAccounts.aspx.cs" Inherits="_395project.dash.Admin.EditAccounts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <h2 id="head" runat="server">Edit Account</h2>
    <hr />
       <link href="/Content/dashboard.css" rel="stylesheet" />
    <h2 class="page-title"><%: Title %></h2>
    <p class="error-text">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <asp:ValidationSummary runat="server" CssClass="error-text" />

    <h2 id="role" runat="server">Edit Role: (Current: None)</h2>
    <div class="panel-body">
         <div class="row">
              <div class="col-lg-6">    
                    <div class="row" style="padding-bottom:30px;">
                        <div class="col-md-6">
				            <asp:DropDownList ID="RoleDropDown" runat="server" Height="40px" DataSourceID="Roles" DataTextField="Name" DataValueField="Name" CssClass="form-control"></asp:DropDownList>
				            <asp:SqlDataSource ID="Roles" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Name] FROM [AspNetRoles] ORDER BY [Id]"></asp:SqlDataSource>
                        </div>
                        <div>
                            <asp:Button runat="server" OnClick="ChangeRole" Text="Confirm" CssClass="mybutton" />
                        </div>
                    </div>
               </div>
          </div>
    </div>

       
    <hr />
    <h2>Facilitators:</h2>
    <!-- CREATE ACCOUNT: Label -->

            <div class="panel-body">
                <div class="row">
                      <div class="col-lg-6">
                          <div class="row">
                              <div class="col-md-6">
                                    <h2>Edit</h2>
                                  </div>
                              </div>
                            <div class="row" style="padding-top:30px; padding-bottom:5px;">
                                  <div class="col-md-6">
			                            <asp:Label runat="server" CssClass="input-header" Font-Bold="true">Select Facilitator</asp:Label>
                                  </div>
                            </div>
                            <div class="row">
                                  <div class="col-md-6">
                                       <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Facilitators" DataTextField="FullName" DataValueField="FullName" CssClass="form-control" Width="250px"></asp:DropDownList>
                                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT FullName FROM Facilitators WHERE (Id = @CurrentUser)">       
                                       </asp:SqlDataSource>
                                  </div>
                            </div>
                             <div class="row">
                                    <div class="col-md-6">
			                            <asp:Label runat="server" AssociatedControlID="FacilitatorFirst" CssClass="input-header">First Name</asp:Label>
                                    </div>
                             </div>
			                <div class="row">
                                    <div class="col-md-6">
                                         <asp:TextBox runat="server" ID="FacilitatorFirst" CssClass="form-control" Width="250px"/>
                                     </div>
                                     <div>
                                        <asp:Button ID="Button5" runat="server" Text="Rename" Height="35px" CssClass="mybutton"  />
                                     </div>
			                </div>
                            <div class="row">
                                <div class="col-md-6">
			                        <asp:Label runat="server" AssociatedControlID="FacilitatorLast" CssClass="input-header">Last Name</asp:Label>
                                </div>
                            </div>
			                <div class="row">
                                <div class="col-md-6">
                                    <asp:TextBox runat="server" ID="FacilitatorLast" CssClass="form-control" Width="250px" />
                                </div>
                                <div>
                                    <asp:Button ID="Button6" runat="server" Text="Rename" Height="35px" CssClass="mybutton"  />
                                </div>
			                </div>


                      </div>
                            <div class="row">
                                <div class="col-md-6" style="padding-bottom: 30px;">
                                    <h2>Remove</h2>
                               </div>
                                <div class="thing" style="padding-top: 30px; padding-bottom: 30px;">
                                    <div class="row">
                                        <div class="col-md-6">
			                                <asp:Label runat="server" CssClass="input-header" Font-Bold="true">Select Facilitator</asp:Label>
                                        </div>
                           
                                   <div class="row">
                                        <div class="col-md-6">
                                             <asp:DropDownList ID="FacilitatorDropDown" runat="server" DataSourceID="Facilitators" DataTextField="FullName" DataValueField="FullName" CssClass="form-control" Width="300px"></asp:DropDownList>
                                             <asp:SqlDataSource ID="Facilitators" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT FullName FROM Facilitators WHERE (Id = @CurrentUser)">
                                                
                                            </asp:SqlDataSource>
                                            </div>
                                       <div class="row">
                                           <div class="col-md-6" style="margin-top: 30px;">
                                               
                                                <asp:Button runat="server" OnClick="RemoveFacilitator" Text="Remove Facilitator" CssClass="mybutton" />
                                          </div>
                                       </div>
                                   </div>
                                </div>
                                    
                           </div>
		                       
                         </div>
                    </div>
                </div>
		<hr />
        <h2>Children: </h2>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">
                    <div class="row">
                           <div class="col-md-6">
                                 <h2>Edit</h2>
                           </div>
                    </div>
                    <div class="row" style="padding-top:30px; padding-bottom:5px;">
                          <div class="col-md-6">
			                    <asp:Label runat="server" CssClass="input-header" Font-Bold="true">Select Child</asp:Label>
                          </div>
                    </div>
                    <div class="row">
                          <div class="col-md-6">
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Children" DataTextField="FullName" DataValueField="FullName" CssClass="form-control" Width="250px"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT (FirstName + ' ' + LastName) AS FullName FROM Children WHERE (Id = @CurrentUser)">
                                </asp:SqlDataSource>
                          </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
			                <asp:Label runat="server" AssociatedControlID="ChildFirst" CssClass="input-header">Child First Name</asp:Label>
                        </div>
                    </div>
			        <div class="row">
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="ChildFirst" Width="250px" CssClass="form-control" />
                        </div>
                        <div>
                            <asp:Button ID="Button2" runat="server" Text="Rename" Height="35px" CssClass="mybutton" />
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6">
			                <asp:Label runat="server" AssociatedControlID="ChildLast" CssClass="input-header">Child Last Name</asp:Label>
                        </div>
                    </div>
			        <div class="row">
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="ChildLast" Width="250px" CssClass="form-control" />
                        </div>
                        <div>
                            <asp:Button ID="Button1" runat="server" Text="Rename" Height="35px" CssClass="mybutton"  />
                        </div>
			        </div>
                    <div class="row">
                        <div class="col-md-6">
			                <asp:Label runat="server" AssociatedControlID="Class" CssClass="input-header">Class</asp:Label>
                        </div>
                    </div>
			        <div class="row">
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="Class" Width="250px" CssClass="form-control" />
                        </div>
                        <div>
                            <asp:Button ID="Button3" runat="server" Text="Rename" Height="35px" CssClass="mybutton"  />
                        </div>
			        </div>
                    <div class="row">
                        <div class="col-md-6">
			                <asp:Label runat="server" AssociatedControlID="Grade" CssClass="input-header">Grade</asp:Label>
                        </div>
                    </div>
			        <div class="row">
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="Grade" Width="250px" CssClass="form-control" />
                        </div>
                        <div>
                            <asp:Button ID="Button4" runat="server" Text="Rename" Height="35px" CssClass="mybutton"  />
                        </div>
			        </div>
                </div>
                <div class="col-lg-6">
                        <div class="row">
                               <div class="col-md-6">
                                     <h2>Remove</h2>
                               </div>
                        </div>
                        <div class="row" style="padding-top:30px; padding-bottom:5px;">
                               <div class="col-md-6">
			                         <asp:Label runat="server" CssClass="input-header" Font-Bold="true">Select Child</asp:Label>
                               </div>
                        </div>
                        <div class="row">
                               <div class="col-md-6">
                                     <asp:DropDownList ID="ChildrenDropDown" runat="server" DataSourceID="Children" DataTextField="FullName" DataValueField="FullName" CssClass="form-control" Width="300px"></asp:DropDownList>
                                      <asp:SqlDataSource ID="Children" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT (FirstName + ' ' + LastName) AS FullName FROM Children WHERE (Id = @CurrentUser)">
                                      </asp:SqlDataSource>
                                </div>
                        </div>
		                <div class="thing" style="padding-top: 30px;"">
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Button runat="server" OnClick="RemoveChild" Text="Remove Child" CssClass="mybutton" />
                                </div>
                            </div>
                        </div>

                    </div>
              </div>  
        </div>

    <br>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
