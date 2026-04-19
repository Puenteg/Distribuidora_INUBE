package distribuidora.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductosDto {

    private Integer idProducto;
    private Integer idProveedor;
    private Integer idCategoria;
    private String nombreProducto;
    private String calidadProducto;
    private String descripcionProducto;
    private Double precioProducto;
}
