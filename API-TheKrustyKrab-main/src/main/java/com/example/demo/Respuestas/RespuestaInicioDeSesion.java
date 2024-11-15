package com.example.demo.Respuestas;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @AllArgsConstructor @NoArgsConstructor
public class RespuestaInicioDeSesion {
    private String mensaje;
    private String token;
    private Integer codigoError;
}
