/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/SessionLocal.java to edit this template
 */
package com.mycompany.ejemploejbwebapp.ejbmodule;

import jakarta.ejb.Local;

/**
 *
 * @author gr0v3r
 */
@Local
public interface SbSumarLocal {
    Integer sumar(int a, int b);
}
