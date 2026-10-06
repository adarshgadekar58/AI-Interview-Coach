package DAO;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DataBase.DBConnection;
import Model.User;

public class LoginDAO {

    private Connection con;

    public LoginDAO() {
        con = DBConnection.getConnection();
    }

    public User login(String email, String password) {

        User user = null;

        try {

            String sql = "SELECT * FROM USERS2 WHERE EMAIL=? AND PASSWORD=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                user = new User();

                user.setUserId(rs.getString("USER_ID"));
                user.setName(rs.getString("NAME"));
                user.setEmail(rs.getString("EMAIL"));
                user.setPassword(rs.getString("PASSWORD"));
                user.setCollege(rs.getString("COLLEGE"));
                user.setSkills(rs.getString("SKILLS"));

            }

            rs.close();
            ps.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
}
