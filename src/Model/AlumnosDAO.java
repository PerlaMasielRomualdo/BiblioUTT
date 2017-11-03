/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author NAMAN
 */
public class AlumnosDAO {
    
    Conexion conexion;

    public AlumnosDAO() {
        conexion = new Conexion();
    }

    public String insert(String Matricula, String Nvl) {
        String queryResult = null;
        try {
            Connection DbAccess = conexion.getConnection();
            PreparedStatement ps = DbAccess.prepareStatement("INSERT INTO alumnos (Matricula,Nvl_Academico) VALUES(?,?) ");
            ps.setString(1, Matricula);
            ps.setString(2, Nvl);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error" + e.getMessage());
        }
        return queryResult;
    }
    
}
