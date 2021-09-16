#lang racket
(define (map-v2 f l1 . ol)
    (if (null? l1)
        '()
        (let [(f-r (extrai-f-r ol))]
        (cons (apply f (first l1) (first f-r)))
            
        )