<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditUsers.aspx.cs" Inherits="Alquds_book_store.Admin.EditUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
        <h2>Admin Main Area: Edit User</h2>
        <p class="lead">.</p>
        <p><a href="#" >
            </a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>change role for the user:
                </h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource4" Width="593px">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    </Columns>
                </asp:GridView>    
             </p>
            
        </div>
         </div>
            <div class="row">


        <div class="col-md-4">
              <h2>&nbsp;</h2>
          <div class="card">
            <div class="cardTitle">
                <h3 style="margin: 0">User's Roles</h3>
            </div>
            <asp:CheckBoxList ID="ChkListRoles" runat="server" Style="margin-left: 10px" DataSourceID="SqlChkListRoles" DataTextField="Name" DataValueField="Id"></asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlChkListRoles" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AspNetRoles]"></asp:SqlDataSource>
            <asp:Button ID="BtnSaveRoles" runat="server" Text="Save" CssClass="btn btn-default" Style="margin: 10px" OnClick="BtnSaveRoles_Click" />
            <asp:Panel ID="PanelConfirmRolesSave" runat="server" CssClass="alert alert-success" EnableViewState="false" Style="display: inline; padding: 10px" Visible="false">
                <span class="fa fa-check"></span>&nbsp;User's Roles updated successfuly.
            </asp:Panel>

        </div>
        <div class="card">
            <div class="cardTitle" style="">
                <h3 style="margin: 0">Create a new Role</h3>
            </div>

            <div class="form-horizontal" id="formAddRole" style="margin-left: 7px">

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="TxtNewRole" CssClass="col-md-3 control-label">Role Name</asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox runat="server" ID="TxtNewRole" CssClass="form-control" ClientIDMode="Static" TextMode="SingleLine" autocomplete="off" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" Display="Dynamic" ValidationGroup="role" runat="server" ControlToValidate="TxtNewRole" ErrorMessage="Role Name required!"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-3 col-md-9">
                        <asp:Button ID="BtnAddRole" ValidationGroup="role" runat="server" Text="Add" CssClass="btn btn-default" OnClick="BtnAddRole_Click" />
                        <asp:Panel ID="PanelErrorRoleExist" runat="server" CssClass="alert alert-danger" Visible="false" EnableViewState="false" Style="display: inline-block; margin-left: 5px; padding: 7px">
                            <span class="fa fa-exclamation-triangle"></span>&nbsp;
         <asp:Label runat="server" ClientIDMode="Static" ID="LblRoleDuplicated" Text="Role name already exist!"></asp:Label>

                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="col-md-4">
            <h2></h2>
            <p>
                
                &nbsp;</p>
        </div>
    </div><asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"  SelectCommand="SELECT [UserName], [Email], [Id] FROM [AspNetUsers] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="UserId" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

</asp:Content>