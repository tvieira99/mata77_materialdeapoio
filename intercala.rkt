#lang racket
(define (intercala n e1 e2)
  (cond
    [(eq? n 0) '()]
    [else
     (cons
      e1
      (intercala (- n 1) e2 e1)
     )]
   ))