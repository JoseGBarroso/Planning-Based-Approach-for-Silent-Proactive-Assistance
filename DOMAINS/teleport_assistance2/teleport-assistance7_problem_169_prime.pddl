(define (problem teleport-assistance7_problem_169_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-1 pos0-7 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos2-1 pos2-2 pos3-0 pos3-1 pos3-2 pos3-3 pos3-6 pos3-7 pos4-0 pos4-1 pos4-8  - place)

  (:init
    (adj-walk pos0-1 pos1-1 )
    (adj-walk pos1-1 pos0-1 )
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-1 pos1-2 )
    (adj-walk pos1-2 pos1-1 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-walk pos1-2 pos1-3 )
    (adj-walk pos1-3 pos1-2 )
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
    (adj-walk pos1-4 pos1-5 )
    (adj-walk pos1-5 pos1-4 )
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-walk pos2-1 pos3-1 )
    (adj-walk pos3-1 pos2-1 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos3-0 pos3-1 )
    (adj-walk pos3-1 pos3-0 )
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-walk pos3-1 pos3-2 )
    (adj-walk pos3-2 pos3-1 )
    (adj-walk pos3-1 pos4-1 )
    (adj-walk pos4-1 pos3-1 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )
    (adj-walk pos3-6 pos3-7 )
    (adj-walk pos3-7 pos3-6 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )

    (free pos0-1)
    (free pos0-7)
    (free pos1-0)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos2-1)
    (free pos2-2)
    (free pos3-0)
    (free pos3-1)
    (free pos3-2)
    (free pos3-3)
    (free pos3-6)
    (free pos3-7)
    (free pos4-0)
    (free pos4-1)
    (free pos4-8)

    (at-prime pos1-5)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos4-0)))
  (:metric minimize (total-cost))

)