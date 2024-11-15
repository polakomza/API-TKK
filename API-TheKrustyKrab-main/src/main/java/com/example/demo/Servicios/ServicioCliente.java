package com.example.demo.Servicios;

import com.example.demo.DTO.ClienteDTO;
import com.example.demo.DTO.DireccionDTO;
import com.example.demo.DTO.EmailDTO;
import com.example.demo.DTO.InicioDeSesionDTO;
import com.example.demo.Entidades.Administrador;
import com.example.demo.Entidades.Cliente;
import com.example.demo.Entidades.Direccion;
import com.example.demo.Repositorio.RepositorioAdministrador;
import com.example.demo.Repositorio.RepositorioCliente;
import com.example.demo.Repositorio.RepositorioDireccion;
import com.example.demo.Respuestas.RespuestaDatosClienteDTO;
import com.example.demo.Respuestas.RespuestaDireccionesDTO;
import com.example.demo.Respuestas.RespuestaInicioDeSesion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ServicioCliente {

    private final RepositorioCliente repositorioCliente;
    private final RepositorioDireccion repositorioDireccion;
    private final RepositorioAdministrador repositorioAdministrador;

    @Autowired
    public ServicioCliente(RepositorioCliente repositorioCliente, RepositorioDireccion repositorioDireccion, RepositorioAdministrador repositorioAdministrador){
        this.repositorioCliente = repositorioCliente;
        this.repositorioDireccion = repositorioDireccion;
        this.repositorioAdministrador = repositorioAdministrador;
    }

    public void guardarCliente(ClienteDTO clienteDTO) {
        Cliente cliente = Cliente.builder()
                .nombre(clienteDTO.getNombre())
                .apellido(clienteDTO.getApellido())
                .email(clienteDTO.getEmail())
                .telefono(clienteDTO.getTelefono())
                .password(clienteDTO.getPassword())
                .build();

        repositorioCliente.save(cliente);
    }

    public void guardarDireccion(DireccionDTO direccionDTO) {
        Direccion direccion = Direccion.builder()
                .calle(direccionDTO.getCalle())
                .numero(direccionDTO.getNumero())
                .piso(direccionDTO.getPiso())
                .departamento(direccionDTO.getDepartamento())
                .codigoPostal(direccionDTO.getCodigoPostal())
                .referenciasAdicionales(direccionDTO.getReferenciasAdicionales())
                .build();

        Optional<Cliente> clienteOpcional = repositorioCliente.findByEmail(direccionDTO.getEmail());
        direccion.setCliente(clienteOpcional.get());

        repositorioDireccion.save(direccion);
    }

    public boolean verificarInicioDeSesion(RespuestaInicioDeSesion respuestaInicioDeSesion, InicioDeSesionDTO inicioDeSesionDTO) {
        Optional<Cliente> clienteOpcional = repositorioCliente.findByEmail(inicioDeSesionDTO.getEmail());

        if(clienteOpcional.isPresent()) {
            Cliente cliente = clienteOpcional.get();

            if(cliente.getPassword().equals(inicioDeSesionDTO.getPassword())){
                respuestaInicioDeSesion.setMensaje("Inicio exitoso");
                respuestaInicioDeSesion.setToken("");
                return true;
            } else{
                respuestaInicioDeSesion.setMensaje("Contraseña incorrecta");
                respuestaInicioDeSesion.setCodigoError(401);
                return false;
            }
        } else{
            respuestaInicioDeSesion.setMensaje("El email no existe");
            respuestaInicioDeSesion.setCodigoError(401);
            return false;
        }
    }

    public boolean verificarInicioDeSesionAdm(RespuestaInicioDeSesion respuestaInicioDeSesion, InicioDeSesionDTO inicioDeSesionDTO) {
        Optional<Administrador> admOpcional = repositorioAdministrador.findByEmail(inicioDeSesionDTO.getEmail());

        if(admOpcional.isPresent()) {
            Administrador admin = admOpcional.get();

            if(admin.getPassword().equals(inicioDeSesionDTO.getPassword())){
                respuestaInicioDeSesion.setMensaje("Inicio exitoso");
                respuestaInicioDeSesion.setToken("");
                return true;
            } else{
                respuestaInicioDeSesion.setMensaje("Contraseña incorrecta");
                respuestaInicioDeSesion.setCodigoError(401);
                return false;
            }
        } else{
            respuestaInicioDeSesion.setMensaje("El email no existe");
            respuestaInicioDeSesion.setCodigoError(401);
            return false;
        }
    }


    public RespuestaDireccionesDTO obtenerListaDirecciones(EmailDTO emailDTO){
        Optional<Cliente> clienteOpcional = repositorioCliente.findByEmail(emailDTO.getEmail());
        Cliente cliente = clienteOpcional.get();

        List<DireccionDTO> direcciones = new ArrayList<DireccionDTO>();

        for(Direccion direccion : repositorioDireccion.findAll()){
            if(direccion.getCliente().equals(cliente)){
                DireccionDTO direccionDTO = DireccionDTO.builder()
                        .calle(direccion.getCalle())
                        .numero(direccion.getNumero())
                        .piso(direccion.getPiso())
                        .departamento(direccion.getDepartamento())
                        .codigoPostal(direccion.getCodigoPostal())
                        .referenciasAdicionales(direccion.getReferenciasAdicionales())
                        .build();

                direcciones.add(direccionDTO);
            }
        }

        RespuestaDireccionesDTO respuestaDireccionesDTO = RespuestaDireccionesDTO.builder()
                .direcciones(direcciones)
                .build();

        return respuestaDireccionesDTO;
    }

    public RespuestaDatosClienteDTO obtenerDatosCliente(EmailDTO emailDTO){
        Optional<Cliente> clienteOpcional = repositorioCliente.findByEmail(emailDTO.getEmail());
        Cliente cliente = clienteOpcional.get();

        RespuestaDatosClienteDTO respuestaDatosClienteDTO = RespuestaDatosClienteDTO.builder()
                .nombre(cliente.getNombre())
                .apellido(cliente.getApellido())
                .email(cliente.getEmail())
                .telefono(cliente.getTelefono())
                .build();

        return respuestaDatosClienteDTO;
    }
}
