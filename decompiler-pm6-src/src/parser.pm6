use parsetree;

class Parser
{
 has $!symboltable;
 has $!parsetree;
 
 submethod BUILD($symboltable) {

 	   $!symboltable = $symboltable; ### e.g. NES
	   $!parsetree = ParseTree.new();
 }
 
}
