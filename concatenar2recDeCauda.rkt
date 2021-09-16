#lang racket
(define (concatenar1 l1 l2)
  (if (null? l1)
    l2
    (cons (first l1) (concatenar1(rest l1) l2))
  )
)

(define (concatenar3recDeCauda ll)
    (cond
    [(null? ll) empty]
    [(null? (rest ll)) (first ll)]
    [else
        (concatenar3recDeCauda
            (cons 
                (concatenar1 (first ll) (second ll))
                (rest (rest ll))
                )
        )
        ]
    )
)