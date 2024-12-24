```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   subtype Positive is Integer range 1..Integer'Last;
   function Get_Value(Index : Positive) return Integer is
   begin
     return My_Arr(Index);
   exception
     when Constraint_Error => return -1; -- Handle out of bounds
   end Get_Value;
begin
   for I in 1..10 loop
     Ada.Text_IO.Put_Line(Integer'Image(Get_Value(I)));
   end loop;
   Ada.Text_IO.Put_Line(Integer'Image(Get_Value(11))); -- This will raise Constraint_Error
end Example;
```