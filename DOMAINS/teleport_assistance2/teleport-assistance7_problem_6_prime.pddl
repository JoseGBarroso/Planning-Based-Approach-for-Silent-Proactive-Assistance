(define (problem teleport-assistance7_problem_6_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-2 pos0-4 pos1-2 pos2-0 pos2-1 pos2-3 pos3-1 pos3-2 pos3-3  - place)

  (:init
    (adj-walk pos0-2 pos1-2 )
    (adj-walk pos1-2 pos0-2 )
    (adj-walk pos2-0 pos2-1 )
    (adj-walk pos2-1 pos2-0 )
    (adj-walk pos2-1 pos3-1 )
    (adj-walk pos3-1 pos2-1 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos3-1 pos3-2 )
    (adj-walk pos3-2 pos3-1 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )

    (free pos0-2)
    (free pos0-4)
    (free pos1-2)
    (free pos2-0)
    (free pos2-1)
    (free pos2-3)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)

    (at-prime pos2-0)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos3-3)))
  (:metric minimize (total-cost))

)