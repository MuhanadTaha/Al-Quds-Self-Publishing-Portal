<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="Alquds_book_store.Admin.AdminUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
        <h2>Manage Users</h2>
        <p class="lead"></p>
        <p><a href="#" >
            </a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>All users</h2>
            <p>
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="792px" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:CommandField ShowSelectButton="True" SelectText="Details" />
                          <asp:TemplateField ShowHeader="False">
                          <ItemTemplate>
                              <asp:LinkButton ID="LinkButton2"     CommandName="UserRoles" CommandArgument='<%#Eval("Id") %>'              runat="server">UserRoles</asp:LinkButton>
                          </ItemTemplate>
                      </asp:TemplateField>


                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                
            </p>
            
        </div>
        <div class="col-md-4">
              <h2></h2>
            <p>
                
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserProfileID" DataSourceID="SqlDataSource2" Height="50px" Width="245px">
                    <Fields>
                        <asp:BoundField DataField="UserProfileID" HeaderText="UserProfileID" InsertVisible="False" ReadOnly="True" SortExpression="UserProfileID" />
                        <asp:BoundField DataField="UserFullName" HeaderText="UserFullName" SortExpression="UserFullName" />
                        <asp:BoundField DataField="UserDOB" HeaderText="UserDOB" SortExpression="UserDOB" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="NationalID" HeaderText="NationalID" SortExpression="NationalID" />
                        <asp:BoundField DataField="Document1" HeaderText="Document1" SortExpression="Document1" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                        <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Fields>
                </asp:DetailsView>
                
            </p>
        </div>
        <div class="col-md-4">
            <h2></h2>
            <p>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AspNetUsers]" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (@Id, @Email, @EmailConfirmed, @PasswordHash, @SecurityStamp, @PhoneNumber, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEndDateUtc, @LockoutEnabled, @AccessFailedCount, @UserName)" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [EmailConfirmed] = @EmailConfirmed, [PasswordHash] = @PasswordHash, [SecurityStamp] = @SecurityStamp, [PhoneNumber] = @PhoneNumber, [PhoneNumberConfirmed] = @PhoneNumberConfirmed, [TwoFactorEnabled] = @TwoFactorEnabled, [LockoutEndDateUtc] = @LockoutEndDateUtc, [LockoutEnabled] = @LockoutEnabled, [AccessFailedCount] = @AccessFailedCount, [UserName] = @UserName WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                        <asp:Parameter Name="PasswordHash" Type="String" />
                        <asp:Parameter Name="SecurityStamp" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                        <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                        <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                        <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                        <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                        <asp:Parameter Name="UserName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                        <asp:Parameter Name="PasswordHash" Type="String" />
                        <asp:Parameter Name="SecurityStamp" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                        <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                        <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                        <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                        <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [UserProfile] WHERE [UserProfileID] = @original_UserProfileID AND (([UserFullName] = @original_UserFullName) OR ([UserFullName] IS NULL AND @original_UserFullName IS NULL)) AND (([UserDOB] = @original_UserDOB) OR ([UserDOB] IS NULL AND @original_UserDOB IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([MobileNo] = @original_MobileNo) OR ([MobileNo] IS NULL AND @original_MobileNo IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([NationalID] = @original_NationalID) OR ([NationalID] IS NULL AND @original_NationalID IS NULL)) AND (([Document1] = @original_Document1) OR ([Document1] IS NULL AND @original_Document1 IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL))" InsertCommand="INSERT INTO [UserProfile] ([UserFullName], [UserDOB], [City], [Address], [MobileNo], [Gender], [NationalID], [Document1], [UserID], [Photo]) VALUES (@UserFullName, @UserDOB, @City, @Address, @MobileNo, @Gender, @NationalID, @Document1, @UserID, @Photo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserProfile] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [UserProfile] SET [UserFullName] = @UserFullName, [UserDOB] = @UserDOB, [City] = @City, [Address] = @Address, [MobileNo] = @MobileNo, [Gender] = @Gender, [NationalID] = @NationalID, [Document1] = @Document1, [UserID] = @UserID, [Photo] = @Photo WHERE [UserProfileID] = @original_UserProfileID AND (([UserFullName] = @original_UserFullName) OR ([UserFullName] IS NULL AND @original_UserFullName IS NULL)) AND (([UserDOB] = @original_UserDOB) OR ([UserDOB] IS NULL AND @original_UserDOB IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([MobileNo] = @original_MobileNo) OR ([MobileNo] IS NULL AND @original_MobileNo IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([NationalID] = @original_NationalID) OR ([NationalID] IS NULL AND @original_NationalID IS NULL)) AND (([Document1] = @original_Document1) OR ([Document1] IS NULL AND @original_Document1 IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserProfileID" Type="Int32" />
                        <asp:Parameter Name="original_UserFullName" Type="String" />
                        <asp:Parameter Name="original_UserDOB" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_MobileNo" Type="Int32" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_NationalID" Type="Int32" />
                        <asp:Parameter Name="original_Document1" Type="String" />
                        <asp:Parameter Name="original_UserID" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserFullName" Type="String" />
                        <asp:Parameter Name="UserDOB" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="MobileNo" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="NationalID" Type="Int32" />
                        <asp:Parameter Name="Document1" Type="String" />
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="UserID" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserFullName" Type="String" />
                        <asp:Parameter Name="UserDOB" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="MobileNo" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="NationalID" Type="Int32" />
                        <asp:Parameter Name="Document1" Type="String" />
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                        <asp:Parameter Name="original_UserProfileID" Type="Int32" />
                        <asp:Parameter Name="original_UserFullName" Type="String" />
                        <asp:Parameter Name="original_UserDOB" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_MobileNo" Type="Int32" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_NationalID" Type="Int32" />
                        <asp:Parameter Name="original_Document1" Type="String" />
                        <asp:Parameter Name="original_UserID" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
            </p>
        </div>
    </div>

</asp:Content>

