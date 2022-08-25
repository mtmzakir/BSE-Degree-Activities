<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegForm.aspx.cs" Inherits="LabTest.RegForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style4 {
            width: 377px;
            text-align: right;
        }
        .auto-style6 {
            width: 268px;
        }
        .auto-style7 {
            color: #FF0000;
        }
        .auto-style8 {
            width: 377px;
            text-align: right;
            height: 29px;
            color: #0000CC;
        }
        .auto-style9 {
            width: 268px;
            height: 29px;
        }
        .auto-style10 {
            height: 29px;
            color: #FF0000;
        }
        .auto-style11 {
            width: 377px;
            text-align: right;
            color: #0000CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" colspan="3"><strong>Employee Registration Form<br />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Title</strong></td>
                    <td class="auto-style6">
                        <asp:ListBox ID="Title" runat="server" Width="71px">
                            <asp:ListItem>Dr.</asp:ListItem>
                            <asp:ListItem>Mr.</asp:ListItem>
                            <asp:ListItem>Ms.</asp:ListItem>
                            <asp:ListItem>Mrs.</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="auto-style7"><em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Title" CssClass="auto-style7" ErrorMessage="Title is Required"></asp:RequiredFieldValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Name with Initials</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="NameInitial" runat="server" Width="230px"></asp:TextBox>
                    </td>
                    <td class="auto-style10"><em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="NameInitial" ErrorMessage="Name is Required" CssClass="auto-style7"></asp:RequiredFieldValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Date of Birth</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="DOB" runat="server" TextMode="Date" Width="230px"></asp:TextBox>
                    </td>
                    <td class="auto-style7"><em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DOB" ErrorMessage="DoB is Required" CssClass="auto-style7"></asp:RequiredFieldValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Contact No</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="Contact" runat="server" Width="230px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style7"><em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Contact" ErrorMessage="Contact No is Required" CssClass="auto-style7"></asp:RequiredFieldValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Address</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Address" runat="server" Width="230px"></asp:TextBox>
                    </td>
                    <td class="auto-style10"><em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Address" ErrorMessage="Address is Required" CssClass="auto-style7"></asp:RequiredFieldValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Email</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="Email" runat="server" Width="230px"></asp:TextBox>
                    </td>
                    <td class="auto-style7"><em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Email" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Email Must be in Correct Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style7"></asp:RegularExpressionValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Linkedin URL</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="URL" runat="server" Width="230px"></asp:TextBox>
                    </td>
                    <td class="auto-style10"><em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="URL" ErrorMessage="URL is Required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="URL" ErrorMessage="URL Must be in Correct Format" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" CssClass="auto-style7"></asp:RegularExpressionValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Upload CV</strong></td>
                    <td class="auto-style9">
                        <asp:FileUpload ID="CV" runat="server" BackColor="#99FF99" BorderColor="#006666" Width="230px" />
                    </td>
                    <td class="auto-style10"><em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CV" CssClass="auto-style7" ErrorMessage="CV is Required"></asp:RequiredFieldValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Add a Secret Word</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="SecretWord" runat="server" Width="230px"></asp:TextBox>
                    </td>
                    <td class="auto-style7"><em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="SecretWord" ErrorMessage="Secret Word is Required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="SecretWord" ErrorMessage="Only Lower Letters(Simple) are Allowed" ValidationExpression="[a-z]+"></asp:RegularExpressionValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Secret Word Confirm</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="ReSecretWord" runat="server" Width="230px"></asp:TextBox>
                    </td>
                    <td class="auto-style7"><em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ReSecretWord" ErrorMessage="Re-Enter Secret Word"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="SecretWord" ControlToValidate="ReSecretWord" CssClass="auto-style7" ErrorMessage="Enter Same Secret Word"></asp:CompareValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="submit" runat="server" BackColor="#00CC99" OnClick="submit_Click" Text="SUBMIT" BorderColor="#006666" />
                    </td>
                    <td>
                        <input id="Reset1" type="reset" value="RESET" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
