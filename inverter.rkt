#lang racket
(define (inverter L)
  (inverter* L '()
   ))
(define (inverter* l a)
  (cond
    [(null? l) a]
    [else
     (inverter*
      (rest l)
      (cons (first l) a)
      )]
   ))