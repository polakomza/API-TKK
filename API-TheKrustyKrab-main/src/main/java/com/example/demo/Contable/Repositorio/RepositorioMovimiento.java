package com.example.demo.Contable.Repositorio;

import com.example.demo.Contable.DTO.RegistroLibroDiarioDTO;
import com.example.demo.Contable.Entidades.Movimiento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface RepositorioMovimiento extends JpaRepository<Movimiento, Long> {
    @Query(value = "SELECT fecha, nombre_cuenta, \n" +
            "\tCASE WHEN tipo = 'debe' THEN monto ELSE 0 END AS debe, \n" +
            "    CASE WHEN tipo = 'haber' THEN monto ELSE 0 END AS haber \n" +
            "FROM movimiento \n" +
            "INNER JOIN cuenta ON movimiento.id_cuenta = cuenta.id_cuenta\n" +
            "INNER JOIN asiento_contable ON movimiento.id_asiento_contable = asiento_contable.id_asiento_contable;", nativeQuery = true)
    List<Object[]> obtenerLibroDiario();

    @Query(value = "SELECT fecha, nombre_cuenta, \n" +
            "    CASE WHEN tipo = 'debe' THEN monto ELSE 0 END AS debe,\n" +
            "    CASE WHEN tipo = 'haber' THEN monto ELSE 0 END AS haber,\n" +
            "    SUM(CASE WHEN tipo = 'debe' THEN monto ELSE -monto END) OVER (PARTITION BY nombre_cuenta ORDER BY fecha, id_movimiento) AS saldo\n" +
            "FROM movimiento \n" +
            "INNER JOIN cuenta ON movimiento.id_cuenta = cuenta.id_cuenta\n" +
            "INNER JOIN asiento_contable ON movimiento.id_asiento_contable = asiento_contable.id_asiento_contable\n" +
            "ORDER BY nombre_cuenta, fecha, id_movimiento;", nativeQuery = true)
    List<Object[]> obtenerLibroMayor();


}
