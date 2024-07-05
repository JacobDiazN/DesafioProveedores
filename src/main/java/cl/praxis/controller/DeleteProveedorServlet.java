package cl.praxis.controller;

import cl.praxis.model.dao.ProveedorDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteProveedorServlet")
public class DeleteProveedorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        ProveedorDAOImpl dao = new ProveedorDAOImpl();
        dao.delete(id);

        response.sendRedirect("index.jsp");
    }
}

