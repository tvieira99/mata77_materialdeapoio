#lang racket
(define (concatenar1 l1 l2)
  (if (null? l1)
    l2
    (cons (first l1) (concatenar1(rest l1) l2))
  )
)

(define (concatenar3 ll)
  (if (null? ll)
  empty
  (concatenar1 (first ll) (concatenar3 (rest ll)))
   ))