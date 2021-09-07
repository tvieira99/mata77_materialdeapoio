#lang racket
(define (concatenar2 l1)
  (cond
    [(null?  l1) '()]
    [else
     (append (first l1) (concatenar2 (rest l1))
      )]
   ))