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

public class BeerExpert {
    
    public List getBrands(String color) {
        
        List brands = new ArrayList();
        
        if (color.equals("ambar")){
            brands.add("Victoria");
            brands.add("Minerva");
            brands.add("LEON");
            brands.add("SUPERIOR");
            
        }
        else if(color.equals("dark")){
            brands.add("Bohemia");
            brands.add("Minerva");
            brands.add("Montejo");
            brands.add("Negra Modelo");
            
        }
         
         else if(color.equals("brown")){
            brands.add("Indio");
            brands.add("Noche Buena");
            brands.add("Victoria");
            brands.add("Tecate");

            
        }
         
        else {
            brands.add("Corona");
            brands.add("Heineken");
            brands.add("Sol");
            brands.add("Tecate light");
            
        }
        return(brands);
    }
            
    
}
