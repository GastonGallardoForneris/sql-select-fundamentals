# Consultas Básicas SELECT y Alias — TechStore

Este repositorio contiene la solución a las consultas SQL solicitadas por el equipo de finanzas de TechStore, junto con la documentación técnica correspondiente sobre buenas prácticas.

---

## Respuestas Teóricas

### 1. ¿Por qué es mala práctica usar `SELECT *` en producción?

Usar `SELECT *` en un entorno de producción no se recomienda principalmente por tres razones:

1. **Rendimiento y consumo de red:** Obliga a la base de datos a leer y transferir absolutamente todas las columnas de la tabla. En tablas grandes, esto consume memoria RAM y ancho de banda innecesariamente.
2. **Mantenibilidad y errores en aplicaciones:** Si la tabla cambia en el futuro (se agregan, eliminan o cambian de orden las columnas), las consultas o reportes automatizados que dependan de ese `SELECT *` pueden romperse.
3. **Seguridad:** Traer todas las columnas puede exponer información sensible o confidencial que el usuario o el reporte no necesita ver.

---

### 2. ¿Por qué son importantes los alias para un stakeholder no técnico?

Los alias (`AS`) permiten traducir los nombres técnicos de la base de datos (generalmente en inglés o codificados) a un lenguaje claro para el negocio.

* **Ejemplo concreto:** Un usuario de finanzas puede no saber qué significa `total_amount` o `order_date`. Al transformar esa consulta usando alias:
  ```sql
  SELECT total_amount AS monto_total, order_date AS fecha_pedido FROM sales;
