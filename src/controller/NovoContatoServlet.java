package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;


import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contato;
import model.ContatoRepository;

@SuppressWarnings("serial")
@WebServlet(urlPatterns="/novo-contato" )
public class NovoContatoServlet extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String nome = req.getParameter("nome");
		String sobrenome = req.getParameter("sobrenome");
		String telefone = req.getParameter("telefone");
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");
		
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setSobrenome(sobrenome);
		contato.setTelefone(telefone);
		contato.setSenha(senha);
		
		ContatoRepository repository = new ContatoRepository();
		repository.Salvar(contato);
		
		req.setAttribute("contato", contato);
		
		RequestDispatcher rd =req.getRequestDispatcher("novo-contato-sucesso.jsp");
		rd.forward(req, resp);
	}
}