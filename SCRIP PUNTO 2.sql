
exec Get_ConversionXml
@xml_usuarios = '
<Data>
<Usuario><Id>14</Id><Nombre>Juan</Nombre></Usuario>
<Usuario><Id>17</Id><Nombre>Maria</Nombre></Usuario>
<Usuario><Id>25</Id><Nombre>Carlos</Nombre></Usuario>
<Usuario><Id>15</Id><Nombre>Fernanda</Nombre></Usuario>
</Data>',
 @xml_compras = '
<Data>
<Item><Usuario>14</Usuario><Producto>78</Producto><Valor>300</Valor></Item>
<Item><Usuario>17</Usuario><Producto>23</Producto><Valor>568</Valor></Item>
<Item><Usuario>17</Usuario><Producto>99</Producto><Valor>350</Valor></Item>
<Item><Usuario>14</Usuario><Producto>99</Producto><Valor>107</Valor></Item>
<Item><Usuario>25</Usuario><Producto>23</Producto><Valor>425</Valor></Item>
</Data>',
 @xml_itemsIva = '
<Data>
<Producto><IdProducto>23</IdProducto><Porcentaje>0.16</Porcentaje></Producto>
<Producto><IdProducto>99</IdProducto><Porcentaje>0.19</Porcentaje></Producto>
</Data>'


ALTER PROC Get_ConversionXml 
@xml_usuarios XML, 
@xml_compras XML, 
@xml_itemsIva XML

AS
BEGIN 

	SELECT @xml_usuarios = CAST(CAST(@xml_usuarios AS VARBINARY(MAX)) AS XML) 
	SELECT @xml_compras = CAST(CAST(@xml_compras AS VARBINARY(MAX)) AS XML) 
	SELECT @xml_itemsIva= CAST(CAST(@xml_itemsIva AS VARBINARY(MAX)) AS XML) 
	
	SELECT DISTINCT 
		x.Rec.query('./Id').value('.', 'nvarchar(2000)') AS 'Id',
		x.Rec.query('./Nombre').value('.', 'nvarchar(2000)') AS 'Nombre',
		C.COMPRAS.query('./Valor').value('.', 'nvarchar(2000)') AS 'Valor',
		I.IVA.query('./Porcentaje').value('.', 'nvarchar(2000)') AS 'Porcentaje'
	FROM @xml_usuarios.nodes('//Data//Usuario') as x(Rec)
	CROSS APPLY @xml_compras.nodes('Data//Item,') C(COMPRAS)
	CROSS APPLY @xml_itemsIva.nodes('Data//Producto') I(IVA)

END