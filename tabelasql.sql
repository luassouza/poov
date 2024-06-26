-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://github.com/pgadmin-org/pgadmin4/issues/new/choose if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.doador
(
    nome text,
    codigo bigserial NOT NULL,
    cpf text,
    contato text,
    tiposanguineo text DEFAULT 'DESCONHECIDO',
    rh text DEFAULT 'DESCONHECIDO',
    situacao text DEFAULT 'ATIVO',
    PRIMARY KEY (codigo)
);

CREATE TABLE IF NOT EXISTS public.doacao
(
    codigo bigserial NOT NULL,
    data time without time zone,
    hora time without time zone,
    volume double precision,
    PRIMARY KEY (codigo)
);
END;