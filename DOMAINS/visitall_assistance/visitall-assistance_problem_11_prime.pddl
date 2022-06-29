(define (problem visitall-assistance_problem_11_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6 node7 node8 node9  - place)
    

  (:init
    (connected node1 node2)
    (connected node1 node3)
    (connected node1 node4)
    (connected node1 node6)
    (connected node1 node8)
    (connected node2 node3)
    (connected node2 node4)
    (connected node2 node7)
    (connected node3 node4)
    (connected node4 node5)
    (connected node5 node6)
    (connected node6 node7)
    (connected node7 node1)
    (connected node7 node8)
    (connected node8 node1)

    (at-prime node1)
    (visited node1)

    (= (total-cost) 0)
  )


  (:goal (and 
    (visited node2)
    (visited node3)
    (visited node4)
    (visited node5)
    (visited node6)
    (visited node7)
    (visited node8)
    (visited node9)
  ))
  (:metric minimize (total-cost))

)