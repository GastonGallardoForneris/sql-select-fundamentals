-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Gaston Gallardo
-- Fecha: 29/09/2026
-- ══════════════════════════════════════════

-- Consulta 1: Exploración general de la tabla sales
-- Usar SELECT * sirve en la etapa inicial para explorar todas las columnas de la tabla.
-- No se recomienda en producción porque baja el rendimiento y trae datos que no necesitamos.
SELECT * FROM sales;

-- Consulta 2: Selección de columnas específicas para finanzas
SELECT customer_id, product_id, total_amount
FROM sales;

-- Consulta 3: Selección con alias en español para stakeholders
SELECT order_date AS fecha_pedido,
       product_name AS nombre_producto,
       quantity AS cantidad_unidades
FROM sales;

