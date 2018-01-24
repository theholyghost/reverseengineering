class ParserFactory
{
 has $.parser;

 submethod BUILD($flag)
	switch ($flag){
	       case "nes":{
	       	    $.parser = NESParser.new(
		    	     $symboltableFactory.new("nes"));
		    break;
	       }
	       default:{
	       		print "Unknown Parser Class";
			exit(1);
	       }
	}
 }
}
