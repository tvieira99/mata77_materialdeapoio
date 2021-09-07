#lang racket
(define (adicionarFinal e l)
  (cond
    [(null? l) (cons e '())]
    [else
     (cons
      (first l)
      (adicionarFinal e (rest l))
      )]
   ))