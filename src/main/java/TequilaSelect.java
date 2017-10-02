/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.TequilaExpert;
/**
 *
 * @author admin
 */
@WebServlet(urlPatterns = {"/SelectTequila.do"})
public class TequilaSelect extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String c = request.getParameter("color");
        TequilaExpert be = new TequilaExpert();
        List result = be.getBrands(c);
        
        String[] tequilasmexicanas = {"Revolucion","1800","Hornitos","Herradura","Orgullo","Centinela","Jose Cuervo","Cazadores","Corralejo","Don Julio","El Jimador","Patron","Jalisco","Sauza","Alacran"};
        
        java.util.Map tequilasMap = new java.util.HashMap();
        tequilasMap.put("Hornitos", "favorita1");
        tequilasMap.put("1800", "favorita2");
        tequilasMap.put("Don Julio", "favorita3");
        tequilasMap.put("Herradura", "favorita4");
        
        request.setAttribute("styles", result);
        
        request.setAttribute("tequilaslista",tequilasmexicanas );
        
        request.setAttribute("tequilasMap",tequilasMap );
        
        RequestDispatcher view = request.getRequestDispatcher("resulttequila.jsp");
        view.forward(request, response);
    }


}

