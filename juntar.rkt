#lang racket
(define (juntar l1 l2)
  (cond
    [(and (null? l1) (null? l2)) '()]
    [(null? l1) (juntar l2 l1)]
    [else
     (cons
      (first l1)
      (juntar l2 (rest l1))
      )]
   ))