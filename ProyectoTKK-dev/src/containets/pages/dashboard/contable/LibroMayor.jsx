import {
  Button,
  Card,
  CardContent,
  CardHeader,
  Paper,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  TextField,
  Typography
} from '@mui/material';
import React, { useState } from 'react';

export default function LibroMayor() {
  // Estados para las fechas
  const [fechaInicio, setFechaInicio] = useState("");
  const [fechaCierre, setFechaCierre] = useState("");
  const [cuentas, setCuentas] = useState([
    { 
      nombre: 'Caja', 
      entradas: [
        { debe: 1000, haber: null },
        { debe: null, haber: 500 },
      ]
    },
    { 
      nombre: 'Banco', 
      entradas: [
        { debe: 10000, haber: null },
        { debe: 20000, haber: null },
        { debe: null, haber: 15000 },
      ]
    },
    { 
      nombre: 'Proveedores', 
      entradas: [
        { debe: 500, haber: null },
        { debe: null, haber: 1500 },
      ]
    },
    { 
      nombre: 'Mercadería', 
      entradas: [
        { debe: 3000, haber: null },
        { debe: null, haber: 1000 },
      ]
    },
  ]);

  // Función para manejar el envío de las fechas (ejemplo)
  const handleSubmit = () => {
    if (!fechaInicio || !fechaCierre) {
      alert("Por favor, ingresa ambas fechas.");
      return;
    }

    // Aquí puedes hacer la lógica para cargar los datos filtrados por las fechas.
    console.log("Fecha de Inicio:", fechaInicio);
    console.log("Fecha de Cierre:", fechaCierre);

    // Simulación de llamada a API con fechas (en tu caso harías un fetch)
    // fetchData(fechaInicio, fechaCierre);
  };

  return (
    <div style={{ minHeight: '100vh', backgroundColor: '#f0f0f0', padding: '20px' }}>
      <div style={{ maxWidth: '600px', margin: 'auto' }}>
        {/* Formulario para las fechas */}
        <div style={{ marginBottom: '20px' }}>
          <TextField
            label="Fecha de Inicio"
            type="date"
            value={fechaInicio}
            onChange={(e) => setFechaInicio(e.target.value)}
            InputLabelProps={{
              shrink: true,
            }}
            fullWidth
            style={{ marginBottom: '10px' }}
          />
          <TextField
            label="Fecha de Cierre"
            type="date"
            value={fechaCierre}
            onChange={(e) => setFechaCierre(e.target.value)}
            InputLabelProps={{
              shrink: true,
            }}
            fullWidth
          />
          <Button
            variant="contained"
            color="primary"
            onClick={handleSubmit}
            style={{ marginTop: '10px' }}
          >
            Ver Libro Mayor
          </Button>
        </div>

        {/* Mostrar las cuentas del libro mayor */}
        {cuentas.map((cuenta, index) => (
          <Card key={index} style={{ marginBottom: '20px' }}>
            <CardHeader
              title={<Typography variant="h6" align="center">{cuenta.nombre}</Typography>}
            />
            <CardContent>
              <TableContainer component={Paper}>
                <Table>
                  <TableHead>
                    <TableRow>
                      <TableCell align="center" style={{ fontWeight: 'bold', borderRight: '1px solid rgba(224, 224, 224, 1)' }}>Debe</TableCell>
                      <TableCell align="center" style={{ fontWeight: 'bold' }}>Haber</TableCell>
                    </TableRow>
                  </TableHead>
                  <TableBody>
                    {cuenta.entradas.map((entrada, entradaIndex) => (
                      <TableRow key={entradaIndex}>
                        <TableCell align="right" style={{ borderRight: '1px solid rgba(224, 224, 224, 1)' }}>
                          {entrada.debe ? `$${entrada.debe.toFixed(2)}` : ''}
                        </TableCell>
                        <TableCell align="right">
                          {entrada.haber ? `$${entrada.haber.toFixed(2)}` : ''}
                        </TableCell>
                      </TableRow>
                    ))}
                  </TableBody>
                </Table>
              </TableContainer>
            </CardContent>
          </Card>
        ))}
      </div>
    </div>
  );
}


/*
import { Card, 
  CardContent,
  CardHeader, 
  Typography, 
  Table, 
  TableBody, 
  TableCell, 
  TableContainer, 
  TableHead, 
  TableRow, 
  Paper } from '@mui/material';

export default function LibroMayor() {
  const cuentas = [
    { nombre: 'Caja', entradas: [{ debe: 1000, haber: 500 }] },
    { nombre: 'Banco', entradas: [{ debe: 2000, haber: 1000 }] },
    { nombre: 'Proveedores', entradas: [{ debe: 500, haber: 1500 }] },
    { nombre: 'Mercadería', entradas: [{ debe: 3000, haber: 1000 }] },
  ];

  return (
    <div className="min-h-screen bg-[#cde8e5] p-5">
      <div className="mx-auto max-w-4xl space-y-6">
        {cuentas.map((cuenta) => (
          <Card component={Paper} key={cuenta.nombre}>
            <CardHeader
              title={<Typography variant="h6">{cuenta.nombre}</Typography>}
            />
            <CardContent>
              <TableContainer>
                <Table>
                  <TableHead>
                    <TableRow>
                      <TableCell>Debe</TableCell>
                      <TableCell>Haber</TableCell>
                    </TableRow>
                  </TableHead>
                  <TableBody>
                    {cuenta.entradas.map((entrada, index) => (
                      <TableRow key={index}>
                        <TableCell>${entrada.debe}</TableCell>
                        <TableCell>${entrada.haber}</TableCell>
                      </TableRow>
                    ))}
                  </TableBody>
                </Table>
              </TableContainer>
            </CardContent>
          </Card>
        ))}
      </div>
    </div>
  );
}
*/