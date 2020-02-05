(lang dune 2.1)

(generate_opam_files true)

(name foo)
(source (github carlosdagos/dune-optional-libs-example))
(license ISC)
(authors "Carlos D'Agostino")
(maintainers "m@cdagostino.io")

(package
 (name foo)
 (synopsis "A test lib that does nothing"))

(package
 (name foo_lwt)
 (synopsis "A test lib that does nothing but it uses lwt")
 (depopts
  (lwt (>= v5.0.0)))
 (depends
  (foo (>= 0.0.1))))

(package
 (name foo_async)
 (synopsis "A test lib that does nothing but it uses async")
 (depopts
  (async (>= v0.10.0)))
 (depends
  (foo (>= 0.0.1))))
