/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Default;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Johan
 */
public class RedSocialDAO {
    
    private Usuario user; 
    
    public static void main(String[] args) {
        
        RedSocialDAO a = new RedSocialDAO();
        try {
            System.out.println(a.publicaciones().get(0).getTitulo());
        } catch (Exception ex) {
            Logger.getLogger(RedSocialDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public RedSocialDAO() {
    }

    public RedSocialDAO(Usuario user) {
        this.user = user;
    }
    
    public void registrarUsuario() throws Exception
    {
        Connection con = MySQLConexion.getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO usuario(codigo, nombre, correo, contrasena) VALUES(?,?,?,?)");
        System.out.println(user.getCodigo());
        ps.setInt(1, user.getCodigo());
        ps.setString(2, user.getNombre());
        ps.setString(3, user.getCorreo());
        ps.setString(4, user.getContrasena());
        ps.execute();
        con.close();
    }
    
    public Usuario buscarUsuario(Integer codigo) throws SQLException, Exception
    {
        Connection con = MySQLConexion.getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareCall("SELECT * FROM usuario");
        ResultSet res = ps.executeQuery();
        Usuario usuario = new Usuario();
        while(res.next())
        {
            if(res.getInt(1)==codigo)
            {
                usuario.setCodigo(res.getInt(1));
                usuario.setNombre(res.getString(2));
                usuario.setCorreo(res.getString(3));
                usuario.setContrasena(res.getString(4));
            }
        }
        con.close();
        return usuario;
    }
    
    public void crearPublicacion(Publicacion pub)
    {
        try{
        Connection con = MySQLConexion.getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO publicacion(imagen, codigo, texto, titulo, fecha) VALUES(?,?,?,?,?)");
        ps.setString(1, pub.getPic());
        ps.setInt(2, pub.getCodigo());
        ps.setString(3, pub.getTexto());
        ps.setString(4, pub.getTitulo());
        ps.setString(5, pub.getFecha());
        ps.execute();
        con.close();
        }
        catch (Exception E)
        {
            System.out.println(E.getMessage());
        }
    }
    
    public LinkedList<Publicacion> publicaciones() throws Exception
    {
        Connection con = MySQLConexion.getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareCall("SELECT * FROM publicacion");
        ResultSet res = ps.executeQuery();
        LinkedList<Publicacion> listaPubs = new LinkedList();
        while(res.next())
        {
            Publicacion p = new Publicacion();
            p.setCodigo(res.getInt(2));
            p.setPic(res.getString(1));
            p.setTexto(res.getString(3));
            p.setTitulo(res.getString(4));
            p.setFecha(res.getString(5));
            listaPubs.add(p);
        }
        con.close();
        return listaPubs;
    }
}
