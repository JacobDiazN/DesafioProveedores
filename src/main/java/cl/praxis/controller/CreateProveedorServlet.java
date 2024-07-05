package cl.praxis.controller;

import cl.praxis.model.dao.ProveedorDAOImpl;
import cl.praxis.model.dto.ProveedorDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CreateProveedorServlet")
public class CreateProveedorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String rut = request.getParameter("rut");
        String direccion = request.getParameter("direccion");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String contacto = request.getParameter("contacto");
        String telefonoContacto = request.getParameter("telefono_contacto");

        ProveedorDTO proveedor = new ProveedorDTO();
        proveedor.setNombre(nombre);
        proveedor.setRut(rut);
        proveedor.setDireccion(direccion);
        proveedor.setCorreo(correo);
        proveedor.setTelefono(telefono);
        proveedor.setContacto(contacto);
        proveedor.setTelefonoContacto(telefonoContacto);

        ProveedorDAOImpl dao = new ProveedorDAOImpl();
        dao.create(proveedor);

        response.sendRedirect("index.jsp");
    }
}
