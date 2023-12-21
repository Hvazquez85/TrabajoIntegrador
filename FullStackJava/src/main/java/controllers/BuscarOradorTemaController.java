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

@WebServlet("/BuscarOradorTemaController")

public class BuscarOradorTemaController extends HttpServlet {
    @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// levantamos el tema a buscar 
    	String temaBuscar = req.getParameter("temabuscar");
		//interface = new class que implementa la interface
	     iOradorDAO dao = new OradorDAOMysqlImpl();
	     List<Orador> oradores = new ArrayList<>();
			
	       try {
	    	 oradores = dao.search(temaBuscar);
	       } catch (Exception e) {
	    	 // TODO Auto-generated catch block
	    	 e.printStackTrace(); //  muestra por consola el error 
	       }
	       req.setAttribute("listado", oradores);
	       getServletContext().getRequestDispatcher("/listadoOradores.jsp").forward(req, resp);

	
	}
    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}