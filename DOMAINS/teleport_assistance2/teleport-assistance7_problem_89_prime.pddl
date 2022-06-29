(define (problem teleport-assistance7_problem_89_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos2-4 pos4-2 pos4-6 pos5-1 pos5-3 pos6-1 pos6-5 pos6-6 pos6-7 pos7-7 pos7-8 pos7-9  - place)

  (:init
    (adj-walk pos5-1 pos6-1 )
    (adj-walk pos6-1 pos5-1 )
    (adj-walk pos6-5 pos6-6 )
    (adj-walk pos6-6 pos6-5 )
    (adj-walk pos6-6 pos6-7 )
    (adj-walk pos6-7 pos6-6 )
    (adj-walk pos6-7 pos7-7 )
    (adj-walk pos7-7 pos6-7 )
    (adj-walk pos7-7 pos7-8 )
    (adj-walk pos7-8 pos7-7 )
    (adj-walk pos7-8 pos7-9 )
    (adj-walk pos7-9 pos7-8 )

    (free pos2-4)
    (free pos4-2)
    (free pos4-6)
    (free pos5-1)
    (free pos5-3)
    (free pos6-1)
    (free pos6-5)
    (free pos6-6)
    (free pos6-7)
    (free pos7-7)
    (free pos7-8)
    (free pos7-9)

    (at-prime pos6-5)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos7-7)))
  (:metric minimize (total-cost))

)