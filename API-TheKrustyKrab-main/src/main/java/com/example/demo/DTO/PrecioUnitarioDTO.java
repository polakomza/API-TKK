package com.example.demo.DTO;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @AllArgsConstructor @NoArgsConstructor
public class PrecioUnitarioDTO {

    private String nombreProducto;
    private double precio;
    private String imagen;
    private String descripcion;
}
