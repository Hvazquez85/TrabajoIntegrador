package controllers;

import dao.iOradorDAO;
import dao.implement.OradorDAOMysqlImpl;
import domain.Orador;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FindAllOradorController")

public class FindAllOradorController extends HttpServlet {
	    @Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			//interface = new class que implementa la interface
		     iOradorDAO dao = new OradorDAOMysqlImpl();
		     List<Orador> oradores = new ArrayList<>();
				
		       try {
		    	 oradores = dao.findAll();
		       } catch (Exception e) {
		    	 e.printStackTrace(); //  muestra por consola el error 
		       }
		       req.setAttribute("listado", oradores);
		      // este bloque de codigo lo vamos a usar en todos lados, redirecciona al index.jsp 
		       getServletContext().getRequestDispatcher("/listadoOradores.jsp").forward(req, resp);

		}
	    @Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			doGet(req, resp);
		}
}