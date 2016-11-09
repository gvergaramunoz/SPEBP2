CREATE PROCEDURE consultarProfesional @funcionario int
AS
BEGIN
	SELECT Nom_Fun, Pat_fun, Mat_fun, Rut_Fun, Dig_Fun, Des_car, Cod_CCo_11, des_CCos
FROM ADFA11 fun 
INNER JOIN ADFA12 carg ON fun.Cod_car = carg.Cod_car
INNER JOIN ADCB03 cencos ON fun.Cod_CCo_11 = cencos.Cod_CCos
WHERE Cod_fun = @funcionario
END
