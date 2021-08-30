#lang racket
(define (intercala n . elementos)
  (cond
    [(eq? n 0) '()]
    [else
     (cons
      (first elementos)
      (apply intercala (- n 1)
             (append
              (rest elementos)
              (cons
               (first elementos)
               '()
               )
             ))
      )]
   ))