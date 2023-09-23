/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.crudjakarta.modelo;

import com.mycompany.crudjakarta.persistencia.PersitenceController;
import java.util.List;

/**
 *
 * @author gr0v3r
 */
public class ModelController {
    PersitenceController pesControl = new PersitenceController();
    
    public void crearUsuario(Usuario user){
        pesControl.crearUsuario(user);
    }
    
    public List<Usuario> traerUsuario(){
        return pesControl.traerUsuarios();
    }

    public void borrarUsuario(int id) {
        pesControl.borrarUsuario(id);
    }

    public Usuario traerUsuario(int idEditar) {
        return pesControl.traerUsuarios(idEditar);
    }

    public void editarUsuario(Usuario usuario) {
        pesControl.editartUsuario(usuario);
    }
}
