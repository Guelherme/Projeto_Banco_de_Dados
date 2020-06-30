package Controller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UsuarioDAO;
import Entity.Usuario;

@WebServlet("/Cadastra")
public class CadastrarUsuario extends HttpServlet {
	
	private void processarRequisicao(HttpServletRequest request, HttpServletResponse response) throws ServletException, ParseException {
		
		Usuario p = new Usuario();
		UsuarioDAO usss = new UsuarioDAO();
		boolean cadastrou = false;
		
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String telefone = request.getParameter("telefone");
		String email = request.getParameter("email");
        
		p.setNome(nome);
		p.setLogin(login);
		p.setSenha(senha);
		p.setTelefone(telefone);
		p.setEmail(email);
		
		System.out.println("ESTOU AQUI MEO");
		
        RequestDispatcher rd = null;
        
        cadastrou = usss.CadastrarUsuario(p);
        System.out.println("Cadastrou, cadastrarusuario");
        
        if(cadastrou) {
            HttpSession sessao = request.getSession();
            sessao.setAttribute("login", login);
            sessao.setAttribute("senha", senha);
            
    		request.setAttribute("resultado", cadastrou);
    		rd = request.getRequestDispatcher("login.jsp");
    		System.out.println("login.jsp, cadastrou");
		} else {
    		request.setAttribute("resultado", cadastrou);
    		rd = request.getRequestDispatcher("cadastro.jsp");
    		System.out.println("Cadastrou.jsp, cadastrou");
		}
        
        
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }     
    }	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
			processarRequisicao(request, response);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
			processarRequisicao(request, response);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
	
	
	
	
	
	
	
	
	
	
	
	/*public void doPost (HttpServletRequest req, HttpServletResponse res) throws IOException{
		
		Usuario user = new Usuario();
		
		String nome = req.getParameter("nome");
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		String telefone = req.getParameter("telefone");
		String email = req.getParameter("email");
		String cmd = req.getParameter("cmd");
		
		String msg = null;
		if ("adicionar".equals(cmd)) {
			user.setNome(nome);
			user.setLogin(login);
			user.setSenha(senha);
			user.setTelefone(telefone);
			user.setEmail(email);
			
			UsuarioDAO usuariodao = new UsuarioDAO();
			try {
				usuariodao.CadastrarUsuario(user);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			msg = String.format("O Usuario ",nome," foi cadastrado com sucesso");
		} else {
			msg = String.format("O Usuario ",nome," não cadastrado com sucesso");
		}
		res.sendRedirect("./escolhaJogo.jsp");*/