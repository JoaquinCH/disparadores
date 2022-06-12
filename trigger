--Disparador

CREATE OR REPLACE TRIGGER EMPLEADOS_AU 
    AFTER INSERT ON HIJOS 
    FOR EACH ROW
BEGIN
    UPDATE EMPLEADOS SET NUMHIJ_EM = NUMHIJ_EM + 1 WHERE COD_EM = :NEW.PADRE_HI;
END EMPLEADOS_AU;
/

--Consulta del Número de Hijos del Empleado

SELECT NUMHIJ_EM FROM EMPLEADOS WHERE COD_EM = 1;

--Inserción de un Nuevo Hijo para el Empleado

INSERT INTO HIJOS VALUES (1, 3, '12/06/2022', 'Ruiz Del Junco, Roberto');

--Consulta del Número de Hijos Actualizado del Empleado

SELECT NUMHIJ_EM FROM EMPLEADOS WHERE COD_EM = 1;
