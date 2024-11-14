<%@ Page Language="C#" Inherits="Lab10.DisplayUser" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Details</title>
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
            text-align: center;
        }
        h2 {
            color: #333;
            font-size: 1.5em;
            margin-bottom: 1rem;
        }
        .info {
            font-weight: bold;
            color: #333;
            margin: 0.5rem 0;
        }
        .highlight {
            color: #4CAF50;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Details</h2>
        <asp:Label ID="lblGreeting" runat="server" CssClass="highlight" Font-Size="Large" />
        <br /><br />

        <div class="info">
            <span>Full Name: </span><asp:Label ID="lblDisplayFullName" runat="server" />
        </div>
        <div class="info">
            <span>Email: </span><asp:Label ID="lblDisplayEmail" runat="server" />
        </div>
        <div class="info">
            <span>Age: </span><asp:Label ID="lblDisplayAge" runat="server" />
        </div>
        <div class="info">
            <span>Role: </span><asp:Label ID="lblDisplayRole" runat="server" />
        </div>
    </div>
</body>
</html>
