(define (problem teleport-assistance7_problem_137_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-2 pos1-0 pos1-1 pos2-3 pos3-0 pos3-1 pos3-3 pos3-4 pos4-0 pos4-1 pos4-3 pos4-4 pos5-0 pos5-1 pos5-2 pos5-3 pos6-1 pos6-2 pos6-3 pos7-3 pos8-3 pos8-4  - place)

  (:init
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos3-0 pos3-1 )
    (adj-walk pos3-1 pos3-0 )
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-walk pos3-1 pos4-1 )
    (adj-walk pos4-1 pos3-1 )
    (adj-walk pos3-3 pos3-4 )
    (adj-walk pos3-4 pos3-3 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos3-4 pos4-4 )
    (adj-walk pos4-4 pos3-4 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )
    (adj-walk pos4-0 pos5-0 )
    (adj-walk pos5-0 pos4-0 )
    (adj-walk pos4-1 pos5-1 )
    (adj-walk pos5-1 pos4-1 )
    (adj-walk pos4-3 pos4-4 )
    (adj-walk pos4-4 pos4-3 )
    (adj-walk pos4-3 pos5-3 )
    (adj-walk pos5-3 pos4-3 )
    (adj-walk pos5-0 pos5-1 )
    (adj-walk pos5-1 pos5-0 )
    (adj-walk pos5-1 pos5-2 )
    (adj-walk pos5-2 pos5-1 )
    (adj-walk pos5-1 pos6-1 )
    (adj-walk pos6-1 pos5-1 )
    (adj-walk pos5-2 pos5-3 )
    (adj-walk pos5-3 pos5-2 )
    (adj-walk pos5-2 pos6-2 )
    (adj-walk pos6-2 pos5-2 )
    (adj-walk pos5-3 pos6-3 )
    (adj-walk pos6-3 pos5-3 )
    (adj-walk pos6-1 pos6-2 )
    (adj-walk pos6-2 pos6-1 )
    (adj-walk pos6-2 pos6-3 )
    (adj-walk pos6-3 pos6-2 )
    (adj-walk pos6-3 pos7-3 )
    (adj-walk pos7-3 pos6-3 )
    (adj-walk pos7-3 pos8-3 )
    (adj-walk pos8-3 pos7-3 )
    (adj-walk pos8-3 pos8-4 )
    (adj-walk pos8-4 pos8-3 )

    (free pos0-2)
    (free pos1-0)
    (free pos1-1)
    (free pos2-3)
    (free pos3-0)
    (free pos3-1)
    (free pos3-3)
    (free pos3-4)
    (free pos4-0)
    (free pos4-1)
    (free pos4-3)
    (free pos4-4)
    (free pos5-0)
    (free pos5-1)
    (free pos5-2)
    (free pos5-3)
    (free pos6-1)
    (free pos6-2)
    (free pos6-3)
    (free pos7-3)
    (free pos8-3)
    (free pos8-4)

    (at-prime pos8-3)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos5-0)))
  (:metric minimize (total-cost))

)