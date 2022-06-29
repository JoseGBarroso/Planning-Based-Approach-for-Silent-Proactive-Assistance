(define (problem joint_car-assistance1_problem_12)
(:domain joint_car-assistance1_domain)
(:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos0-7 pos0-8 pos0-9 pos0-10 pos0-11 pos0-12 pos0-13 pos0-14 - place
    car0 - car
)

(:init
    (= (total-cost) 0)
    (supporter_turn)
    (adj-walk pos0-0 pos0-1)
    (adj-walk pos0-1 pos0-0)
    (adj-car pos0-0 pos0-1)
    (adj-car pos0-1 pos0-0)
    (adj-car pos0-0 pos0-2)
    (adj-car pos0-2 pos0-0)
    (adj-car pos0-0 pos0-3)
    (adj-car pos0-3 pos0-0)
    (adj-walk pos0-1 pos0-2)
    (adj-walk pos0-2 pos0-1)
    (adj-car pos0-1 pos0-2)
    (adj-car pos0-2 pos0-1)
    (adj-car pos0-1 pos0-3)
    (adj-car pos0-3 pos0-1)
    (adj-car pos0-1 pos0-4)
    (adj-car pos0-4 pos0-1)
    (adj-walk pos0-2 pos0-3)
    (adj-walk pos0-3 pos0-2)
    (adj-car pos0-2 pos0-3)
    (adj-car pos0-3 pos0-2)
    (adj-car pos0-2 pos0-4)
    (adj-car pos0-4 pos0-2)
    (adj-car pos0-2 pos0-5)
    (adj-car pos0-5 pos0-2)
    (adj-walk pos0-3 pos0-4)
    (adj-walk pos0-4 pos0-3)
    (adj-car pos0-3 pos0-4)
    (adj-car pos0-4 pos0-3)
    (adj-car pos0-3 pos0-5)
    (adj-car pos0-5 pos0-3)
    (adj-car pos0-3 pos0-6)
    (adj-car pos0-6 pos0-3)
    (adj-walk pos0-4 pos0-5)
    (adj-walk pos0-5 pos0-4)
    (adj-car pos0-4 pos0-5)
    (adj-car pos0-5 pos0-4)
    (adj-car pos0-4 pos0-6)
    (adj-car pos0-6 pos0-4)
    (adj-car pos0-4 pos0-7)
    (adj-car pos0-7 pos0-4)
    (adj-walk pos0-5 pos0-6)
    (adj-walk pos0-6 pos0-5)
    (adj-car pos0-5 pos0-6)
    (adj-car pos0-6 pos0-5)
    (adj-car pos0-5 pos0-7)
    (adj-car pos0-7 pos0-5)
    (adj-car pos0-5 pos0-8)
    (adj-car pos0-8 pos0-5)
    (adj-walk pos0-6 pos0-7)
    (adj-walk pos0-7 pos0-6)
    (adj-car pos0-6 pos0-7)
    (adj-car pos0-7 pos0-6)
    (adj-car pos0-6 pos0-8)
    (adj-car pos0-8 pos0-6)
    (adj-car pos0-6 pos0-9)
    (adj-car pos0-9 pos0-6)
    (adj-walk pos0-7 pos0-8)
    (adj-walk pos0-8 pos0-7)
    (adj-car pos0-7 pos0-8)
    (adj-car pos0-8 pos0-7)
    (adj-car pos0-7 pos0-9)
    (adj-car pos0-9 pos0-7)
    (adj-car pos0-7 pos0-10)
    (adj-car pos0-10 pos0-7)
    (adj-walk pos0-8 pos0-9)
    (adj-walk pos0-9 pos0-8)
    (adj-car pos0-8 pos0-9)
    (adj-car pos0-9 pos0-8)
    (adj-car pos0-8 pos0-10)
    (adj-car pos0-10 pos0-8)
    (adj-car pos0-8 pos0-11)
    (adj-car pos0-11 pos0-8)
    (adj-walk pos0-9 pos0-10)
    (adj-walk pos0-10 pos0-9)
    (adj-car pos0-9 pos0-10)
    (adj-car pos0-10 pos0-9)
    (adj-car pos0-9 pos0-11)
    (adj-car pos0-11 pos0-9)
    (adj-car pos0-9 pos0-12)
    (adj-car pos0-12 pos0-9)
    (adj-walk pos0-10 pos0-11)
    (adj-walk pos0-11 pos0-10)
    (adj-car pos0-10 pos0-11)
    (adj-car pos0-11 pos0-10)
    (adj-car pos0-10 pos0-12)
    (adj-car pos0-12 pos0-10)
    (adj-car pos0-10 pos0-13)
    (adj-car pos0-13 pos0-10)
    (adj-walk pos0-11 pos0-12)
    (adj-walk pos0-12 pos0-11)
    (adj-car pos0-11 pos0-12)
    (adj-car pos0-12 pos0-11)
    (adj-car pos0-11 pos0-13)
    (adj-car pos0-13 pos0-11)
    (adj-car pos0-11 pos0-14)
    (adj-car pos0-14 pos0-11)
    (adj-walk pos0-12 pos0-13)
    (adj-walk pos0-13 pos0-12)
    (adj-car pos0-12 pos0-13)
    (adj-car pos0-13 pos0-12)
    (adj-car pos0-12 pos0-14)
    (adj-car pos0-14 pos0-12)
    (adj-walk pos0-13 pos0-14)
    (adj-walk pos0-14 pos0-13)
    (adj-car pos0-13 pos0-14)
    (adj-car pos0-14 pos0-13)
    (at-car car0 pos0-3)
    (free car0)
    (at-supporter pos0-2)
    (at-prime pos0-9)
)

(:goal
  (and
    (at-prime pos0-0)
  )
)
(:metric minimize (total-cost))
)
