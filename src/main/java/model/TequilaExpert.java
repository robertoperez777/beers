/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin      
 */
package model;

import java.util.*;

public class TequilaExpert {
    
    public List getBrands(String color) {
        
        List brands = new ArrayList();
        
        if (color.equals("blanco")){
            brands.add("Hornitos");
            brands.add("Don Julio");
            brands.add("1800");
            brands.add("Herradura");
            
        }
        else if(color.equals("reposado")){
            brands.add("Hornitos");
            brands.add("Leyenda del Milagro");
            brands.add("Herradura");
            brands.add("Don Julio");
            
        }
          
         else if(color.equals("anejo")){
            brands.add("Leyenda del Milagro");
            brands.add("Hornitos");
            brands.add("Herradura");
            brands.add("1800");

            
        }
         
        else {
            brands.add("Jose Cuervo");
            brands.add("Cazadores");
            brands.add("Corralejo");
            brands.add("El Jimador");
            
        }
        return(brands);
    }
            
    
}
