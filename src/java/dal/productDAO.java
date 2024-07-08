/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author Duongtuandu
 */
public class productDAO extends DBContext {

    //doc tat ca cac ban ghi tu StudentDB
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product s = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> getTop3Product() {
        List<Product> list = new ArrayList<>();
        String sql = "select top 3 * from product";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product s = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Product getProductById(int id) {//lấy ra sản phẩm tương ứng với id
        String sql = "SELECT * FROM product WHERE id = ?";
        Product p = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                p = new Product(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("quantity"),
                        rs.getInt("price"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getInt("category_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    public List<Product> getProductByCategoryId(int cid) {//lấy ra sản phẩm tương ứng với danh mục sản phẩm
        String sql = "SELECT * FROM product WHERE category_id = ?";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("quantity"),
                        rs.getInt("price"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getInt("category_id"));
                list.add(p);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public void addProduct(String name, int quantity, int price, String description, String image, int categoryId) {

        String sql = "INSERT INTO product(name, quantity, price, description, image, category_id) VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setInt(2, quantity);
            st.setInt(3, price);
            st.setString(4, description);
            st.setString(5, image);
            st.setInt(6, categoryId);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void updateProduct(String name, int quantity, double price, String description, String image, int categoryId, int id) {
        String sql = "UPDATE product SET name = ?, quantity = ?, price = ?, description = ?, image = ?, category_id = ? WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setInt(2, quantity);
            st.setDouble(3, price);
            st.setString(4, description);
            st.setString(5, image);
            st.setInt(6, categoryId);
            st.setInt(7, id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(String id) {
        String sql = "DELETE from product where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Product> searchProduct(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM product WHERE name LIKE ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("quantity"),
                        rs.getInt("price"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getInt("category_id"));
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> getSortProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product order by price ASC";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product s = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> getSortReduceProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product order by price DESC";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product s = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public int getTotalProduct() {
        String sql = "select count (*) from product";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Product> pagingProduct(int index) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT\n"
                + "    *\n"
                + "FROM\n"
                + "    product\n"
                + "ORDER BY id\n"
                + "OFFSET ? ROWS \n"
                + "FETCH NEXT 12 ROWS ONLY\n"
                + "\n"
                + "";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 12);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void updateQuantityProduct(int quantiy, int id) {
        String sql = " update product\n"
                + "  set quantity = ?\n"
                + "  where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, quantiy);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        productDAO pd = new productDAO();
//        p.updateProduct("u ngua", 203, 666, "cao 30cm", "du ngua", 2, 31);
        for (Product p : pd.pagingProduct(1)) {
            System.out.println(p);
        }
    }
}
