#lang racket
(define (saudacoes3
#:hi [aloalo "Alo"]
nome #:last [sobrenome "da Silva"])
(string-append aloalo ", " nome " " sobrenome))

;EXPECTED OUTPUT
;(saudacoes3 "Zé" #:last "Mané" #:hi "E aí")
;>"E aí, Zé Mané"