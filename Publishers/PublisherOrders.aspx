<%@ Page Title="" Language="C#" MasterPageFile="~/Publishers/Publisher.Master" AutoEventWireup="true" CodeBehind="PublisherOrders.aspx.cs" Inherits="Alquds_book_store.Publishers.PublisherOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="jumbotron">
    
        <p class="lead">&nbsp;</p>
            <p class="lead" style="text-decoration: underline"><strong>Users Main Area. </strong> </p>
            <p class="lead" style="text-decoration: underline"><strong>Your books Orders</strong></p>
    </div>

    <div class="row">
       
        <div class="col-md-4">
              <p>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderID,BookID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="580px">
                      <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                          <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                          <asp:BoundField DataField="Expr2" HeaderText="Expr2" SortExpression="Expr2" />
                          <asp:BoundField DataField="UserProfileID" HeaderText="UserProfileID" SortExpression="UserProfileID" />
                          <asp:BoundField DataField="PublisherID" HeaderText="PublisherID" SortExpression="PublisherID" />
                          <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" SortExpression="AuthorID" />
                          <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                          <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                          <asp:CommandField ShowSelectButton="True" />
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
                  <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="OrderID,BookID" DataSourceID="SqlDataSource2" Height="50px" Width="372px" CellPadding="4" ForeColor="#333333" GridLines="None">
                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                      <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                      <EditRowStyle BackColor="#999999" />
                      <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                      <Fields>
                          <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                          <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
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
                         <asp:Image ID="Image2" Width="400px" runat="server" ImageUrl='<%# Eval("Photo", "~\\Images\\{0}") %>' />
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="PublisherID" SortExpression="PublisherID">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PublisherID") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <InsertItemTemplate>
                                  <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PublisherID") %>'></asp:TextBox>
                              </InsertItemTemplate>
                              <ItemTemplate>
                               <asp:DropDownList ID="DropDownList2" Enabled="false" runat="server" DataSourceID="SqlDataSource3" DataTextField="PublisherName" DataValueField="PublisherID">
                                </asp:DropDownList>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="AuthorID" SortExpression="AuthorID">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("AuthorID") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <InsertItemTemplate>
                                  <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("AuthorID") %>'></asp:TextBox>
                              </InsertItemTemplate>
                              <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" Enabled="false" runat="server" DataSourceID="SqlDataSource4" DataTextField="AuthorName" DataValueField="AuthorID">
                                </asp:DropDownList>
                              </ItemTemplate>
                          </asp:TemplateField>
                      </Fields>
                      <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                      <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  </asp:DetailsView>
              </p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Orders.OrderID, Orders.OrderDate, Orders.BookID AS Expr2, Orders.UserProfileID, Books.PublisherID, Books.AuthorID, Books.BookID, Books.BookName FROM Orders INNER JOIN Books ON Orders.BookID = Books.BookID AND Orders.BookID = Books.BookID WHERE (Books.PublisherID = @PublisherID)">
                      <SelectParameters>
                          <asp:SessionParameter Name="PublisherID" SessionField="PublisherID" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Orders.OrderID, Orders.OrderDate, Orders.BookID AS Expr1, Orders.UserProfileID, Books.* FROM Orders INNER JOIN Books ON Orders.BookID = Books.BookID AND Orders.BookID = Books.BookID WHERE (Orders.OrderID = @OrderID)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="GridView1" Name="OrderID" PropertyName="SelectedValue" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Publishers]"></asp:SqlDataSource>
              </p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Authors]"></asp:SqlDataSource>
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