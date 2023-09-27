/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.mycompany.ejemploejbwebapp.ejbmodule;

import jakarta.ejb.Stateless;

/**
 *
 * @author gr0v3r
 */
@Stateless
public class SbSumar implements SbSumarLocal {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public Integer sumar(int a, int b) {
        return a + b;
    }
}
