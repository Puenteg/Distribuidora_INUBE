package distribuidora.repository;

import distribuidora.dto.CategoriasResponseDto;
import distribuidora.dto.ProductosDto;

import java.util.List;

public interface IProductosRepository {

    List<CategoriasResponseDto> comboCategorias();


    List<ProductosDto> productos(Integer idCategoria);


}



