CREATE TABLE autor (
    id int  NOT NULL,
    nombre varchar(100)  NOT NULL,
    apellido varchar(100)  NOT NULL,
    nacimiento date  NOT NULL,
    CONSTRAINT pk_autor PRIMARY KEY (id)
);

-- Table: libro
CREATE TABLE libro (
    id int  NOT NULL,
    nombre varchar(100)  NOT NULL,
    fecha_publicacion date  NOT NULL,
    genero varchar(100)  NOT NULL,
    precio double(10,2)  NOT NULL,
    cantidad_pag int  NOT NULL,
    id_autor int  NOT NULL,
    CONSTRAINT pk_libro PRIMARY KEY (id)
);

-- foreign keys
-- Reference: libro_autor (table: libro)
ALTER TABLE libro ADD CONSTRAINT libro_autor FOREIGN KEY libro_autor (id_autor)
    REFERENCES autor (id);

    