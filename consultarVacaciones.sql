-- Consultar ultima solicitud aprobada desde tabla Solicitud de Vacaciones
SELECT TOP 1 * FROM ADRE69
WHERE Cod_fun = 590
AND EstSolVac = 'A'
ORDER BY NumSolVac DESC 

-- Consultar ultima solicitud aprobada desde tabla Solicitud de Vacaciones
SELECT TOP 1 NumSolVac, FecSolVac, FecResSol, EstSolVac, ObsResSol FROM ADRE69
WHERE Cod_fun = 590
AND EstSolVac = 'A'
ORDER BY NumSolVac DESC

-- Consultar ultima solicitud aprobada desde tabla Cartola de Vacaciones
SELECT TOP 1 CorCarVac, Cod_fun, GloCarVac, NumSolVac, FecCarVac, FecCreCar  FROM ADRE71
WHERE Cod_fun = 590
AND GloCarVac LIKE '%APROBADA%'
ORDER BY CorCarVac DESC
