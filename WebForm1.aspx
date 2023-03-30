<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="gridview.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="JS/bootstrap.min.css" rel="stylesheet" />
    <script src="JS/bootstrap.min.js"></script>



</head>

<body style="background: radial-gradient(circle, rgba(160,200,213,1) 0%, rgba(140,171,102,1) 35%, rgba(221,160,185,1) 56%, rgba(179,213,169,1) 71%, rgba(148,233,152,1) 100%);">
     <form id="form1" runat="server" >
               <div style="max-width: 400px;margin-left:auto;margin-right:auto;padding:2%;border:solid;border-color:#011F5B">
             <h2 class="text-center mb-5">Registration Form</h2>
<br />
                   <label for="exampleColorInput" class="form-label">Color picker</label>
<input type="color" class="form-control form-control-color" id="exampleColorInput" value="#563d7c" title="Choose your color"/>
             <asp:Label ID="lblid" runat="server" Text="Enter ID"></asp:Label>
        <asp:TextBox ID="txteno" runat="server" CssClass="form-control"   placeholder="Enter ID"/>
        <br/>
         
           <asp:Label ID="lblname" runat="server" Text="Enter Name"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"   placeholder="Enter Username"/>
        <br/>
                     <asp:Label ID="lblcity" runat="server" Text="Select City"></asp:Label>
                      
                   <asp:DropDownList ID="ddlcity" runat="server" CssClass="form-control">
                       <asp:ListItem>--City--</asp:ListItem>
                       <asp:ListItem>Andhra Pradesh</asp:ListItem>
                       <asp:ListItem>Assam</asp:ListItem>
                       <asp:ListItem>Goa</asp:ListItem>
                       <asp:ListItem>Gujarat</asp:ListItem>
                       <asp:ListItem>Telangana</asp:ListItem>
                   </asp:DropDownList>
                   <br />
                   <br />

       
           <asp:Label ID="Label1" runat="server" Text="Gender"></asp:Label>
           <br /> <asp:RadioButton ID="rbtnmale" Text="Male"  runat="server" GroupName="gender" />     <br /><asp:RadioButton ID="rbtnfemale" Text="Female" runat="server" groupname="gender" />
                   <br />
             <br />
                   
                     <asp:Label ID="lblqualification" runat="server" Text="Select Qualification" ></asp:Label>
                   <br />
                   <asp:CheckBox ID="chkundergraduation" runat="server" Text="UnderGraduation"  />
                       <br />
                    <asp:CheckBox ID="chkgraduation" runat="server" OnCheckedChanged="chkgraduation_CheckedChanged" Text="Graduation"   />
                       <br />

                    <asp:CheckBox ID="chkpostgraduation" runat="server" Text="PostGraduation"  />
                   <br />
                   <br />
                     <asp:Label ID="lblemail" runat="server" Text="Enter Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Enter Email" />
        <br />
        
        <asp:Label ID="lblpassword" runat="server" Text="Enter Password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter Password" />
        <br/>

                   <asp:Label ID="lblPhoto" runat="server" Text="Upload Photo"></asp:Label>
                   <asp:FileUpload ID="fileupload" runat="server" />
                   <br/>

                   
               


                   <asp:Button ID="btnSignup" runat="server" Text="Sign up"  CssClass="btn btn-outline-info" Onclick="btnSignup_Click1"  />
                   <br />
                   <br />
                

                    
                      <%--  <asp:Button ID="btnSignup" runat="server" Text="Sign up"  CssClass="btn btn-primary"  OnClick="btnSignup_Click" />--%>

        </div>
        &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" style="font-size: x-large; font-style: italic">
                   <Columns>
                       <asp:TemplateField HeaderText="Id">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="UserName">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="City">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label3" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Gender">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label4" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Qualification">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Qualification") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label5" runat="server" Text='<%# Bind("Qualification") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Email">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label6" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Password">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label7" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Photo">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label8" runat="server" Text='<%# Bind("Photo") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                           <ItemTemplate>
                               <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="cmddelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Delete" />
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                           <ItemTemplate>
                               <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="cmdedit" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Edit" />
                           </ItemTemplate>
                       </asp:TemplateField>
                   </Columns>
               </asp:GridView>
    </form>

</body>
</html>
