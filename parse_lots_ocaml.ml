(* 
Starting from scratch (almost, you should have brew install opam):
opam init
eval $(opam env)
opam install yojson
dune build --root . parse_lots_ocaml.exe
/usr/bin/time -l _build/default/parse_lots_ocaml.exe

*)

let () =
  let json = Yojson.Basic.from_file "citylots.json" in
  print_endline (if Yojson.Basic.equal (Yojson.Basic.from_string "[]") json then "OK" else "FAIL")

