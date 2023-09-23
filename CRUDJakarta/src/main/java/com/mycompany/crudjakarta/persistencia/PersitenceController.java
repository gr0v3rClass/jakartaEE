/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.crudjakarta.persistencia;

import com.mycompany.crudjakarta.modelo.Usuario;
import com.mycompany.crudjakarta.persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author gr0v3r
 */
public class PersitenceController {
    UsuarioJpaController usuarioJAP = new UsuarioJpaController();
    
    public void crearUsuario(Usuario usuario){
        usuarioJAP.create(usuario);
    }
    
    public List<Usuario> traerUsuarios(){
        return usuarioJAP.findUsuarioEntities();
    }

    public void borrarUsuario(int id) {
        try {
            usuarioJAP.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(PersitenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario traerUsuarios(int idEditar) {
        return usuarioJAP.findUsuario(idEditar);
    }

    public void editartUsuario(Usuario usuario) {
        try {
            usuarioJAP.edit(usuario);
        } catch (Exception ex) {
            Logger.getLogger(PersitenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
