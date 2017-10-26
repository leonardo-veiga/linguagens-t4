val infile = "H:/Linguagens/T4/input.txt";
val outfile = "H:/Linguagens/T4/output.txt";
fun readlist (infile : string) = let 
  val ins = TextIO.openIn infile 
  fun loop ins = 
   case TextIO.inputLine ins of 
      SOME line => line :: loop ins 
    | NONE      => [] 
in 
  loop ins before TextIO.closeIn ins 
end;
val pureGraph =  readlist(infile);

fun writeFile filename content =
    let val fd = TextIO.openOut filename
        val _ = TextIO.output (fd, content) handle e => (TextIO.closeOut fd; raise e)
        val _ = TextIO.closeOut fd
    in () end;
