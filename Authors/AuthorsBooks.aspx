<%@ Page Title="" Language="C#" MasterPageFile="~/Authors/Author.Master" AutoEventWireup="true" CodeBehind="AuthorsBooks.aspx.cs" Inherits="Alquds_book_store.Authors.AuthorsBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
    
        <p class="lead">&nbsp;</p>
            <p class="lead" style="text-decoration: underline"><strong>Author Main Area. </strong> </p>
            <p class="lead" style="text-decoration: underline"><strong>My Books</strong></p>
    </div>

    <div class="row">
      
        <div class="col-md-4">
              <p>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                      <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                          <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                          <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                          <asp:CommandField ShowSelectButton="True" SelectText="Details" />
                      </Columns>
                      <EditRowStyle BackColor="#2461BF" />
                      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                      <RowStyle BackColor="#EFF3FB" />
                      <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                      <SortedAscendingCellStyle BackColor="#F5F7FB" />
                      <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                      <SortedDescendingCellStyle BackColor="#E9EBEF" />
                      <SortedDescendingHeaderStyle BackColor="#4870BE" />
                  </asp:GridView>
              </p>
              <hr />
              <p>
                  &nbsp;</p>
              <p>
                  <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2" Height="50px" Width="254px">
                      <Fields>
                          <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                          <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                          <asp:BoundField DataField="Edition" HeaderText="Edition" SortExpression="Edition" />
                          <asp:BoundField DataField="NoPages" HeaderText="NoPages" SortExpression="NoPages" />
                          <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                          <asp:BoundField DataField="Format" HeaderText="Format" SortExpression="Format" />
                          <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                      <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" Width="250px" runat="server" ImageUrl='<%# Eval("Photo", "~\\Images\\{0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="PublisherID" SortExpression="PublisherID">
                              <EditItemTemplate>
                                 <asp:DropDownList ID="DropDownList13"  runat="server" DataSourceID="SqlDataSource4" DataTextField="PublisherName" DataValueField="PublisherID" SelectedValue='<%# Bind("PublisherID") %>'>
                                  </asp:DropDownList>
                              </EditItemTemplate>
                              <InsertItemTemplate>
                                  <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PublisherID") %>'></asp:TextBox>
                              </InsertItemTemplate>
                              <ItemTemplate>
                                  <asp:DropDownList ID="DropDownList12"  Enabled="false" runat="server" DataSourceID="SqlDataSource4" DataTextField="PublisherName" DataValueField="PublisherID" SelectedValue='<%# Bind("PublisherID") %>'>
                                  </asp:DropDownList>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:CommandField ShowEditButton="True" />
                      </Fields>
                  </asp:DetailsView>
              </p>
              <p>
                  <asp:Label ID="Label1" runat="server" Text="add new Publish house info"></asp:Label>
              </p>
              <p>
                  <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="SqlDataSource3" Height="50px" Width="282px" DefaultMode="Insert" OnItemInserted="DetailsView3_ItemInserted" OnItemInserting="DetailsView3_ItemInserting">
                      <Fields>
                          <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                          <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                          <asp:BoundField DataField="Edition" HeaderText="Edition" SortExpression="Edition" />
                          <asp:BoundField DataField="NoPages" HeaderText="NoPages" SortExpression="NoPages" />
                          <asp:TemplateField HeaderText="Type" SortExpression="Type">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <InsertItemTemplate>
                                  <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Type") %>'>
                                      <asp:ListItem>Art</asp:ListItem>
                                      <asp:ListItem>Kids</asp:ListItem>
                                      <asp:ListItem>IT</asp:ListItem>
                                      <asp:ListItem>Social</asp:ListItem>
                                      <asp:ListItem>Science</asp:ListItem>
                                  </asp:DropDownList>
                              </InsertItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label1" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Format" SortExpression="Format">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Format") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <InsertItemTemplate>
                                    <asp:DropDownList ID="DropDownList12" runat="server" SelectedValue='<%# Bind("Format") %>'>
                                      <asp:ListItem>Digital</asp:ListItem>
                                      <asp:ListItem>Hard Cover</asp:ListItem>
                                  </asp:DropDownList>
                              </InsertItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label2" runat="server" Text='<%# Bind("Format") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                          <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <InsertItemTemplate>
                                  <asp:FileUpload ID="FileUpload1" runat="server" />
                              </InsertItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label3" runat="server" Text='<%# Bind("Photo") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="PublisherID" SortExpression="PublisherID">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PublisherID") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSource4" DataTextField="PublisherName" DataValueField="PublisherID" SelectedValue='<%# Bind("PublisherID") %>'>
                                  </asp:DropDownList>
                              </InsertItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label4" runat="server" Text='<%# Bind("PublisherID") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:CommandField ShowInsertButton="True" />
                      </Fields>
                  </asp:DetailsView>
              </p>
              <p>
                  &nbsp;</p>
              <p>
                  <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
              </p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Books] WHERE ([AuthorID] = @AuthorID)">
                      <SelectParameters>
                          <asp:SessionParameter Name="AuthorID" SessionField="AuthorID" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @original_BookID AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Edition] = @original_Edition) OR ([Edition] IS NULL AND @original_Edition IS NULL)) AND (([NoPages] = @original_NoPages) OR ([NoPages] IS NULL AND @original_NoPages IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Format] = @original_Format) OR ([Format] IS NULL AND @original_Format IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([PublisherID] = @original_PublisherID) OR ([PublisherID] IS NULL AND @original_PublisherID IS NULL)) AND [AuthorID] = @original_AuthorID" InsertCommand="INSERT INTO [Books] ([BookName], [Edition], [NoPages], [Type], [Format], [Price], [PublisherID], [AuthorID]) VALUES (@BookName, @Edition, @NoPages, @Type, @Format, @Price, @PublisherID, @AuthorID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Books] WHERE ([BookID] = @BookID)" UpdateCommand="UPDATE [Books] SET [BookName] = @BookName, [Edition] = @Edition, [NoPages] = @NoPages, [Type] = @Type, [Format] = @Format, [Price] = @Price, [PublisherID] = @PublisherID, [AuthorID] = @AuthorID WHERE [BookID] = @original_BookID AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Edition] = @original_Edition) OR ([Edition] IS NULL AND @original_Edition IS NULL)) AND (([NoPages] = @original_NoPages) OR ([NoPages] IS NULL AND @original_NoPages IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Format] = @original_Format) OR ([Format] IS NULL AND @original_Format IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([PublisherID] = @original_PublisherID) OR ([PublisherID] IS NULL AND @original_PublisherID IS NULL)) AND [AuthorID] = @original_AuthorID">
                      <DeleteParameters>
                          <asp:Parameter Name="original_BookID" Type="Int32" />
                          <asp:Parameter Name="original_BookName" Type="String" />
                          <asp:Parameter Name="original_Edition" Type="String" />
                          <asp:Parameter Name="original_NoPages" Type="Int32" />
                          <asp:Parameter Name="original_Type" Type="String" />
                          <asp:Parameter Name="original_Format" Type="String" />
                          <asp:Parameter Name="original_Price" Type="String" />
                          <asp:Parameter Name="original_PublisherID" Type="Int32" />
                          <asp:Parameter Name="original_AuthorID" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="BookName" Type="String" />
                          <asp:Parameter Name="Edition" Type="String" />
                          <asp:Parameter Name="NoPages" Type="Int32" />
                          <asp:Parameter Name="Type" Type="String" />
                          <asp:Parameter Name="Format" Type="String" />
                          <asp:Parameter Name="Price" Type="String" />
                          <asp:Parameter Name="PublisherID" Type="Int32" />
                          <asp:Parameter Name="AuthorID" Type="Int32" />
                      </InsertParameters>
                      <SelectParameters>
                          <asp:ControlParameter ControlID="GridView1" Name="BookID" PropertyName="SelectedValue" Type="Int32" />
                      </SelectParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="BookName" Type="String" />
                          <asp:Parameter Name="Edition" Type="String" />
                          <asp:Parameter Name="NoPages" Type="Int32" />
                          <asp:Parameter Name="Type" Type="String" />
                          <asp:Parameter Name="Format" Type="String" />
                          <asp:Parameter Name="Price" Type="String" />
                          <asp:Parameter Name="PublisherID" Type="Int32" />
                          <asp:Parameter Name="AuthorID" Type="Int32" />
                          <asp:Parameter Name="original_BookID" Type="Int32" />
                          <asp:Parameter Name="original_BookName" Type="String" />
                          <asp:Parameter Name="original_Edition" Type="String" />
                          <asp:Parameter Name="original_NoPages" Type="Int32" />
                          <asp:Parameter Name="original_Type" Type="String" />
                          <asp:Parameter Name="original_Format" Type="String" />
                          <asp:Parameter Name="original_Price" Type="String" />
                          <asp:Parameter Name="original_PublisherID" Type="Int32" />
                          <asp:Parameter Name="original_AuthorID" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
              </p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @original_BookID AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Edition] = @original_Edition) OR ([Edition] IS NULL AND @original_Edition IS NULL)) AND (([NoPages] = @original_NoPages) OR ([NoPages] IS NULL AND @original_NoPages IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Format] = @original_Format) OR ([Format] IS NULL AND @original_Format IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL)) AND (([PublisherID] = @original_PublisherID) OR ([PublisherID] IS NULL AND @original_PublisherID IS NULL)) AND [AuthorID] = @original_AuthorID" InsertCommand="INSERT INTO [Books] ([BookName], [Edition], [NoPages], [Type], [Format], [Price], [Photo], [PublisherID], [AuthorID]) VALUES (@BookName, @Edition, @NoPages, @Type, @Format, @Price, @Photo, @PublisherID, @AuthorID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [BookName] = @BookName, [Edition] = @Edition, [NoPages] = @NoPages, [Type] = @Type, [Format] = @Format, [Price] = @Price, [Photo] = @Photo, [PublisherID] = @PublisherID, [AuthorID] = @AuthorID WHERE [BookID] = @original_BookID AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Edition] = @original_Edition) OR ([Edition] IS NULL AND @original_Edition IS NULL)) AND (([NoPages] = @original_NoPages) OR ([NoPages] IS NULL AND @original_NoPages IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Format] = @original_Format) OR ([Format] IS NULL AND @original_Format IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL)) AND (([PublisherID] = @original_PublisherID) OR ([PublisherID] IS NULL AND @original_PublisherID IS NULL)) AND [AuthorID] = @original_AuthorID">
                      <DeleteParameters>
                          <asp:Parameter Name="original_BookID" Type="Int32" />
                          <asp:Parameter Name="original_BookName" Type="String" />
                          <asp:Parameter Name="original_Edition" Type="String" />
                          <asp:Parameter Name="original_NoPages" Type="Int32" />
                          <asp:Parameter Name="original_Type" Type="String" />
                          <asp:Parameter Name="original_Format" Type="String" />
                          <asp:Parameter Name="original_Price" Type="String" />
                          <asp:Parameter Name="original_Photo" Type="String" />
                          <asp:Parameter Name="original_PublisherID" Type="Int32" />
                          <asp:Parameter Name="original_AuthorID" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="BookName" Type="String" />
                          <asp:Parameter Name="Edition" Type="String" />
                          <asp:Parameter Name="NoPages" Type="Int32" />
                          <asp:Parameter Name="Type" Type="String" />
                          <asp:Parameter Name="Format" Type="String" />
                          <asp:Parameter Name="Price" Type="String" />
                          <asp:Parameter Name="Photo" Type="String" />
                          <asp:Parameter Name="PublisherID" Type="Int32" />
                          <asp:Parameter Name="AuthorID" Type="Int32" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="BookName" Type="String" />
                          <asp:Parameter Name="Edition" Type="String" />
                          <asp:Parameter Name="NoPages" Type="Int32" />
                          <asp:Parameter Name="Type" Type="String" />
                          <asp:Parameter Name="Format" Type="String" />
                          <asp:Parameter Name="Price" Type="String" />
                          <asp:Parameter Name="Photo" Type="String" />
                          <asp:Parameter Name="PublisherID" Type="Int32" />
                          <asp:Parameter Name="AuthorID" Type="Int32" />
                          <asp:Parameter Name="original_BookID" Type="Int32" />
                          <asp:Parameter Name="original_BookName" Type="String" />
                          <asp:Parameter Name="original_Edition" Type="String" />
                          <asp:Parameter Name="original_NoPages" Type="Int32" />
                          <asp:Parameter Name="original_Type" Type="String" />
                          <asp:Parameter Name="original_Format" Type="String" />
                          <asp:Parameter Name="original_Price" Type="String" />
                          <asp:Parameter Name="original_Photo" Type="String" />
                          <asp:Parameter Name="original_PublisherID" Type="Int32" />
                          <asp:Parameter Name="original_AuthorID" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
              </p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Publishers]"></asp:SqlDataSource>
              </p>
            
        </div>
        <div class="col-md-4">
            <h2>&nbsp;</h2>
        </div>

          <div class="col-md-4">
            <br />
            
        </div>
    </div>

</asp:Content>
