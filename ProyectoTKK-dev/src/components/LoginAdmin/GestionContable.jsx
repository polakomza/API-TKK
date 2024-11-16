import { useEffect, useState } from "react";

export default function GestionContable() {
  const [activeTab, setActiveTab] = useState("diario");
  const [libroDiario, setLibroDiario] = useState([]);
  const [libroMayor, setLibroMayor] = useState([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [fechaInicio, setFechaInicio] = useState(""); // Fecha de inicio
  const [fechaCierre, setFechaCierre] = useState(""); // Fecha de cierre
  
  const handleTabChange = (tab) => {
    setActiveTab(tab);
  };

  // Función para cargar datos según el tab activo
  const fetchData = async () => {
    setLoading(true);
    setError("");

    try {
      let response;
      let url;

      // Determinar la URL y los parámetros en función del tab activo y las fechas
      if (activeTab === "diario") {
        url = `http://localhost:8080/administrador/libroDiario?fechaInicio=${fechaInicio}&fechaCierre=${fechaCierre}`;
      } else if (activeTab === "mayor") {
        url = `http://localhost:8080/administrador/libroMayor?fechaInicio=${fechaInicio}&fechaCierre=${fechaCierre}`;
      }

      response = await fetch(url);

      if (!response.ok) {
        throw new Error("Error al obtener los datos");
      }

      const data = await response.json();

      if (activeTab === "diario") {
        setLibroDiario(data.registros || []);
      } else if (activeTab === "mayor") {
        setLibroMayor(data.registros || []);
      }
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  // Recargar datos al cambiar de tab
  useEffect(() => {
    fetchData();
  }, [activeTab, fechaInicio, fechaCierre]); // Dependemos también de las fechas

  return (
    <div className="flex flex-col h-screen bg-gray-100">
      {/* Botones de navegación */}
      <div className="flex w-full bg-white shadow-md">
        <button
          onClick={() => handleTabChange("diario")}
          className={`w-1/2 py-4 font-semibold text-center ${
            activeTab === "diario" ? "bg-blue-500 text-white" : "bg-gray-200 text-gray-600"
          }`}
        >
          Libro Diario
        </button>
        <button
          onClick={() => handleTabChange("mayor")}
          className={`w-1/2 py-4 font-semibold text-center ${
            activeTab === "mayor" ? "bg-blue-500 text-white" : "bg-gray-200 text-gray-600"
          }`}
        >
          Libro Mayor
        </button>
      </div>

      {/* Formulario para fechas */}
      <div className="flex justify-between p-4">
        <div>
          <label className="block text-sm font-medium text-gray-700">Fecha Inicio</label>
          <input
            type="date"
            value={fechaInicio}
            onChange={(e) => setFechaInicio(e.target.value)}
            className="mt-1 block w-full p-2 border border-gray-300 rounded-md"
          />
        </div>
        <div>
          <label className="block text-sm font-medium text-gray-700">Fecha Cierre</label>
          <input
            type="date"
            value={fechaCierre}
            onChange={(e) => setFechaCierre(e.target.value)}
            className="mt-1 block w-full p-2 border border-gray-300 rounded-md"
          />
        </div>
        <button
          onClick={fetchData}
          className="ml-4 px-4 py-2 bg-blue-500 text-white rounded-md"
        >
          Filtrar
        </button>
      </div>

      {/* Contenedor para la lista */}
      <div className="flex-grow p-8">
        <div className="bg-white p-6 rounded-lg shadow-md">
          {loading ? (
            <p className="text-center text-gray-600">Cargando...</p>
          ) : error ? (
            <p className="text-center text-red-500">Error: {error}</p>
          ) : activeTab === "diario" && libroDiario.length === 0 ? (
            <p className="text-center text-gray-600">No hay registros en el Libro Diario.</p>
          ) : activeTab === "mayor" && libroMayor.length === 0 ? (
            <p className="text-center text-gray-600">No hay registros en el Libro Mayor.</p>
          ) : (
            <div className="overflow-x-auto">
              <table className="min-w-full table-auto border-collapse">
                <thead>
                  <tr className="bg-gray-200">
                    <th className="py-2 px-4 text-left border-b border-black">Fecha</th>
                    <th className="py-2 px-4 text-left border-b border-black">Nombre de Cuenta</th>
                    <th className="py-2 px-4 text-left border-b border-black">Debe</th>
                    <th className="py-2 px-4 text-left border-b border-black">Haber</th>
                    {activeTab === "mayor" && (
                      <th className="py-2 px-4 text-left border-b border-black">Saldo</th>
                    )}
                  </tr>
                </thead>
                <tbody>
                  {(activeTab === "diario" ? libroDiario : libroMayor).map((entrada, index) => (
                    <tr key={index} className={index % 2 === 0 ? "bg-gray-50" : "bg-white"}>
                      <td className="py-2 px-4 border-b border-black">{entrada.fecha}</td>
                      <td className="py-2 px-4 border-b border-black">{entrada.nombre_cuenta}</td>
                      <td className="py-2 px-4 border-b border-black">{entrada.debe}</td>
                      <td className="py-2 px-4 border-b border-black">{entrada.haber}</td>
                      {activeTab === "mayor" && (
                        <td className="py-2 px-4 border-b border-black">{entrada.saldo}</td>
                      )}
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}


