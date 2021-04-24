#lang racket

(require "../../mk.rkt")
(require "../../reverseo.rkt")

(define result
  (run 1 (lst) (reverseo '(5 7 9) lst)))

(with-output-to-file "answer"
  (lambda ()
    (print '((9 7 5))))
  #:exists 'replace)

(with-output-to-file "output"
  (lambda ()
    (print result))
  #:exists 'replace)

