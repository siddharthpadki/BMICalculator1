<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <h1>BMI healthy weight calculator</h1>
        <div class="row">
            <div class="col-sm-6 leftSide">
        <asp:Label ID="LabelGender" runat="server" Text="Please enter your gender"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        Date of Birth:
        <asp:TextBox ID="TextBoxDate" runat="server" OnTextChanged="TextBoxDate_TextChanged"></asp:TextBox>
        <asp:Label ID="LabelBirthDate" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelHeight" runat="server" Text="Height (in metres)"></asp:Label>
        <asp:TextBox ID="TextBoxHeight" runat="server" OnTextChanged="TextBoxHeight_TextChanged"></asp:TextBox>
        <asp:Label ID="LabelHeightOutput" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelWeight" runat="server" Text="Weight (in kg)"></asp:Label>
        <asp:TextBox ID="TextBoxWeight" runat="server" OnTextChanged="TextBoxWeight_TextChanged"></asp:TextBox>
        <asp:Label ID="LabelWeightOutput" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelDate" runat="server" Text="Date height/weight were measured"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem>Today</asp:ListItem>
            <asp:ListItem>Not today</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Label ID="LabelBMI" runat="server" Text="Body Mass Index(BMI) = Weight/[(Height)^2]"></asp:Label>
        <br />
        <asp:Button ID="ButtonCalculator" runat="server" Text="Calculate your BMI" OnClick="ButtonCalculator_Click" />
        <br />
        <br />
        <asp:Label ID="LabelBMICalculate" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelBMIResult" runat="server" Text=""></asp:Label>
    </div>
       </div> <%--2 extra </div> tags added--%>
      </div>
    </form>
</body>
</html>
