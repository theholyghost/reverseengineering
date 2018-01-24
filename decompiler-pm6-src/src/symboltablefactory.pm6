class SymbolTableFactory
{
 has $.symboltable;

 submethod BUILD($flag)
	$.symboltable = undef;
	
	switch ($flag){
	       case "nes":{
	       	    nesfill();
		    break;
	       }
	       default:{
	       		print "Unknown Symbol Table Operator Class";
			exit(1);
	       }
	}
 }

 submethod nesfill($symboltable)
 {
  	my %ops = ${$symboltable->operators};

	%ops["ldx"] = 0x0;
	
 }
}
