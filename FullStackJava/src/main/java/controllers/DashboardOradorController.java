package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.iOradorDAO;
import dao.implement.OradorDAOMysqlImpl;
import domain.Orador;
@WebServlet("/DashboardOradorController")
public class DashboardOradorController  extends HttpServlet {
	
	   @Override
			protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			     iOradorDAO dao = new OradorDAOMysqlImpl();
			     List<Orador> oradores = new ArrayList<>();
					
			       try {
			    	 oradores = dao.findAll();
			       } catch (Exception e) {
			    	 e.printStackTrace(); // 
			       }
			       req.setAttribute("listado", oradores);
			      // este bloque de codigo lo vamos a usar en todos lados, redirecciona
			       getServletContext().getRequestDispatcher("/dashboard.jsp").forward(req, resp);

			
			}
		    @Override
			protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				doGet(req, resp);
			}

}