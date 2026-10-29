-- =====================================================
-- ESQUEMA RELACIONAL DEL CURRÍCULUM VITAE (PORTFOLIO_DB)
-- =====================================================

-- 1. Tabla Principal: Datos Personales
CREATE TABLE datos_personales (
    id SERIAL PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    rol VARCHAR(150) NOT NULL,
    ubicacion VARCHAR(100) NOT NULL,
    contacto VARCHAR(100) NOT NULL,
    github VARCHAR(100) NOT NULL
);

-- 2. Tabla Secundaria: Formación Académica
CREATE TABLE formacion_academica (
    id SERIAL PRIMARY KEY,
    id_persona INT NOT NULL,
    institucion VARCHAR(150) NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    estado_actual VARCHAR(100) NOT NULL,
    inicio INT NOT NULL,
    finalizacion INT NOT NULL,
    CONSTRAINT fk_formacion_persona 
        FOREIGN KEY (id_persona) REFERENCES datos_personales(id) ON DELETE CASCADE
);

-- 3. Tabla Secundaria: Certificaciones
CREATE TABLE certificaciones (
    id SERIAL PRIMARY KEY,
    id_persona INT NOT NULL,
    institucion VARCHAR(150) NOT NULL,
    certificacion VARCHAR(150) NOT NULL,
    fecha_obtencion DATE NOT NULL,
    documento_url VARCHAR(255),
    CONSTRAINT fk_certificaciones_persona 
        FOREIGN KEY (id_persona) REFERENCES datos_personales(id) ON DELETE CASCADE
);

-- Insertar Datos Personales (Genera el ID = 1)
INSERT INTO datos_personales (nombre_completo, rol, ubicacion, contacto, github)
VALUES ('Mauricio Moncada', 'Estudiante de Economía', 'Caracas', 'maurmoncada@gmail.com', 'MauRMoncada');

-- Insertar Formación Académica vinculada a id_persona = 1
INSERT INTO formacion_academica (id_persona, institucion, titulo, estado_actual, inicio, finalizacion)
VALUES (1, 'UCV', 'Economista', '5to semestre', 2024, 2029);

-- Insertar Certificación vinculada a id_persona = 1
INSERT INTO certificaciones (id_persona, institucion, certificacion, fecha_obtencion, documento_url)
VALUES (1, 'IDEPROCOP', 'Contabilidad nivel intermedio', '2026-10-17', 'https://github.com/MauRMoncada/portfolio/blob/main/assets/certificados/ideprocop_contabilidad.pdf');


-- Consulta de prueba 
SELECT 
    dp.nombre_completo,
    dp.rol,
    dp.contacto,
    fa.institucion AS universidad,
    fa.titulo,
    c.certificacion,
    c.institucion AS emisor_certificado,
    c.fecha_obtencion
FROM datos_personales dp
LEFT JOIN formacion_academica fa ON dp.id = fa.id_persona
LEFT JOIN certificaciones c ON dp.id = c.id_persona;
