package cl.praxis.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cl.praxis.model.conexion.Conexion;
import cl.praxis.model.dao.ProveedorDAO;
import cl.praxis.model.dto.ProveedorDTO;

public class ProveedorDAOImpl implements ProveedorDAO {

	@Override
	public void create(ProveedorDTO p) {
		String sql = "INSERT INTO proveedores (nombre, rut, direccion, correo, telefono, contacto, telefono_contacto) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection c = Conexion.getCon(); 
        		PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, p.getNombre());
            ps.setString(2, p.getRut());
            ps.setString(3, p.getDireccion());
            ps.setString(4, p.getCorreo());
            ps.setString(5, p.getTelefono());
            ps.setString(6, p.getContacto());
            ps.setString(7, p.getTelefonoContacto());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error en método create(ProveedorDTO)");
            e.printStackTrace();
        }

	}

	@Override
	public ProveedorDTO read(int id) {
		//implementar la logica para leer un Proveedor
		
		ProveedorDTO p = null;
		String sql = "SELECT id, nombre, rut, direccion, correo, telefono, contacto, telefono_contacto FROM proveedores WHERE id = ?";
				
		try (Connection c = Conexion.getCon(); 
				PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    p = new ProveedorDTO(
                    		rs.getInt("id"),
                    		rs.getString("nombre"),
                    		rs.getString("rut"),
                    		rs.getString("direccion"),
                    		rs.getString("correo"),
                    		rs.getString("telefono"),
                    		rs.getString("contacto"),
                    		rs.getString("telefono_contacto")
                    );
                }
            }
        } catch (SQLException e) {
            System.out.println("Error en método read(id)");
            e.printStackTrace();
        }
        return p;
	}

	@Override
	public List<ProveedorDTO> read() {
		List<ProveedorDTO> proveedores = new ArrayList<>();
        String sql = "SELECT id, nombre, rut, direccion, correo, telefono, contacto, telefono_contacto FROM proveedores";
        try (Connection c = Conexion.getCon(); 
        		PreparedStatement ps = c.prepareStatement(sql); 
        		ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                ProveedorDTO p = new ProveedorDTO(rs.getInt("id"),rs.getString("nombre"),rs.getString("rut"),rs.getString("direccion"),
                    rs.getString("correo"),rs.getString("telefono"),rs.getString("contacto"),rs.getString("telefono_contacto")
                );
                proveedores.add(p);
            }
        } catch (SQLException e) {
            System.out.println("Error en método read()");
            e.printStackTrace();
        }
        return proveedores;
	}

	@Override
	public void update(ProveedorDTO p) {
		String sql = "UPDATE proveedores SET nombre = ?, rut = ?, direccion = ?, correo = ?, telefono = ?, contacto = ?, telefono_contacto = ? WHERE id = ?";
        try (Connection c = Conexion.getCon(); 
        		PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, p.getNombre());
            ps.setString(2, p.getRut());
            ps.setString(3, p.getDireccion());
            ps.setString(4, p.getCorreo());
            ps.setString(5, p.getTelefono());
            ps.setString(6, p.getContacto());
            ps.setString(7, p.getTelefonoContacto());
            ps.setInt(8, p.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error en método update(ProveedorDTO)");
            e.printStackTrace();
        }

	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM proveedores WHERE id = ?";
        try (Connection c = Conexion.getCon(); 
        		PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error en método delete(id)");
            e.printStackTrace();
        }
    }
}
