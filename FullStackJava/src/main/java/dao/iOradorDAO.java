package dao;

import domain.Orador;
import java.util.List;

public interface iOradorDAO {

		// Devuelve de un id todos los campos
		public Orador getById(Long id) throws Exception;  
		
		// Devuelve todos los registros de la tabla Oradores
		public List<Orador> findAll() throws Exception;	
		
		// Borra un registro por el id del oradores
		public void delete(Long id) throws Exception;
		
		// Borra un registro por el id del oradores
		public void deleteOrador(Orador orador) throws Exception;
		
		public void update(Orador orador) throws Exception; 
		
		public void create(Orador newOrador) throws Exception;
		
	    public List<Orador> search(String clave) throws Exception;
	    
}