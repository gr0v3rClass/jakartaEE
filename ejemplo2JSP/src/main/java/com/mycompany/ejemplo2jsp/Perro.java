/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ejemplo2jsp;

/**
 *
 * @author gr0v3r
 */
public class Perro {
    private String nombre;
    private String imagen;

    public Perro(String nombre, String imagen) {
        this.nombre = nombre;
        this.imagen = imagen;
    }

    public String getNombre() {
        return nombre;
    }

    public String getImagen() {
        return imagen;
    }
    
    @Override
    public String toString(){
        String informacion = "<div class=\"accionperro\"> "+
                " <img src='"+imagen+"' width='80'> hola, soy..."+
                "<div class=\"arrow_box\">&nbsp;Hola, soy \"" + nombre + "\"&nbsp;</div>"+
                "<br/>"+
                "</div>";
        return informacion;
    }
    
    public String ladrar(){
        String informacion = "<div class=\"accionperro\"> "+
                " <img src='"+imagen+"' width='80'>"+
                "<div class=\"arrow_box\">&nbsp;guau guau &nbsp;</div>"+
                "<br/>"+
                "</div>";
        return informacion;
        //return "<img src='"+imagen+"' width='80'>  guau guau <br/>";
    }
    
    public String comer(String comida){
        String informacion = "<div class=\"accionperro\"> "+
                " <img src='"+imagen+"' width='80'>"+
                "<div class=\"arrow_box\">&nbsp;Estoy comiendo \"" + comida + "\"&nbsp;</div>"+
                "<br/>"+
                "</div>";
        return informacion;
        //return "<img src='"+imagen+"' width='80'> Estoy comiendo  " + comida +" <br/>";
    }
}
