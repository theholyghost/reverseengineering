class ParseTree
{
 class ParseTreeNode { 
       has $!op;
       has @!children;
       has $!parent;
   
       submethod BUILD($op, $children, $parent) {
       		 $!op = $op;
		 @!children = $children;
		 $!parent = $parent;
       }
       
 }
 
 has $!root;
 
 submethod BUILD() {
 	   $root = ParseTreeNode.new(0, (), undef);
	   
 }
 
}
