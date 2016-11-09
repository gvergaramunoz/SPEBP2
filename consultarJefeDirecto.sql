CREATE PROCEDURE consultarJefeDirecto @funcionario int
AS
BEGIN
	SELECT Nom_Fun, Pat_fun, Mat_fun, Des_car
FROM ADFA11 fun
INNER JOIN ADFA12 carg ON fun.Cod_car = carg.Cod_car
WHERE Cod_fun IN (SELECT CodJp_11
FROM ADFA11
WHERE Cod_fun = @funcionario)
END
