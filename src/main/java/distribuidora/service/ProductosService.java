package distribuidora.service;

import distribuidora.dto.CategoriasResponseDto;
import distribuidora.dto.ProductosDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import distribuidora.repository.IProductosRepository;

import java.util.List;

@Service
public class ProductosService {

    @Autowired
    IProductosRepository repository;

    // Categorias
    @Override
    public List<CategoriasResponseDto> comboCategorias() {
        return repository.comboCategorias();
    }

    // Productos
    @Override
    public List<ProductosDto> productos(int idCategoria){
        return repository.productos(idCategoria);
    }



}
