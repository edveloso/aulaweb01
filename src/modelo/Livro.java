package modelo;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;


//mapeamento objeto-relacional
//é a correspondência entre os objetos
//gerados à partir da classe 
//e os regristros do banco relacional

@Entity
@Table(name="tbl_livro")
public class Livro {

	@Id //declarar que este atributo é chave primária 
	@GeneratedValue //anotação que tem a estratégia de 
					//gerar valores incrementais
	private Integer codigo;
	
	@Column(name="lvr_nome", length=4000)
	private String nome;
	
	@Column(name="lvr_autor")
	private String autor;
	
	@Temporal(TemporalType.DATE)
	@Column(name="data_publicacao")
	private Date dataPublicacao;

	@Transient
	private Integer numeroPagina;
	
	@ManyToOne(fetch=FetchType.EAGER, cascade=CascadeType.PERSIST)
	@JoinColumn(name="cd_editora")
	private Editora editora;
	
	//hibernate necessita de que haja
	//um construtor vazio

	//hibernate necessita de que haja 
	//gets e sets para todo atributo
	//source > generate getters and setters
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public Date getDataPublicacao() {
		return dataPublicacao;
	}

	public void setDataPublicacao(Date dataPublicacao) {
		this.dataPublicacao = dataPublicacao;
	}

	public Integer getNumeroPagina() {
		return numeroPagina;
	}

	public void setNumeroPagina(Integer numeroPagina) {
		this.numeroPagina = numeroPagina;
	}

	public Editora getEditora() {
		return editora;
	}

	public void setEditora(Editora editora) {
		this.editora = editora;
	}
	
}
