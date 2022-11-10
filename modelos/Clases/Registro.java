package Clases;


/**
 * @author Andrea
 * @version 1.0
 * @created 10-nov.-2022 2:17:23
 */
public class Registro {

	private Usuario usuario;
	private String nombre;
	private String apellidos;
	private String contrasenia;
	private String correo;
	private int edad;

	public Registro(){

	}

	public void finalize() throws Throwable {

	}
	public boolean validarNombre(){
		return false;
	}

	public boolean validarContrasenia(){
		return false;
	}

	public void agregarBD(){

	}
}//end Registro