package modelos;

import modelos.Lista;

/**
 * @author Andrea
 * @version 1.0
 * @created 10-nov.-2022 2:17:23
 */
public class Usuario {

	private int id;
	private int estado;
	private String nombre;
	private String contrasena;
	public Registro m_Registro;
	public InicioSesion m_InicioSesion;
	public Lista m_Lista;

	public Usuario(){

	}

	public void finalize() throws Throwable {

	}
	public void iniciarSesion(){

	}

	public void cerrarSesion(){

	}

	public void anadirTareas(){

	}

    public Usuario(int id, int estado, String nombre, String contrasena, Registro m_Registro, InicioSesion m_InicioSesion, Lista m_Lista) {
        this.id = id;
        this.estado = estado;
        this.nombre = nombre;
        this.contrasena = contrasena;
        this.m_Registro = m_Registro;
        this.m_InicioSesion = m_InicioSesion;
        this.m_Lista = m_Lista;
    }


    
        
}//end Usuario