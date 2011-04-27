;; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

;; Find the sum of all the multiples of 3 or 5 below 1000.

(def n 0)
(doseq [i (range 1 1000)]
  (if (or (= (rem i 3) 0) (= (rem i 5) 0)) (def n (+ n i))))
(println n)
