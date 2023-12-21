package domain;

public class Orador {
	// Atributos
	private Long id_orador;
	private String nombre;
	private String apellido;
	private String mail;
	private String tema;
	//private String activo;
	
	// Constructor de la clase
	public Orador(String nombre, String apellido, String mail, String tema) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.tema = tema;
		//this.activo = activo;
	} 
	
	
	public Orador(Long id_orador, String nombre, String apellido, String mail, String tema) {
		this.id_orador = id_orador;
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.tema = tema;
		//this.activo = activo;
	} 
	
	
	// Metodos
	
	public Long getId() {
		return this.id_orador;
	}
	
	public void setId(Long id_orador) {
		this.id_orador = id_orador;
	}
	
	public String getNombre() {
		return this.nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getApellido() {
		return this.apellido;
	}
	
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	
	public String getTema() {
		return this.tema;
	}
	
	public void setTema(String tema) {
		this.tema = tema;
	}
	
	public String getMail() {
		return this.mail;
	}
	
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	@Override
	public String toString() {
		return "Orador : nombre=" + nombre + ", apellido=" + apellido + ", mail=" + mail ;
	}
	
	/*
	public String getActivo() {
		return this.activo;
	}
	
	public void setActivo(String activo) {
		this.activo = activo;
	}
	*/
	
}