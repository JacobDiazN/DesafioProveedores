package cl.praxis.controller;

import cl.praxis.model.dao.ProveedorDAOImpl;
import cl.praxis.model.dto.ProveedorDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ReadProveedorByIdServlet")
public class ReadProveedorByIdServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    
    public ReadProveedorByIdServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String strId = request.getParameter("id");
        int id = 0;

        try {
            id = Integer.parseInt(strId);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return;
        }

        if (id > 0) {
            ProveedorDAOImpl dao = new ProveedorDAOImpl();
            ProveedorDTO proveedor = dao.read(id);

            if (proveedor != null) {
                request.setAttribute("proveedor", proveedor);
                request.getRequestDispatcher("/readByIdResult.jsp").forward(request, response);
            } else {
                response.getWriter().println("Proveedor no encontrado.");
            }
        } else {
            response.getWriter().println("ID de proveedor inválido.");
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}


