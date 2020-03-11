with MicroBit.Display;

procedure Main is
   Number : Integer := 3;
begin
   MicroBit.Display.Display (Integer'Image (2));
   loop
      exit when Number > 1_000_000;
      declare
         Divider           : Integer := 3;
         Square_of_Divider : Integer := 9;
         Odd_Number        : Integer := 7;
      begin
         while Square_of_Divider <= Number loop
            exit when Number mod Divider = 0;
            Divider           := Divider + 1;
            Square_of_Divider := Square_of_Divider + Odd_Number;
            Odd_Number        := Odd_Number + 2;
         end loop;
         if Square_of_Divider > Number then
            MicroBit.Display.Display (Integer'Image (Number));
         end if;
      end;
      Number := Number + 2;
   end loop;
end Main;
