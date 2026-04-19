package distribuidora.repository;

import distribuidora.dto.CategoriasResponseDto;
import distribuidora.dto.ProductosDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Slf4j
@Repository
public class ProductosRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    //Categorias
    @Override
    public List<CategoriasResponseDto> comboCategorias() {
        String query = "Select ID_CATEGORIA AS idCategoria, NOMBRE_CATEGORIA AS nombreCategoria from CATEGORIAS";
        return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(CategoriasResponseDto.class));
    }




    //Productos
    public List<ProductosDto> productos(Integer idCategoria){
        String query = "SELECT ID_PRODUCTO AS idProducto, NOMBRE_PRODUCTO AS nombreProducto, PRECIO_PRODUCTO AS precioProducto, " +
                "CALIDAD_PRODUCTO AS calidadProducto, DESCRIPCION_PRODUCTO AS descripcionProducto, ID_PROVEEDOR AS idProveedor, ID_CATEGORIA AS idCategoria" +
                "FROM PRODUCTOS WHERE ID_CATEGORIA = ?";

        return jdbcTemplate.query(query, new Object[]{idCategoria}, new BeanPropertyRowMapper<>(ProductosDto.class));
    }
}

