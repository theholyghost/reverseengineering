class ProgramUnit
{
 has $.operator;
 has @.operands;
 
 submethod BUILD($operatorname, @operands)
 {
 
  $.operator = $operatorname;
  @.operands = @operands;
  
 }
 
};
