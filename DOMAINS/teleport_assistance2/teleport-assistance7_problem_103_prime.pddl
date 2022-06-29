(define (problem teleport-assistance7_problem_103_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-1 pos1-5 pos1-6 pos2-2 pos2-4 pos2-5 pos3-2 pos3-3 pos3-4 pos4-3 pos4-4 pos4-5  - place)

  (:init
    (adj-walk pos1-5 pos1-6 )
    (adj-walk pos1-6 pos1-5 )
    (adj-walk pos1-5 pos2-5 )
    (adj-walk pos2-5 pos1-5 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-walk pos2-4 pos3-4 )
    (adj-walk pos3-4 pos2-4 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )
    (adj-walk pos3-3 pos3-4 )
    (adj-walk pos3-4 pos3-3 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos3-4 pos4-4 )
    (adj-walk pos4-4 pos3-4 )
    (adj-walk pos4-3 pos4-4 )
    (adj-walk pos4-4 pos4-3 )
    (adj-walk pos4-4 pos4-5 )
    (adj-walk pos4-5 pos4-4 )

    (free pos0-1)
    (free pos1-5)
    (free pos1-6)
    (free pos2-2)
    (free pos2-4)
    (free pos2-5)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)

    (at-prime pos4-5)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos1-6)))
  (:metric minimize (total-cost))

)