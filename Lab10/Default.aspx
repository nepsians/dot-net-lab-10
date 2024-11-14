<%@ Page Language="C#" Inherits="Lab10.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 100%;
            max-width: 400px;
            background-color: #fff;
            padding: 2rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }
        form {
            display: flex;
            flex-direction: column;
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 1.5rem;
        }
        label {
            font-weight: bold;
            margin-top: 1rem;
            display: block;
            color: #555;
        }
        input[type="text"], input[type="email"], input[type="password"], input[type="number"], select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .error {
            color: red;
            font-size: 0.85em;
        }
        .btn-submit {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            color: white;
            font-weight: bold;
            font-size: 1.1em;
            cursor: pointer;
            margin-top: 1.5rem;
        }
        .btn-submit:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Registration Form</h2>
        <form id="form1" runat="server">
            <div>
                <label for="txtFullName">Full Name:</label>
                <asp:TextBox ID="txtFullName" runat="server" MaxLength="50" CssClass="input" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFullName" ErrorMessage="Full Name is required." CssClass="error" />
            </div>
            
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="error" />
                <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Invalid email format." CssClass="error" />

            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." CssClass="error" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPassword" ValidationExpression="^(?=.*[A-Z])(?=.*\d).{8,}$" ErrorMessage="Password must contain at least 8 characters, one number, and one uppercase letter." CssClass="error" />

            <label for="txtConfirmPassword">Confirm Password:</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="input" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password is required." CssClass="error" />
            <asp:CompareValidator runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." CssClass="error" />

            <div>
                <label for="txtAge">Age:</label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="input" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required." CssClass="error" />
                <asp:RangeValidator runat="server" ControlToValidate="txtAge" MinimumValue="18" MaximumValue="120" Type="Integer" ErrorMessage="Age must be between 18 and 120." CssClass="error" />
            </div>

            <div>
                <label for="ddlRole">Role:</label>
                <asp:DropDownList ID="ddlRole" runat="server" CssClass="input">
                    <asp:ListItem Text="Choose a role..." Value="" />
                    <asp:ListItem Text="Admin" Value="Admin" />
                    <asp:ListItem Text="User" Value="User" />
                    <asp:ListItem Text="Guest" Value="Guest" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlRole" InitialValue="" ErrorMessage="Role selection is required." CssClass="error" />
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="onButtonClick"  CssClass="btn-submit" />
        </form>
    </div>
</body>
</html>
