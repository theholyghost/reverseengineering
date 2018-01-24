class SymbolTable
{
 
 has $.operators;
 
 submethod BUILD() {
 
 	   %.ops = {};
	   $.operators = \%.ops; 
 }
 
}
