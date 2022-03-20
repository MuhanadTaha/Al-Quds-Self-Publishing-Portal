<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Users.Master" AutoEventWireup="true" CodeBehind="UserOrders.aspx.cs" Inherits="Alquds_book_store.Users.UserOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"> <div class="jumbotron">
    
            <p class="lead" style="text-decoration: underline"><strong>&nbsp;User Main Area. </strong> </p>
    </div>

    <div class="row">
     
        <div class="col-md-4">
            <p style="text-decoration: underline"><strong>your order details </strong> </p>
            <h4 style="text-decoration: underline">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#009900"></asp:Label>
            </h4>
            </div>
        </div>
             <div class="row">
     
        <div class="col-md-4">

            <p>
                <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" Height="50px" Width="252px">
                    <Fields>
                        <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                    <asp:Image ID="Image2" Width="250px" runat="server" ImageUrl='<%# Eval("Photo", "~\\Images\\{0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                        <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                        <asp:BoundField DataField="Edition" HeaderText="Edition" SortExpression="Edition" />
                        <asp:BoundField DataField="NoPages" HeaderText="NoPages" SortExpression="NoPages" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="Format" HeaderText="Format" SortExpression="Format" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:TemplateField HeaderText="PublisherID" SortExpression="PublisherID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PublisherID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PublisherID") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList2" Enabled="false" runat="server" DataSourceID="SqlDataSource3" DataTextField="PublisherName" DataValueField="PublisherID">
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="AuthorID" SortExpression="AuthorID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("AuthorID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("AuthorID") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" Enabled="false" runat="server" DataSourceID="SqlDataSource4" DataTextField="AuthorName" DataValueField="AuthorID">
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView>
            </p>
            <p>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#009900"></asp:Label>
            </p>
               </div>
        </div>
             <div class="row">
     
        <div class="col-md-4">


            <p style="text-decoration: underline">
                <strong>to confirm please :</strong></p>
            <p>
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" OnItemInserted="DetailsView2_ItemInserted" OnItemInserting="DetailsView2_ItemInserting" Width="294px">
                    <Fields>
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" InsertVisible="False" />
                        <asp:CommandField ShowInsertButton="True" ButtonType="Button" CancelText="cancel " InsertText="Place Order" />
                    </Fields>
                </asp:DetailsView>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Books] WHERE ([BookID] = @BookID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="BookID" SessionField="BookID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @original_OrderID AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND [BookID] = @original_BookID AND [UserProfileID] = @original_UserProfileID" InsertCommand="INSERT INTO [Orders] ([OrderDate], [BookID], [UserProfileID]) VALUES (@OrderDate, @BookID, @UserProfileID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [OrderDate] = @OrderDate, [BookID] = @BookID, [UserProfileID] = @UserProfileID WHERE [OrderID] = @original_OrderID AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND [BookID] = @original_BookID AND [UserProfileID] = @original_UserProfileID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_OrderID" Type="Int32" />
                        <asp:Parameter Name="original_OrderDate" Type="String" />
                        <asp:Parameter Name="original_BookID" Type="Int32" />
                        <asp:Parameter Name="original_UserProfileID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="OrderDate" Type="String" />
                        <asp:Parameter Name="BookID" Type="Int32" />
                        <asp:Parameter Name="UserProfileID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="OrderDate" Type="String" />
                        <asp:Parameter Name="BookID" Type="Int32" />
                        <asp:Parameter Name="UserProfileID" Type="Int32" />
                        <asp:Parameter Name="original_OrderID" Type="Int32" />
                        <asp:Parameter Name="original_OrderDate" Type="String" />
                        <asp:Parameter Name="original_BookID" Type="Int32" />
                        <asp:Parameter Name="original_UserProfileID" Type="Int32" />
                 
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Publishers]">
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Authors]"></asp:SqlDataSource>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
    </div>
</asp:Content>
