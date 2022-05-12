/*Agregar un registro a la tabla cleinte , con sus datos 
	Listar los clientes cuyo telefono empiece por 23.
	Listar las 2 mejores cuentas que tengan los saldos mas altos.
	Listar las cuentas por cliente,con un campo calcilado llamado cuatroxmil que contendra el 4 por mil del salario*/
	use banco 
	Insert cliente
	values('1000411863', 'David','Otalvaro','Cra90a#35a37', '3043974921','11/10/2001','0')
	--Listar los clientes cuyo telefono empiece por 23
	select *from cliente where Telefono like '23%'
	--listar las 2 mejores cuentas que tengan los saldos mas altos.
	select top 2 *from CuentaxCliente order by Saldo desc
	--listar las cuentad por cliente, con un campo calculado llamada cuatroxmil que contemdra el 4 por mil del saldo
	select NroCuenta ,fechaapertura,clave,cuatroxmil=salario *4/1000 from CuentaxClie
