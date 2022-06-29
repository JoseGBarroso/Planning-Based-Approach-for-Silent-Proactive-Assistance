(define (problem visitall-assistance_problem_15_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6 node7 node8  - place)
    

  (:init
    (connected node1 node2)
    (connected node2 node3)
    (connected node3 node1)
    (connected node3 node4)
    (connected node4 node5)
    (connected node5 node6)
    (connected node6 node7)

    (at-prime node8)
    (visited node8)

    (= (total-cost) 0)
  )


  (:goal (and 
    (visited node1)
    (visited node2)
    (visited node3)
    (visited node4)
    (visited node5)
    (visited node6)
    (visited node7)
  ))
  (:metric minimize (total-cost))

)