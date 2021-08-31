#lang racket
(define (inverte* ln)
  (inverte-aux* ln '())
)

(define (inverte-aux* ln la)
  (cond
    [(null? ln) la]
    [(list? (first ln))
     (inverte-aux* (rest ln) (cons (inverte-aux* (first ln) '()) la))]
     ;(inverte-aux* (rest ln) (cons (inverte* (first ln)) la))]
    [else
       (inverte-aux* (rest ln) (cons (first ln) la))]
   )
)