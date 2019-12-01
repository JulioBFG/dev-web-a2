package controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.ContatoRepository;

@WebFilter(urlPatterns = "/submit-form")
public class LoginFiltro implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		ContatoRepository contato = new ContatoRepository();
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		String login = request.getParameter("login");
		String senha = request.getParameter("password");

		if (contato.fazerLogin(login, senha)) {
			HttpSession sessao = httpRequest.getSession();
			sessao.setAttribute("login", login);

			chain.doFilter(request, response);
		} else {
			request.setAttribute("mensagem", "Usuario ou senha invalidos.");

			RequestDispatcher rd = request.getRequestDispatcher("/login.html");
			rd.forward(request, response);
		}
		return;
	}
}