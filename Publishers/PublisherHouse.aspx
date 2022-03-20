<%@ Page Title="" Language="C#" MasterPageFile="~/Publishers/Publisher.Master" AutoEventWireup="true" CodeBehind="PublisherHouse.aspx.cs" Inherits="Alquds_book_store.Publishers.PublisherHouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
    
        <p class="lead">&nbsp;</p>
            <p class="lead">&nbsp;<span style="text-decoration: underline"><strong>Publisher Main Area. </strong></span> </p>
            <p class="lead" style="text-decoration: underline"><strong>My House Info</strong></p>
    </div>

    <div class="row">
      
        <div class="col-md-4">
              <p>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PublisherID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                      <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:BoundField DataField="PublisherID" HeaderText="PublisherID" InsertVisible="False" ReadOnly="True" SortExpression="PublisherID" />
                          <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
                          <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
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
                  <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="PublisherID" DataSourceID="SqlDataSource2" Height="50px" Width="254px">
                      <Fields>
                          <asp:BoundField DataField="PublisherID" HeaderText="PublisherID" InsertVisible="False" ReadOnly="True" SortExpression="PublisherID" />
                          <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
                          <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                          <asp:BoundField DataField="HouseAddress" HeaderText="HouseAddress" SortExpression="HouseAddress" />
                          <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                          <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />


                           <asp:TemplateField HeaderText="Logo" SortExpression="Logo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Logo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Logo") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" Width="400px" runat="server" ImageUrl='<%# Eval("Logo", "~\\Images\\{0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                 
                          <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                          <asp:CommandField ShowEditButton="True" />
                      </Fields>
                  </asp:DetailsView>
              </p>
              <p>
                  <asp:Label ID="Label1" runat="server" Text="add new Publish house info"></asp:Label>
              </p>
              <p>
                  <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="PublisherID" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" OnItemInserted="DetailsView2_ItemInserted" OnItemInserting="DetailsView2_ItemInserting" Width="125px">
                      <Fields>
                          <asp:BoundField DataField="PublisherID" HeaderText="PublisherID" InsertVisible="False" ReadOnly="True" SortExpression="PublisherID" />
                          <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
                          <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                          <asp:BoundField DataField="HouseAddress" HeaderText="HouseAddress" SortExpression="HouseAddress" />
                          <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                          <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />

                            <asp:TemplateField HeaderText="Logo" SortExpression="Logo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Logo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Logo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>



                    
                          <asp:CommandField ShowInsertButton="True" />
                      </Fields>
                  </asp:DetailsView>
              </p>
              <p>
                  &nbsp;</p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Publishers] WHERE ([UserID] = @UserID)">
                      <SelectParameters>
                          <asp:SessionParameter Name="UserID" SessionField="Id" Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Publishers] WHERE [PublisherID] = @original_PublisherID AND (([PublisherName] = @original_PublisherName) OR ([PublisherName] IS NULL AND @original_PublisherName IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND [HouseAddress] = @original_HouseAddress AND (([PhoneNo] = @original_PhoneNo) OR ([PhoneNo] IS NULL AND @original_PhoneNo IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Logo] = @original_Logo) OR ([Logo] IS NULL AND @original_Logo IS NULL)) AND [UserID] = @original_UserID" InsertCommand="INSERT INTO [Publishers] ([PublisherName], [City], [HouseAddress], [PhoneNo], [Description], [Logo], [UserID]) VALUES (@PublisherName, @City, @HouseAddress, @PhoneNo, @Description, @Logo, @UserID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Publishers] WHERE ([PublisherID] = @PublisherID)" UpdateCommand="UPDATE [Publishers] SET [PublisherName] = @PublisherName, [City] = @City, [HouseAddress] = @HouseAddress, [PhoneNo] = @PhoneNo, [Description] = @Description, [Logo] = @Logo, [UserID] = @UserID WHERE [PublisherID] = @original_PublisherID AND (([PublisherName] = @original_PublisherName) OR ([PublisherName] IS NULL AND @original_PublisherName IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND [HouseAddress] = @original_HouseAddress AND (([PhoneNo] = @original_PhoneNo) OR ([PhoneNo] IS NULL AND @original_PhoneNo IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Logo] = @original_Logo) OR ([Logo] IS NULL AND @original_Logo IS NULL)) AND [UserID] = @original_UserID">
                      <DeleteParameters>
                          <asp:Parameter Name="original_PublisherID" Type="Int32" />
                          <asp:Parameter Name="original_PublisherName" Type="String" />
                          <asp:Parameter Name="original_City" Type="String" />
                          <asp:Parameter Name="original_HouseAddress" Type="String" />
                          <asp:Parameter Name="original_PhoneNo" Type="String" />
                          <asp:Parameter Name="original_Description" Type="String" />
                          <asp:Parameter Name="original_Logo" Type="String" />
                          <asp:Parameter Name="original_UserID" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="PublisherName" Type="String" />
                          <asp:Parameter Name="City" Type="String" />
                          <asp:Parameter Name="HouseAddress" Type="String" />
                          <asp:Parameter Name="PhoneNo" Type="String" />
                          <asp:Parameter Name="Description" Type="String" />
                          <asp:Parameter Name="Logo" Type="String" />
                          <asp:Parameter Name="UserID" Type="String" />
                      </InsertParameters>
                      <SelectParameters>
                          <asp:ControlParameter ControlID="GridView1" Name="PublisherID" PropertyName="SelectedValue" Type="Int32" />
                      </SelectParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="PublisherName" Type="String" />
                          <asp:Parameter Name="City" Type="String" />
                          <asp:Parameter Name="HouseAddress" Type="String" />
                          <asp:Parameter Name="PhoneNo" Type="String" />
                          <asp:Parameter Name="Description" Type="String" />
                          <asp:Parameter Name="Logo" Type="String" />
                          <asp:Parameter Name="UserID" Type="String" />
                          <asp:Parameter Name="original_PublisherID" Type="Int32" />
                          <asp:Parameter Name="original_PublisherName" Type="String" />
                          <asp:Parameter Name="original_City" Type="String" />
                          <asp:Parameter Name="original_HouseAddress" Type="String" />
                          <asp:Parameter Name="original_PhoneNo" Type="String" />
                          <asp:Parameter Name="original_Description" Type="String" />
                          <asp:Parameter Name="original_Logo" Type="String" />
                          <asp:Parameter Name="original_UserID" Type="String" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
              </p>
              <p>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Publishers] WHERE [PublisherID] = @original_PublisherID AND (([PublisherName] = @original_PublisherName) OR ([PublisherName] IS NULL AND @original_PublisherName IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND [HouseAddress] = @original_HouseAddress AND (([PhoneNo] = @original_PhoneNo) OR ([PhoneNo] IS NULL AND @original_PhoneNo IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Logo] = @original_Logo) OR ([Logo] IS NULL AND @original_Logo IS NULL)) AND [UserID] = @original_UserID" InsertCommand="INSERT INTO [Publishers] ([PublisherName], [City], [HouseAddress], [PhoneNo], [Description], [Logo], [UserID]) VALUES (@PublisherName, @City, @HouseAddress, @PhoneNo, @Description, @Logo, @UserID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Publishers]" UpdateCommand="UPDATE [Publishers] SET [PublisherName] = @PublisherName, [City] = @City, [HouseAddress] = @HouseAddress, [PhoneNo] = @PhoneNo, [Description] = @Description, [Logo] = @Logo, [UserID] = @UserID WHERE [PublisherID] = @original_PublisherID AND (([PublisherName] = @original_PublisherName) OR ([PublisherName] IS NULL AND @original_PublisherName IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND [HouseAddress] = @original_HouseAddress AND (([PhoneNo] = @original_PhoneNo) OR ([PhoneNo] IS NULL AND @original_PhoneNo IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Logo] = @original_Logo) OR ([Logo] IS NULL AND @original_Logo IS NULL)) AND [UserID] = @original_UserID">
                      <DeleteParameters>
                          <asp:Parameter Name="original_PublisherID" Type="Int32" />
                          <asp:Parameter Name="original_PublisherName" Type="String" />
                          <asp:Parameter Name="original_City" Type="String" />
                          <asp:Parameter Name="original_HouseAddress" Type="String" />
                          <asp:Parameter Name="original_PhoneNo" Type="String" />
                          <asp:Parameter Name="original_Description" Type="String" />
                          <asp:Parameter Name="original_Logo" Type="String" />
                          <asp:Parameter Name="original_UserID" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="PublisherName" Type="String" />
                          <asp:Parameter Name="City" Type="String" />
                          <asp:Parameter Name="HouseAddress" Type="String" />
                          <asp:Parameter Name="PhoneNo" Type="String" />
                          <asp:Parameter Name="Description" Type="String" />
                          <asp:Parameter Name="Logo" Type="String" />
                          <asp:Parameter Name="UserID" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="PublisherName" Type="String" />
                          <asp:Parameter Name="City" Type="String" />
                          <asp:Parameter Name="HouseAddress" Type="String" />
                          <asp:Parameter Name="PhoneNo" Type="String" />
                          <asp:Parameter Name="Description" Type="String" />
                          <asp:Parameter Name="Logo" Type="String" />
                          <asp:Parameter Name="UserID" Type="String" />
                          <asp:Parameter Name="original_PublisherID" Type="Int32" />
                          <asp:Parameter Name="original_PublisherName" Type="String" />
                          <asp:Parameter Name="original_City" Type="String" />
                          <asp:Parameter Name="original_HouseAddress" Type="String" />
                          <asp:Parameter Name="original_PhoneNo" Type="String" />
                          <asp:Parameter Name="original_Description" Type="String" />
                          <asp:Parameter Name="original_Logo" Type="String" />
                          <asp:Parameter Name="original_UserID" Type="String" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
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
