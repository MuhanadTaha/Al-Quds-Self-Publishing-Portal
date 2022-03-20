<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Users.Master" AutoEventWireup="true" CodeBehind="UserMyAccount.aspx.cs" Inherits="Alquds_book_store.Users.UserMyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
    
        <p class="lead">&nbsp;</p>
            <p class="lead" style="text-decoration: underline"><strong>User Main Area. </strong> </p>
            <p class="lead" style="text-decoration: underline"><strong>My Account info</strong></p>
    </div>

    <div class="row">
     
        <div class="col-md-4">
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserProfileID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="339px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="UserProfileID" HeaderText="UserProfileID" ReadOnly="True" SortExpression="UserProfileID" />
                        <asp:BoundField DataField="UserFullName" HeaderText="Full Name" SortExpression="UserFullName" />
                        <asp:CommandField ShowSelectButton="True" SelectText="Details" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </p>
            </div>
        </div>
             <div class="row">
     
        <div class="col-md-4">

            <hr />

            <p>
                &nbsp;</p>
            <p>
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="UserProfileID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="UserProfileID" HeaderText="UserProfileID" InsertVisible="False" ReadOnly="True" SortExpression="UserProfileID" />
                        <asp:BoundField DataField="UserFullName" HeaderText="UserFullName" SortExpression="UserFullName" />
                        <asp:BoundField DataField="UserDOB" HeaderText="UserDOB" SortExpression="UserDOB" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="NationalityID" HeaderText="NationalityID" SortExpression="NationalityID" />
                
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                        <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" Width="400px" runat="server" ImageUrl='<%# Eval("Photo", "~\\Images\\{0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                </asp:DetailsView>
            </p>
               </div>
        </div>
             <div class="row">
     
        <div class="col-md-4">


            <p>
                <asp:Label ID="Label8" runat="server" style="font-weight: 700" Text="Add your Profile Info:"></asp:Label>
            </p>
            <p>
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="UserProfileID" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" OnItemInserted="DetailsView2_ItemInserted" OnItemInserting="DetailsView2_ItemInserting" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="UserProfileID" HeaderText="UserProfileID" ReadOnly="True" SortExpression="UserProfileID" InsertVisible="False" />
                        <asp:BoundField DataField="UserFullName" HeaderText="UserFullName" SortExpression="UserFullName" />
                        <asp:BoundField DataField="UserDOB" HeaderText="UserDOB" SortExpression="UserDOB" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="NationalityID" HeaderText="NationalityID" SortExpression="NationalityID" />
            
                        <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Photo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [UserProfile] WHERE ([UserID] = @UserID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserID" SessionField="Id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [UserProfile] WHERE [UserProfileID] = @original_UserProfileID AND (([UserFullName] = @original_UserFullName) OR ([UserFullName] IS NULL AND @original_UserFullName IS NULL)) AND (([UserDOB] = @original_UserDOB) OR ([UserDOB] IS NULL AND @original_UserDOB IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([MobileNo] = @original_MobileNo) OR ([MobileNo] IS NULL AND @original_MobileNo IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([NationalityID] = @original_NationalityID) OR ([NationalityID] IS NULL AND @original_NationalityID IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL))" InsertCommand="INSERT INTO [UserProfile] ([UserFullName], [UserDOB], [City], [Address], [MobileNo], [Gender], [NationalityID], [UserID], [Photo]) VALUES (@UserFullName, @UserDOB, @City, @Address, @MobileNo, @Gender, @NationalityID, @UserID, @Photo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserProfile] WHERE ([UserProfileID] = @UserProfileID)" UpdateCommand="UPDATE [UserProfile] SET [UserFullName] = @UserFullName, [UserDOB] = @UserDOB, [City] = @City, [Address] = @Address, [MobileNo] = @MobileNo, [Gender] = @Gender, [NationalityID] = @NationalityID, [UserID] = @UserID, [Photo] = @Photo WHERE [UserProfileID] = @original_UserProfileID AND (([UserFullName] = @original_UserFullName) OR ([UserFullName] IS NULL AND @original_UserFullName IS NULL)) AND (([UserDOB] = @original_UserDOB) OR ([UserDOB] IS NULL AND @original_UserDOB IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([MobileNo] = @original_MobileNo) OR ([MobileNo] IS NULL AND @original_MobileNo IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([NationalityID] = @original_NationalityID) OR ([NationalityID] IS NULL AND @original_NationalityID IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserProfileID" Type="Int32" />
                        <asp:Parameter Name="original_UserFullName" Type="String" />
                        <asp:Parameter Name="original_UserDOB" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_MobileNo" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_NationalityID" Type="String" />
                 
                        <asp:Parameter Name="original_UserID" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserFullName" Type="String" />
                        <asp:Parameter Name="UserDOB" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="MobileNo" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="NationalityID" Type="String" />
                     
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="UserProfileID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserFullName" Type="String" />
                        <asp:Parameter Name="UserDOB" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="MobileNo" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="NationalityID" Type="String" />
                 
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                        <asp:Parameter Name="original_UserProfileID" Type="Int32" />
                        <asp:Parameter Name="original_UserFullName" Type="String" />
                        <asp:Parameter Name="original_UserDOB" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_MobileNo" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_NationalityID" Type="String" />
                 
                        <asp:Parameter Name="original_UserID" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [UserProfile] WHERE [UserProfileID] = @original_UserProfileID AND (([UserFullName] = @original_UserFullName) OR ([UserFullName] IS NULL AND @original_UserFullName IS NULL)) AND (([UserDOB] = @original_UserDOB) OR ([UserDOB] IS NULL AND @original_UserDOB IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([MobileNo] = @original_MobileNo) OR ([MobileNo] IS NULL AND @original_MobileNo IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([NationalityID] = @original_NationalityID) OR ([NationalityID] IS NULL AND @original_NationalityID IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL))" InsertCommand="INSERT INTO [UserProfile] ([UserFullName], [UserDOB], [City], [Address], [MobileNo], [Gender], [NationalityID], [UserID], [Photo]) VALUES (@UserFullName, @UserDOB, @City, @Address, @MobileNo, @Gender, @NationalityID, @UserID, @Photo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserProfile]" UpdateCommand="UPDATE [UserProfile] SET [UserFullName] = @UserFullName, [UserDOB] = @UserDOB, [City] = @City, [Address] = @Address, [MobileNo] = @MobileNo, [Gender] = @Gender, [NationalityID] = @NationalityID, [UserID] = @UserID, [Photo] = @Photo WHERE [UserProfileID] = @original_UserProfileID AND (([UserFullName] = @original_UserFullName) OR ([UserFullName] IS NULL AND @original_UserFullName IS NULL)) AND (([UserDOB] = @original_UserDOB) OR ([UserDOB] IS NULL AND @original_UserDOB IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([MobileNo] = @original_MobileNo) OR ([MobileNo] IS NULL AND @original_MobileNo IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([NationalityID] = @original_NationalityID) OR ([NationalityID] IS NULL AND @original_NationalityID IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserProfileID" Type="Int32" />
                        <asp:Parameter Name="original_UserFullName" Type="String" />
                        <asp:Parameter Name="original_UserDOB" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_MobileNo" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_NationalityID" Type="String" />
           
                        <asp:Parameter Name="original_UserID" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserFullName" Type="String" />
                        <asp:Parameter Name="UserDOB" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="MobileNo" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="NationalityID" Type="String" />
           
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserFullName" Type="String" />
                        <asp:Parameter Name="UserDOB" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="MobileNo" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="NationalityID" Type="String" />
                      
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                        <asp:Parameter Name="original_UserProfileID" Type="Int32" />
                        <asp:Parameter Name="original_UserFullName" Type="String" />
                        <asp:Parameter Name="original_UserDOB" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_MobileNo" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_NationalityID" Type="String" />
              
                        <asp:Parameter Name="original_UserID" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
    </div>

</asp:Content>