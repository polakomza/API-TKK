package com.example.demo.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @AllArgsConstructor @NoArgsConstructor
public class DireccionDTO {

    private String email;
    private int codigoPostal;
    private String calle;
    private String numero;
    private String piso;
    private String departamento;
    private String referenciasAdicionales;
}

