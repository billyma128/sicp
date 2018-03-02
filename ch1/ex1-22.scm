(define (prime? n)
  (define (divides? a b)
    (= (remainder b a) 0))
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))
  (define (smallest-divisor n)
    (find-divisor n 2))
  (= n (smallest-divisor n)))

(define (odd? n)
  (= (remainder n 2) 1))

(define (gen-odd n)
  (if (odd? n)
    (+ n 2)
    (+ n 1)))

(define (display-primes n count)
  (cond ((= count 0) n)
        ((prime? n) (display n) (newline) (display-primes (gen-odd n) (- count 1)))
        (else (display-primes (gen-odd n) count))))

(define (search-for-primes n)
  (let ((start-time (real-time-clock)))
    (display-primes n 3)
    (- (real-time-clock) start-time)))