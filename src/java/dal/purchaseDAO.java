/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Purchase;

/**
 *
 * @author Duongtuandu
 */
public class purchaseDAO extends DBContext{
    public int createPurchase(int userId, double total, String date) {
        String sql = "insert into purchase(user_id, total, date)\n"
                + "  values(?, ?, ?)";
        int generatedId = -1; // Biến để lưu trữ ID được tạo tự động

        try (PreparedStatement st = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            st.setInt(1, userId);
            st.setDouble(2, total);
            st.setString(3, date);
            st.executeUpdate();

            ResultSet generatedKeys = st.getGeneratedKeys();

            if (generatedKeys.next()) {
                generatedId = generatedKeys.getInt(1); // Lấy ID từ ResultSet
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return generatedId;
    }

    public void updatePurchase(double total, int purchaseId) {
        String sql = " update purchase\n"
                + "  set total = ?\n"
                + "  where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setDouble(1, total);
            ps.setInt(2, purchaseId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Purchase getPurchaseById(String id) {
        String sql = "select * from purchase where id = ?";
        usersDAO u = new usersDAO();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Purchase(rs.getInt("id"),
                        u.getAllUserById(rs.getString("user_id")),
                        rs.getDouble("total"),
                        rs.getString("date"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Purchase> getAllPurchaseByUserId(String id) {
        List<Purchase> list = new ArrayList<>();
        String sql = "select * from purchase where user_id = ?";
        usersDAO u = new usersDAO();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Purchase(rs.getInt("id"),
                        u.getAllUserById(rs.getString("user_id")),
                        rs.getDouble("total"),
                        rs.getString("date")));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    public List<Purchase> getAllPurchase() {
        List<Purchase> list = new ArrayList<>();
        String sql = "select * from purchase";
        usersDAO u = new usersDAO();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Purchase(rs.getInt("id"),
                        u.getAllUserById(rs.getString("user_id")),
                        rs.getDouble("total"),
                        rs.getString("date")));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public void deletePurchaseByUserId(String pid) {
        String sql = "delete from purchase\n"
                + "  where user_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        purchaseDAO p = new purchaseDAO();
        List<Purchase> list = p.getAllPurchase();
        System.out.println(list);

    }
}
