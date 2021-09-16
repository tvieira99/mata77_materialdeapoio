#lang racket
(define (concatenar3 . listas)
  (apply append listas
   ))