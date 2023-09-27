/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.factura.controllers;

import com.mycompany.factura.entities.Usuario;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author gr0v3r
 */
@Stateless
public class UsuarioFacade extends AbstractFacade<Usuario> {
    
    //implements UsuarioFacadeLocal

    @PersistenceContext(unitName = "com.mycompany_EnterpriceAplication_2-ejb_ejb_1.0-SNAPSHOTPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }

    //@Override
    public Integer sumar(int a, int b) {
        return null;
    }
    
    
    
}
