package com.example.demo.Controlador;

import com.example.demo.DTO.NuevoProductoDTO;
import com.example.demo.DTO.PreciosDTO;
import com.example.demo.Servicios.ServicioProducto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;



@RestController
@CrossOrigin(origins = "http://localhost:5173")
@RequestMapping("/producto")
public class ControladorProducto {

    private final ServicioProducto servicioProducto;

    @Autowired
    public ControladorProducto(ServicioProducto servicioProducto) {
        this.servicioProducto = servicioProducto;
    }

    @PostMapping("/agregar")
    public ResponseEntity<String> agregarNuevoProducto(@RequestBody NuevoProductoDTO nuevoProductoDTO) {
        servicioProducto.guardar(nuevoProductoDTO);

        return ResponseEntity.ok("El producto fue guardado correctamente");
    }

    @GetMapping("/actualizarPrecios")
    public ResponseEntity<PreciosDTO> actualizarPrecios() {
        return ResponseEntity.ok(servicioProducto.actualizarPrecioProducto());

    }
}
