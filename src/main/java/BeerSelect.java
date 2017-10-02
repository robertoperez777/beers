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
import model.BeerExpert;
/**
 *
 * @author admin
 */
@WebServlet(urlPatterns = {"/SelectBeer.do"})
public class BeerSelect extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String c = request.getParameter("color");
        BeerExpert be = new BeerExpert();
        List result = be.getBrands(c);
        
        String[] chelasmexicanas = {"Minerva","LEON","SUPERIOR","Bohemia","Minerva","Montejo","Negra Modelo","Indio","Noche Buena","Victoria","Tecate","Corona","Heineken","Sol","Tecate light"};
        
        java.util.Map chelasMap = new java.util.HashMap();
        chelasMap.put("Indio", "favorita1");
        chelasMap.put("Corona", "favorita2");
        chelasMap.put("Heineken", "favorita3");
        chelasMap.put("Minerva", "favorita4");
        
        request.setAttribute("styles", result);
        
        request.setAttribute("chelaslista",chelasmexicanas );
        
        request.setAttribute("chelasMap",chelasMap );
        
        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
        view.forward(request, response);
    }


}

