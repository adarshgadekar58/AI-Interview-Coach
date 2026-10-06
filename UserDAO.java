package DAO;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DataBase.DBConnection;
import Model.User;

public class UserDAO {

    Connection con = DBConnection.getConnection();

    // Register User
    public boolean registerUser(User user) {

        try {

            // Check duplicate email
            if (emailExists(user.getEmail())) {
                return false;
            }

            String sql = "INSERT INTO USERS2(USER_ID,NAME,EMAIL,PASSWORD,COLLEGE,SKILLS) VALUES(?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUserId());
            ps.setString(2, user.getName());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getCollege());
            ps.setString(6, user.getSkills());

            int row = ps.executeUpdate();

            return row > 0;

        } catch (Exception e) {

            e.printStackTrace();
        }

        return false;
    }

    // Check Email Exists
    public boolean emailExists(String email) {

        try {

            String sql = "SELECT * FROM USERS2 WHERE EMAIL=?" ;

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                return true;
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return false;
    }

    
}