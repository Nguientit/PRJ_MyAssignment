/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import entity.Lecturer;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class LecturerDBContext extends DBContext<Lecturer> {

    public Lecturer getLecturerByLid(int lid) {
        try {
            String sql = "SELECT [lid]\n"
                    + "      ,[lname]\n"
                    + "  FROM [dbo].[Lecturer]"
                    + "  where lid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, lid);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Lecturer l = new Lecturer();
                l.setLid(lid);
                l.setLname(rs.getString("lname"));
                return l;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Lecturer> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
