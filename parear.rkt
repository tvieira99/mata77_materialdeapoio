#lang racket
(define (parear x l)
  (cond
    [(null? l) '()]
    [else
     (cons
      (cons
       x
       (cons
        (first l)
        '()
        )
       )
      (parear x (rest l))
     )]
   ))