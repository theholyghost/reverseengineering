use programunit;

class Program
{
 has @!programbuffer;
 has @.programunits;
 has $!wordsize;
 has $!fh;

 submethod BUILD($bpu)
 {
  @!programbuffer = "";
  @.programunits = ();
  
  $!wordsize = $bpu;
  $!fh = undef;
 }

 submethod open($filename)
 {
  if $filename.IO ~~ :e {
     print "Decompiler : Opening " . $filename . " for reading....\n";
  } else {
    print "Decompiler : Cannot open " . $filename . "\n";
  }
   $!fh = open $filename, :r;  
 }

 submethod read($offset, $length) ### length can be negative
 {
  my $f1 = $fh.IO;
 
  with IO::CatHandle.new: $f1 {
       .seek $offset, SeekFromCurrent;
       @!programbuffer = .readchars($length);
  }
  
  return 0;
 }
  
};
