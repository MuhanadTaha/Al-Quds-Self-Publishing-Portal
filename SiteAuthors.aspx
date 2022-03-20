<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SiteAuthors.aspx.cs" Inherits="Alquds_book_store.SiteAuthors" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
     <div class="jumbotron">
       <h2>Authors</h2>
   </div>
 
          
      <div class="row">

    
                 <p >


                     
                      <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
            onitemcommand="DataList1_ItemCommand">
        <ItemTemplate><asp:Panel ID="Panel1" runat="server" BorderColor="#FF9933" 
            BorderWidth="3px" Height="450px" Width="320px">
        <table    >
        <tr >
        <td align="center"   style="color: #FF0000; font-weight: bold" align="center">
        <asp:Image ID="Image1" runat="server" Height="250" Width="300px" ImageUrl='<%# Bind("Photo","~/Images/{0}") %>' ></asp:Image>
        </td>
        </tr>
        <tr >
        <td align="center"   style="color: #0000FF; align="center"  font-weight: bold">
        <asp:Label ID="lbl"   runat="server" Text='<%# Eval("[AuthorName]") %>' Font-Bold="True" Font-Size="Large"></asp:Label></td></tr>




                 <tr >
        <td    style="color: #009900;"    >
        <span style="color: Black; font-weight: bold;">:City</span>
       <asp:Label ID="Label2" runat="server" Text='<%#Eval("City") %>'></asp:Label>
        </td>
        </tr>





        <td align="center" >
        <asp:LinkButton ID="LinkButton1" runat="server" 
            Font-Underline="False" style="font-weight: 700; color: white" CommandName="Books" CommandArgument='<%#Eval("AuthorID") %>' BackColor="#0066FF" BorderStyle="Double" Font-Bold="True" Font-Size="Large">Author Books</asp:LinkButton>
            </td></tr>
        </table> </asp:Panel>
        </ItemTemplate>
        </asp:DataList>




</p>
        
         
        
          
    </div>
      
</asp:Content>