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
import model.Users;
import org.apache.catalina.User;

/**
 *
 * @author Duongtuandu
 */
public class usersDAO extends DBContext {

    public Users checkUser(String username, String password) {
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        Users user = null;
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, username);
            st.setString(2, password);
            
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                user = new Users(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getInt("role"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    
    public void createUser(String username, String password, String email, String name, String phone, String address) {
        String sql = "INSERT INTO users (username, password, email, name, phone, address) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, email);
            st.setString(4, name);
            st.setString(5, phone);
            st.setString(6, address);

            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    
    public List<Users> getAllUser() {
        String sql = "SELECT * FROM users";
        List<Users> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Users u = new Users(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getInt("role"));
                list.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public Users getAllUserById(String id) {
        String sql = "SELECT * FROM users where id = ?";
        Users user = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                user = new Users(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getInt("role"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    
    public void updateUser(String username, String password, String email, String name, String phone, String address, String id) {
        String sql = "UPDATE users SET username = ?, password = ?, email = ?, name = ?, phone = ?, address = ? WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, email);
            st.setString(4, name);
            st.setString(5, phone);
            st.setString(6, address);
            st.setString(7, id);

            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    
    public void updateUserFromUser(String name, String email, String address, String phone, String id) {
        String sql = "UPDATE users SET email = ?, name = ?, phone = ?, address = ? WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, name);
            st.setString(3, phone);
            st.setString(4, address);
            st.setString(5, id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteUser(String id) {
        String sql = "delete from users where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public Users CheckUserName(String username) {
        String sql = "SELECT * FROM users where username = ?";
        Users user = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                user = new Users(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getInt("role"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    public Users CheckPhone(String phone) {
        String sql = "SELECT * FROM users where phone = ?";
        Users user = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, phone);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                user = new Users(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getInt("role"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    
    public Users CheckEmail(String email) {
        String sql = "SELECT * FROM users where email = ?";
        Users user = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                user = new Users(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getInt("role"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    
    public static void main(String[] args) {
        usersDAO ud = new usersDAO();
        System.out.println(ud.CheckUserName("Beoo"));
    }
}
