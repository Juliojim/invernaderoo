with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   i,j : Integer;
   x,y : Integer;
   task temperatura;
   task humedad;

   task body temperatura is
   begin
       i:=0;
      loop
         i:=i+1;
         x:=i;
         if (x > 37)  and (y <20)  then

            Put_Line("El riego se activo");

         elsif(x<20) and (y >40) then

            Put_Line("EL riego se desactivo");

            exit when i=50;
         end if;
      end loop;
      end temperatura;


   task body humedad is
   begin
      j:=0;
      loop
         j:=j + 1;
         y:=j;
         if (x > 37)  and (y <20)  then

            Put_Line("El riego se activo");

         elsif(x<20) and (y >40) then

            Put_Line("EL riego se desactivo");

            exit when i=50;
         end if;
         exit when j=50;
      end loop;
      end humedad;

begin
Put_Line("Este es el proceso de un invernadero");
end Main;
