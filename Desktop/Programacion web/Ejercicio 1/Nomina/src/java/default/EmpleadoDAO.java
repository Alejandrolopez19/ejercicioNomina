/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Alejandro Lopez
 */

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Johan
 */
public class EmpleadoDAO {
    
    private EmpleadoVO empleado; 
    
    public static void main(String[] args) {
        
        
        
        EmpleadoDAO a = new EmpleadoDAO();
        
    }

    public EmpleadoDAO() {
    }

    public EmpleadoDAO(EmpleadoVO empleado) {
        this.empleado = empleado;
    }
    
    public void registrarEmpleado() throws Exception
    {
        Connection con = MySQLConexion.getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO empleado(codigo, cedula, nombre, fechanacimiento, fechaingreso, fecharetiro ) VALUES(?,?,?,?,?,?)");
        // System.out.println(empleado.getCodigo());
        ps.setString(1, empleado.getCodigo());
        ps.setString(2, empleado.getCedula());
        ps.setString(3, empleado.getNombre());
        ps.setDate(4, (Date) empleado.getFechaNacimiento());
        ps.setDate(5, (Date) empleado.getFechaIngreso());
        ps.setDate(6, (Date) empleado.getFechaRetiro());
        ps.execute();
        con.close();
    }
    
   
    

}

