with Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Text_IO;

procedure solucaoExemplo1 is
   P, X, Y, Dif: Integer;
   subtype N is Integer range 1 .. 10;

   type MY_ARRAY is array(N) of Integer;
   array3 : MY_ARRAY := (1,3);

begin
   Ada.Text_IO.Put_Line("Inserir valor da variavel P:");
   P := Integer'Value (Ada.Text_IO.Get_Line);

   for I in N loop
      Ada.Text_IO.Put (Integer'Image (array3 (I)));
   end loop;

   New_Line;
   for I in 1..MY_ARRAY'Length loop
      X := array3(I + 1);
      Y := array3(I);
      Dif := X - Y;

      if Dif > P then
         Ada.Text_IO.Put_Line("Game Over");
      else
         Ada.Text_IO.Put_Line("Game Win");
      end if;
   end loop;
end solucaoExemplo1;
