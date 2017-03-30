package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.MetierJeu;

/**
 * Servlet implementation class ControllerServlet
 */
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private MetierJeu metier;

	@Override
	public void init() throws ServletException {
		metier = new MetierJeu();
		System.out.println(metier.getNombreSecret());
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Requête send en GET");
		request.getRequestDispatcher("jeu.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		ModelJeu model = null;
		
		if (session.getAttribute("model") == null) {
			model = new ModelJeu();
			session.setAttribute("model", model);
		}else {
			model = (ModelJeu) (session.getAttribute("model"));
		}
		
		System.out.println("Requête send en POST");
		int nb = Integer.parseInt(request.getParameter("nombre"));
		model.setNombre(nb);
		String rep = metier.jouer(nb);
		model.getHistorique().add(rep);
		request.setAttribute("model", model);
		System.out.println("Valeur dans l'input " + nb);
		request.getRequestDispatcher("jeu.jsp").forward(request, response);
	}

}
