using System;

public class Publicacion
{
	private int idPublicacion;
	private string publi;
	private int idUsuario;
	public Publicacion()
	{
	}

	public int IdPublicacion { get => idPublicacion; set => idPublicacion = value; }
	public string Publi { get => publi; set => publi = value; }
	public int IdUsuario { get => idUsuario; set => idUsuario = value; }
}


