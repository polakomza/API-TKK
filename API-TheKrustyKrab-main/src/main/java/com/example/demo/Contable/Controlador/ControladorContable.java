package com.example.demo.Contable.Controlador;

import com.example.demo.Contable.DTO.*;
import com.example.demo.Contable.Repositorio.RepositorioMovimiento;
import com.example.demo.Contable.Servicio.ServicioContable;
import com.example.demo.Excepciones.ExcepcionAsientoDesbalanceado;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;

@RestController
@RequestMapping("/administrador")
public class ControladorContable {

    private final ServicioContable servicioContable;
    private final RepositorioMovimiento repositorioMovimiento;

    @Autowired
    public ControladorContable(ServicioContable servicioContable, RepositorioMovimiento repositorioMovimiento) {
        this.servicioContable = servicioContable;
        this.repositorioMovimiento = repositorioMovimiento;
    }

    @PostMapping("/nuevoAsientoContable")
    public ResponseEntity<String> nuevoAsientoContable(@RequestBody AsientoContableDTO asientoContableDTO){
        try{
            servicioContable.cargarAsientoContable(asientoContableDTO);
            return ResponseEntity.ok("El asiento contable se guardó de manera exitosa");
        } catch(ExcepcionAsientoDesbalanceado ex){
            return ResponseEntity.badRequest().body(ex.getMessage());
        }
    }

    @PostMapping("/nuevaCuenta")
    public void crearNuevaCuenta(@RequestBody CuentaDTO cuentaDTO){
        servicioContable.crearCuenta(cuentaDTO);
    }

    @GetMapping("/libroDiario")
    public ResponseEntity<LibroDiarioDTO> mostrarLibroDiario(){
        List<Object[]> resultados = repositorioMovimiento.obtenerLibroDiario();

        List<RegistroLibroDiarioDTO> registros = new ArrayList<>();
        for (Object[] resultado : resultados) {
            RegistroLibroDiarioDTO registroLibroDiarioDTO = RegistroLibroDiarioDTO.builder()
                    .fecha((Date) resultado[0])
                    .nombre_cuenta((String) resultado[1])
                    .debe(Math.round((Double) resultado[2]))
                    .haber(Math.round((Double) resultado[3]))
                    .build();

            registros.add(registroLibroDiarioDTO);
        }

        LibroDiarioDTO libroDiarioDTO = LibroDiarioDTO.builder()
                .registros(registros)
                .build();

        return ResponseEntity.ok(libroDiarioDTO);
    }

    @GetMapping("/libroMayor")
    public ResponseEntity<LibroMayorDTO> mostrarLibroMayor(){
        List<Object[]> resultados = repositorioMovimiento.obtenerLibroMayor();

        List<RegistroLibroMayorDTO> registros = new ArrayList<>();
        for (Object[] resultado : resultados) {
            RegistroLibroMayorDTO registroLibroMayorDTO = RegistroLibroMayorDTO.builder()
                    .fecha((Date) resultado[0])
                    .nombre_cuenta((String) resultado[1])
                    .debe(Math.round((Double) resultado[2]))
                    .haber(Math.round((Double) resultado[3]))
                    .saldo(Math.round((Double) resultado[4]))
                    .build();

            registros.add(registroLibroMayorDTO);
        }

        LibroMayorDTO libroMayorDTO = LibroMayorDTO.builder()
                .registros(registros)
                .build();

        return ResponseEntity.ok(libroMayorDTO);
    }
}
