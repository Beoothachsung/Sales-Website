/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.productDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Product;

/**
 *
 * @author Duongtuandu
 */
public class DetailServlet extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String id = request.getParameter("id");
        int pid = Integer.parseInt(id);
        productDAO pd = new productDAO();
        Product p = pd.getProductById(pid);
        int cid = p.getCategoryId();
        List<Product> related = pd.getProductByCategoryId(cid);
        request.setAttribute("product", p);
        request.setAttribute("related", related);
        request.getRequestDispatcher("detail.jsp").forward(request, response);
    } 

}
