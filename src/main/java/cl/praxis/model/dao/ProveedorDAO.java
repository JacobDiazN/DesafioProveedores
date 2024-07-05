package cl.praxis.model.dao;

import java.util.List;

public interface ProveedorDAO {	

	    void create(ProveedorDAO a);
	    ProveedorDAO read(int id);
	    List<ProveedorDAO> read();
	    void update(ProveedorDAO a);
	    void delete(int id);
}
