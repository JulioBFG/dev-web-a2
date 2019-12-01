package controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@WebFilter(urlPatterns = { "/lista-contatos", "/busca-contato", "/alterar-contato", "/excluir-contato" })
public class ContatosFiltro implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = ((HttpServletRequest) request);
		HttpSession sessao = req.getSession();
		String logado = (String) sessao.getAttribute("login");

		if (logado != null) {
			chain.doFilter(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/login.html");
			rd.forward(request, response);
		}
	}
}
