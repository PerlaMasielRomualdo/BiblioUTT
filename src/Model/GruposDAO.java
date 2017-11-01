/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author NAMAN
 */
public class GruposDAO {

    Conexion conexion;

    public GruposDAO() {
        conexion = new Conexion();
    }

    public String insert(String lastName, String name, String birthDay, String place) {
        String queryResult = null;
        try {
            Connection DbAccess = conexion.getConnection();
            PreparedStatement ps = DbAccess.prepareStatement("INSERT INTO person (lastName,name,birthDay,place) VALUES(?,?,?,?) ");
            ps.setString(1, lastName);
            ps.setString(2, name);
            ps.setString(3, birthDay);
            ps.setString(4, place);

            int numAffecttedRows = ps.executeUpdate();
            if (numAffecttedRows > 0) {
                queryResult = "Registro Exitoso";
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error" + e.getMessage());
        }
        return queryResult;
    }
}
