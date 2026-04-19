package distribuidora.controller;

import distribuidora.dto.CategoriasResponseDto;
import distribuidora.dto.ProductosDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import distribuidora.service.IProductosService;

import java.util.List;


@RestController
@RequestMapping("")
public class ProductosController {

    @Autowired
    IProductosService service;

    // Categorias
    @GetMapping(value = "/combos/categorias")
    public ResponseEntity<List<CategoriasResponseDto>> comboCategorias() {
        return new ResponseEntity<List<CategoriasResponseDto>>(service.comboCategorias(), HttpStatus.OK);
    }

    // Productos
    @GetMapping(value = "/productos/{idCategoria}")
    public ResponseEntity<List<ProductosDto>> productos(@PathVariable int idCategoria){
        return new ResponseEntity<List<ProductosDto>>(service.productos(idCategoria), HttpStatus.OK);
    }



}
