# SQL CV Portfolio - Relational Database Schema

Este repositorio contiene la arquitectura, modelado y consultas SQL de mi Currículum Vitae estructurado como una base de datos relacional en PostgreSQL.

El objetivo de este mini-proyecto es demostrar buenas prácticas de ingeniería de datos, normalización de esquemas (1NF, 2NF, 3NF), definición de restricciones de integridad relacional (PRIMARY KEY, FOREIGN KEY) y consultas analíticas consolidadas.

---

## Esquema Relacional

El modelo consta de tres tablas interconectadas mediante relaciones 1:N:

1. **datos_personales** (Tabla Principal): Almacena la información de contacto e identidad profesional.
2. **formacion_academica** (Tabla Secundaria): Registra el historial educativo universitario (UCV).
3. **certificaciones** (Tabla Secundaria): Guarda credenciales formales y licencias gremiales (IDEPROCOP), incluyendo enlaces a sus respaldos en PDF.

---

## Stack Técnico
* **Motor de Base de Datos:** PostgreSQL
* **Cliente GUI:** DBeaver
* **Sintaxis SQL:** PostgreSQL / ANSI SQL

---

## Cómo Ejecutar este Proyecto Localmente

1. Clona este repositorio o copia el contenido de [cv_database.sql](./cv_database.sql).
2. Abre tu cliente SQL (DBeaver, pgAdmin, etc.) y conéctate a tu servidor PostgreSQL local.
3. Ejecuta el script `cv_database.sql` para crear las tablas e insertar los datos iniciales.
4. Ejecuta la consulta de prueba JOIN incluida al final del script para visualizar el perfil consolidado.

---

## Certificaciones Verificables
* **Contabilidad Nivel Intermedio (IDEPROCOP):** [Ver Documento PDF](./assets/certificados/Contabilidad_Intermedia_IDEPROCOP_MauricioM.pdf)
