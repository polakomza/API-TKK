package com.example.demo.Contable.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

@Data @Builder @AllArgsConstructor @NoArgsConstructor
public class RegistroLibroDiarioDTO {

    private Date fecha;
    private String nombre_cuenta;
    private double debe;
    private double haber;
}