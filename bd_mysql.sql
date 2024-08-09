CREATE DATABASE UDB_RRHH;
USE UDB_RRHH;

-- Crear Departamento
CREATE TABLE Departamento (
    idDepartamento INT AUTO_INCREMENT PRIMARY KEY,
    nombreDepartamento VARCHAR(50) NOT NULL,
    descripcionDepartamento TEXT
);

-- Crear Cargos
CREATE TABLE Cargos (
    idCargo INT PRIMARY KEY,
    cargo VARCHAR(50) NOT NULL,
    descripcionCargo TEXT,
    jefatura BOOLEAN
);

-- Crear TipoContratacion
CREATE TABLE TipoContratacion (
    idTipoContratacion INT AUTO_INCREMENT PRIMARY KEY,
    tipoContratacion VARCHAR(100) NOT NULL
);

-- Crear Empleados
CREATE TABLE Empleados (
    idEmpleado INT AUTO_INCREMENT PRIMARY KEY,
    numeroDui VARCHAR(9) NOT NULL,
    nombrePersona VARCHAR(50) NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    numeroTelefono VARCHAR(9) NOT NULL,
    correoInstitucional VARCHAR(50) NOT NULL,
    fechaNacimiento DATE
);

-- Crear Contrataciones
CREATE TABLE Contrataciones (
    idContratacion INT AUTO_INCREMENT PRIMARY KEY,
    idDepartamento INT NOT NULL,
    idEmpleado INT NOT NULL,
    idCargo INT NOT NULL,
    idTipoContratacion INT NOT NULL,
    fechaContratacion DATE,
    salario DECIMAL(10,2) NOT NULL,
    estado BOOLEAN,
    FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado),
    FOREIGN KEY (idTipoContratacion) REFERENCES TipoContratacion(idTipoContratacion),
    FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento),
    FOREIGN KEY (idCargo) REFERENCES Cargos(idCargo)
);

