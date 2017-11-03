/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.SQLException;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import Model.AlumnosDAO;

/**
 *
 * @author cipri
 */
public class ControllerAlumnos {
    
    AlumnosDAO Model = new AlumnosDAO();
    
    public void insert(String Matricula, String Nvl){
        String messageResult = Model.insert(Matricula, Nvl);
        //Mensaje de Validadcion si se registro con exito
        if (messageResult != null){
            JOptionPane.showMessageDialog(null, messageResult);
        } else{
            JOptionPane.showMessageDialog(null, "Registro erroneo");
        }
    }
}
