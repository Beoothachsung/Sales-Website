/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.usersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Users;

/**
 *
 * @author Duongtuandu
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //lay acc duoc luu trong cookie
        Cookie ar[] = request.getCookies();
        for (Cookie o : ar) {
            if (o.getName().equals("uC")) {
                request.setAttribute("username", o.getValue());
            }
            if (o.getName().equals("pC")) {
                request.setAttribute("password", o.getValue());
            }
            if (o.getName().equals("rem")) {
                request.setAttribute("remmember", o.getValue());
            }
        }
        //set user va pass cho login form
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usernameLogin = request.getParameter("username");
        String passwordLogin = request.getParameter("password");
        String rem = request.getParameter("remember");
        usersDAO ud = new usersDAO();
        Users user = ud.checkUser(usernameLogin, passwordLogin);
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("account", user);
            
            response.sendRedirect("home");
        } else {
            request.setAttribute("err", "Username or password incorrect");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

}
