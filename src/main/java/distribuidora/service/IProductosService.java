package distribuidora.service;

import distribuidora.dto.CategoriasResponseDto;
import distribuidora.dto.ProductosDto;

import java.util.List;

public interface IProductosService {
    public List<ProductosDto> productos (Integer idCategoria);


    List<CategoriasResponseDto> comboCategorias();
}
