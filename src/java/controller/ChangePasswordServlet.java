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
import jakarta.servlet.http.HttpSession;
import model.Users;
import org.apache.catalina.User;

/**
 *
 * @author Duongtuandu
 */
public class ChangePasswordServlet extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            String oldpassword = request.getParameter("oldpassword");
            String newpassword = request.getParameter("newpassword");
            String renewpassword = request.getParameter("renewpassword");
            usersDAO ud = new usersDAO();
            Users user = ud.getAllUserById(id);
            if (oldpassword.equals(user.getPassword()) && newpassword.equals(renewpassword)) {
                ud.updateUser(user.getUsername(), newpassword, user.getEmail(), user.getName(), user.getPhone(),
                        user.getAddress(), id);
            }else{
                request.setAttribute("error", "Sai mat khau hoac nhap lai mat khau khong dung");
                request.getRequestDispatcher("changepassword.jsp").forward(request, response);
                return;
                }
            HttpSession session = request.getSession();
            session.setAttribute("account", ud.getAllUserById(id));
            response.sendRedirect("home");
        } catch (Exception e) {
            request.setAttribute("err", "Vui lòng thử lại");
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
