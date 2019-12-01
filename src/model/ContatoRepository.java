package model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ContatoRepository {

	private static List<Contato> contatos = new ArrayList<>();

	public void Salvar(Contato pContato) {
		contatos.add(pContato);
	}

	public Contato getByID(int pId) {
		for (Contato contato : contatos) {
			if (contato.getId() == pId)
				return contato;
		}

		return null;
	}

	public List<Contato> getContatos() {
		return contatos;

	}

	public void Excluir(int pId) {

		for (Contato contato : contatos) {
			if (contato.getId() == pId) {
				contatos.remove(contato);
				break;
			}
		}
	}

	public void Alterar(Contato contatinhos) {
		for (Contato contato : contatos) {
			if (contato.getId() == contatinhos.getId()) {
				contato.setNome(contatinhos.getNome());
				contato.setSobrenome(contatinhos.getSobrenome());
				contato.setTelefone(contatinhos.getTelefone());
				contato.setEmail(contatinhos.getEmail());
				contato.setSenha(contatinhos.getSenha()); 
			}
		}
	}
	
	public boolean fazerLogin(String email, String senha) {
		for (Contato contato : contatos) {
			if (contato.getEmail().equals(email) && contato.getSenha().equals(senha))
				return true;
		}
		return false;
	}
}