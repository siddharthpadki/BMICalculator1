<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family:Arial;
            background-color:blue;
        }
        .newStyle1 {
            background-color: #00FF00;
        }
        .newStyle2 {
            background-color: #00FF00;
            background-repeat: repeat;           
            background-position: right bottom;         
        }
        #form1 {
            margin-left:20%;
            margin-right:20%;
            margin-top:70px;
            margin-bottom:0;
            background-color:white;
            padding:30px;
        }
        .formLabel, .formInput, .formResult {
            float:left;           
        }                
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>BMI healthy weight calculator</h1>
        <asp:Label ID="LabelGender" runat="server" Text="Please enter your gender"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <div class="formLabel">
            Date of Birth:
        </div>
        <div class="formInput">
            <asp:TextBox ID="TextBoxDate" runat="server" OnTextChanged="TextBoxDate_TextChanged"></asp:TextBox>
        </div>
        <div class="formResult">
            <asp:Label ID="LabelBirthDate" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <br />
        <div class="formLabel">
            <asp:Label ID="LabelHeight" runat="server" Text="Height (in metres)"></asp:Label>
        </div>
        <div class="formInput">
            <asp:TextBox ID="TextBoxHeight" runat="server" OnTextChanged="TextBoxHeight_TextChanged"></asp:TextBox>
        </div>
        <div class="formResult">
            <asp:Label ID="LabelHeightOutput" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <br />
        <div class="formLabel">
            <asp:Label ID="LabelWeight" runat="server" Text="Weight (in kg)"></asp:Label>
        </div>
        <div class="formInput">
            <asp:TextBox ID="TextBoxWeight" runat="server" OnTextChanged="TextBoxWeight_TextChanged"></asp:TextBox>
        </div>
        <div class="formResult">    
            <asp:Label ID="LabelWeightOutput" runat="server" Text=""></asp:Label>
        </div>
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
    </form>
</body>
</html>
