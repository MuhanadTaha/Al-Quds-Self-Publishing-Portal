<%@ Page Title="" Language="C#" MasterPageFile="~/Authors/Author.Master" AutoEventWireup="true" CodeBehind="AuthorMyAccount.aspx.cs" Inherits="Alquds_book_store.Authors.AuthorMyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
    
        <p class="lead">&nbsp;</p>
            <p class="lead" style="text-decoration: underline"><strong>Author Main Area. </strong> </p>
            <p class="lead" style="text-decoration: underline"><strong>My Account Info</strong></p>
    </div>

    <div class="row">
     
        <div class="col-md-4">
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AuthorID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="398px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" ReadOnly="True" SortExpression="AuthorID" InsertVisible="False" />
                        <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
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
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="AuthorID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" InsertVisible="False" ReadOnly="True" SortExpression="AuthorID" />
                        <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                        <asp:BoundField DataField="DoB" HeaderText="DoB" SortExpression="DoB" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="NationalID" HeaderText="NationalID" SortExpression="NationalID" />
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
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
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
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="AuthorID" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" OnItemInserted="DetailsView2_ItemInserted" OnItemInserting="DetailsView2_ItemInserting" Width="387px">
                    <Fields>
                        <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" ReadOnly="True" SortExpression="AuthorID" InsertVisible="False" />
                        <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                        <asp:BoundField DataField="DoB" HeaderText="DoB" SortExpression="DoB" />
                        <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City" SortExpression="City">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="NationalID" HeaderText="NationalID" SortExpression="NationalID" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Authors] WHERE ([UserID] = @UserID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserID" SessionField="Id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Authors] WHERE [AuthorID] = @original_AuthorID AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL)) AND (([DoB] = @original_DoB) OR ([DoB] IS NULL AND @original_DoB IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([NationalID] = @original_NationalID) OR ([NationalID] IS NULL AND @original_NationalID IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL)) AND [UserID] = @original_UserID" InsertCommand="INSERT INTO [Authors] ([AuthorName], [DoB], [Gender], [City], [Address], [Mobile], [NationalID], [Photo], [UserID]) VALUES (@AuthorName, @DoB, @Gender, @City, @Address, @Mobile, @NationalID, @Photo, @UserID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Authors] WHERE ([AuthorID] = @AuthorID)" UpdateCommand="UPDATE [Authors] SET [AuthorName] = @AuthorName, [DoB] = @DoB, [Gender] = @Gender, [City] = @City, [Address] = @Address, [Mobile] = @Mobile, [NationalID] = @NationalID, [Photo] = @Photo, [UserID] = @UserID WHERE [AuthorID] = @original_AuthorID AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL)) AND (([DoB] = @original_DoB) OR ([DoB] IS NULL AND @original_DoB IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([NationalID] = @original_NationalID) OR ([NationalID] IS NULL AND @original_NationalID IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL)) AND [UserID] = @original_UserID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_AuthorID" Type="Int32" />
                        <asp:Parameter Name="original_AuthorName" Type="String" />
                        <asp:Parameter Name="original_DoB" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Mobile" Type="String" />
                        <asp:Parameter Name="original_NationalID" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                        <asp:Parameter Name="original_UserID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="AuthorName" Type="String" />
                        <asp:Parameter Name="DoB" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="NationalID" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                        <asp:Parameter Name="UserID" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="AuthorID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="AuthorName" Type="String" />
                        <asp:Parameter Name="DoB" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="NationalID" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="original_AuthorID" Type="Int32" />
                        <asp:Parameter Name="original_AuthorName" Type="String" />
                        <asp:Parameter Name="original_DoB" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Mobile" Type="String" />
                        <asp:Parameter Name="original_NationalID" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                        <asp:Parameter Name="original_UserID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Authors] WHERE [AuthorID] = @original_AuthorID AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL)) AND (([DoB] = @original_DoB) OR ([DoB] IS NULL AND @original_DoB IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([NationalID] = @original_NationalID) OR ([NationalID] IS NULL AND @original_NationalID IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL)) AND [UserID] = @original_UserID" InsertCommand="INSERT INTO [Authors] ([AuthorName], [DoB], [Gender], [City], [Address], [Mobile], [NationalID], [Photo], [UserID]) VALUES (@AuthorName, @DoB, @Gender, @City, @Address, @Mobile, @NationalID, @Photo, @UserID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Authors]" UpdateCommand="UPDATE [Authors] SET [AuthorName] = @AuthorName, [DoB] = @DoB, [Gender] = @Gender, [City] = @City, [Address] = @Address, [Mobile] = @Mobile, [NationalID] = @NationalID, [Photo] = @Photo, [UserID] = @UserID WHERE [AuthorID] = @original_AuthorID AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL)) AND (([DoB] = @original_DoB) OR ([DoB] IS NULL AND @original_DoB IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([NationalID] = @original_NationalID) OR ([NationalID] IS NULL AND @original_NationalID IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL)) AND [UserID] = @original_UserID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_AuthorID" Type="Int32" />
                        <asp:Parameter Name="original_AuthorName" Type="String" />
                        <asp:Parameter Name="original_DoB" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Mobile" Type="String" />
                        <asp:Parameter Name="original_NationalID" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                        <asp:Parameter Name="original_UserID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="AuthorName" Type="String" />
                        <asp:Parameter Name="DoB" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="NationalID" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                        <asp:Parameter Name="UserID" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="AuthorName" Type="String" />
                        <asp:Parameter Name="DoB" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="NationalID" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="original_AuthorID" Type="Int32" />
                        <asp:Parameter Name="original_AuthorName" Type="String" />
                        <asp:Parameter Name="original_DoB" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Mobile" Type="String" />
                        <asp:Parameter Name="original_NationalID" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                        <asp:Parameter Name="original_UserID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
    </div>

</asp:Content>