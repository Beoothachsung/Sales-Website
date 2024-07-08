/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.categoryDAO;
import dal.productDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author Duongtuandu
 */
public class ShopServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        productDAO pDao = new productDAO();
//        List<Product> list = pDao.getAllProduct();
//        request.setAttribute("listP", list);
//        request.getRequestDispatcher("shop.jsp").forward(request, response);
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);

        productDAO dao = new productDAO();
        categoryDAO cDao = new categoryDAO();
        int count = dao.getTotalProduct();
        int endPage = count / 12;
        if (count % 12 != 0) {
            endPage++;
        }

        List<Product> list = dao.pagingProduct(index);

        request.setAttribute("listP", list);
        request.setAttribute("endP", endPage);
        request.setAttribute("tag", index);
        List<Category> listC = cDao.getAll();

        request.setAttribute("listC", listC);
        request.getRequestDispatcher("shop.jsp")
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold

}
