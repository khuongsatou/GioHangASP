<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnPart2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Cart.aspx">Show Cart</a>
        <table style="width: 100%;" border="1">
            <tr>
                <th>STT</th>
                <th>Tên SP</th>
                <th>Giá SP</th>
                <th>Mô Tả</th>
                <th>Hình Ảnh</th>
                <th>Số Lượng</th>
                <th></th>
            </tr>


            

            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr>
                        <td>
                            <a href='Default.aspx?stt=<%# Eval("STT") %>'><%# Eval("STT") %></a>
                        </td>

                        <td><%# Eval("TenSP") %></td>
                        <td><%# Eval("GiaSP") %></td>
                        <td><%# Eval("MoTa") %></td>
                        <td>

                            <img width="50" height="50" src="img/<%# Eval("HinhAnh") %>" />
                            <asp:HiddenField ID="STT" runat="server" Value='<%# Eval("STT") %>' />
                            <asp:HiddenField ID="TenSP" runat="server" Value='<%# Eval("TenSP") %>' />
                            <asp:HiddenField ID="GiaSP" runat="server" Value='<%# Eval("GiaSP") %>' />
                            <asp:HiddenField ID="MoTa" runat="server" Value='<%# Eval("MoTa") %>' />
                            <asp:HiddenField ID="HinhAnh" runat="server" Value='<%# Eval("HinhAnh") %>' />
                            <asp:HiddenField ID="Quality" runat="server" Value='<%# Eval("Quality") %>' />

                        </td>
                        <td>
                            <%# Eval("Quality") %>
                        </td>
                        <td>
                            <asp:Button ID="btnID" runat="server" Text="Chọn" CommandName="add_to_cart" />
                        </td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
        </table>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" SelectCommand="SELECT * FROM [tbSanPham]"></asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
