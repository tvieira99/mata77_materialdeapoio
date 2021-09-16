#lang racket
(define (pares l)
  (cond
    [(null? l) '()]
    [else
     (letrec
         (
          [y (lambda (listIter listGeral)
              (cond
               [(null? listIter) '()]
               [(null? listGeral) (y (rest listIter) l)]
               [else
                (cons
                 (cons
                  (first listIter)
                   (cons
                   (first listGeral)
                   empty
                   )
                  )
                 (y listIter (rest listGeral))
                 )]
               ))]
          )
       (y l l)
      )]
))