/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.usersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Duongtuandu
 */
public class AddUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        usersDAO ud = new usersDAO();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        if (username.isBlank() || email.isBlank() || name.isBlank() || phone.isBlank() || address.isBlank()) {
            request.setAttribute("err", "Ban chưa nhập hết thông tin");
            request.getRequestDispatcher("adduser.jsp").forward(request, response);
        } else if (!isValidUsername(username) || ud.CheckUserName(username) != null) {
            request.setAttribute("err", "Tên đăng nhập không hợp lệ");
            request.getRequestDispatcher("adduser.jsp").forward(request, response);
        } else if (!CheckPhone(phone) || ud.CheckPhone(phone) != null) {
            request.setAttribute("err", "Số điện thoại không hợp lệ");
            request.getRequestDispatcher("adduser.jsp").forward(request, response);
        } else if (!checkEmail(email) || ud.CheckEmail(email) != null) {
            request.setAttribute("err", "Email không hợp lệ");
            request.getRequestDispatcher("adduser.jsp").forward(request, response);
        }else {
            ud.createUser(username, password, email, name, phone, address);
            response.sendRedirect("manageuser");
        }
    }

    private boolean isValidUsername(String username) {
        if (username.length() < 4) {
            return false;
        }
        return true;
    }

    private boolean CheckPhone(String input) {
        if (input.matches("^0\\d{9}$")) {
            return true;
        }
        return false;
    }

    private boolean checkEmail(String input) {
        if (input.matches("^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z0-9]+)$")) {
            return true;
        }
        return false;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
