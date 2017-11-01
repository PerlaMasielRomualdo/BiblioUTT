/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author cipri
 */
public class Docentes {
    String Id;
    String Id_TipoUser;
    String Clave;
    String Sexo;
    String Fecha;
    String Entrada;
    String Salida;

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getId_TipoUser() {
        return Id_TipoUser;
    }

    public void setId_TipoUser(String Id_TipoUser) {
        this.Id_TipoUser = Id_TipoUser;
    }

    public String getClave() {
        return Clave;
    }

    public void setClave(String Clave) {
        this.Clave = Clave;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public String getEntrada() {
        return Entrada;
    }

    public void setEntrada(String Entrada) {
        this.Entrada = Entrada;
    }

    public String getSalida() {
        return Salida;
    }

    public void setSalida(String Salida) {
        this.Salida = Salida;
    }
    
    
}
