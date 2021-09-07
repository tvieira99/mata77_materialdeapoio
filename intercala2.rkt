#lang racket
(define (intercala2 n . elementos)
  (cond
    [(eq? n 0) '()]
    [else
     (cons
      (first elementos)
      (apply intercala2 (- n 1)
             (append
              (rest elementos)
              (cons
               (first elementos)
               '()
               )
             ))
      )]
   ))