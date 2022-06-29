(define (problem teleport-assistance7_problem_133_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos1-2 pos2-1 pos2-2 pos3-1 pos4-1 pos4-3  - place)

  (:init
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-walk pos2-1 pos3-1 )
    (adj-walk pos3-1 pos2-1 )
    (adj-walk pos3-1 pos4-1 )
    (adj-walk pos4-1 pos3-1 )

    (free pos1-2)
    (free pos2-1)
    (free pos2-2)
    (free pos3-1)
    (free pos4-1)
    (free pos4-3)

    (at-prime pos4-1)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos2-1)))
  (:metric minimize (total-cost))

)