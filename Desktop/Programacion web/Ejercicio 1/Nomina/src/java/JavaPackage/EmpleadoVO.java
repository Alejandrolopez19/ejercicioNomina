package JavaPackage;


import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Alejandro Lopez
 */
public class EmpleadoVO {
    
    private String codigo;    
    private String cedula;
    private String nombre;
    private String fechaNacimiento;
    private String fechaIngreso;
    private String fechaRetiro;

    public EmpleadoVO() {
    }

    public EmpleadoVO(String codigo, String cedula, String nombre, String fechaNacimiento, String fechaIngreso, String fechaRetiro) {
        this.codigo = codigo;
        this.cedula = cedula;
        this.nombre = nombre;
        this.fechaNacimiento = fechaNacimiento;
        this.fechaIngreso = fechaIngreso;
        this.fechaRetiro = fechaRetiro;
        //Date date1 = new Date("Fecha"); 
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(String fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public String getFechaRetiro() {
        return fechaRetiro;
    }

    public void setFechaRetiro(String fechaRetiro) {
        this.fechaRetiro = fechaRetiro;
    }
    
    
    @Override
    public String toString() {
        return "EmpleadoDTO{" + "codigo=" + codigo + ", " + "cedula=" + codigo + ", nombre=" + nombre + ", fechanacimiento=" + fechaNacimiento + ", fechaingreo=" + fechaIngreso + ", fecharetiro=" + fechaRetiro + '}';
    }
    
    
    
}
