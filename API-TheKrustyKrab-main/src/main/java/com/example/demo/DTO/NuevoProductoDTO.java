package com.example.demo.DTO;

import lombok.*;
import java.util.List;

@Data @Builder @AllArgsConstructor @NoArgsConstructor
public class NuevoProductoDTO {

    private String nombreProducto;
    private String descripcion;
    private String nombreCategoria;
    private boolean esElaborado;
    private List<IngredienteDTO> ingredientes;
    private String imagen;
}
