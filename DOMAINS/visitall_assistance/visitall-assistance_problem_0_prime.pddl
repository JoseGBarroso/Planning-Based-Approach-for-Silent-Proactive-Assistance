(define (problem visitall-assistance_problem_0_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6 node7 node8 node9 node10 node11 node12 node13  - place)
    

  (:init
    (connected node1 node2)
    (connected node1 node3)
    (connected node1 node4)
    (connected node1 node7)
    (connected node2 node1)
    (connected node2 node3)
    (connected node2 node5)
    (connected node2 node10)
    (connected node3 node1)
    (connected node3 node4)
    (connected node3 node6)
    (connected node4 node2)
    (connected node4 node5)
    (connected node5 node6)
    (connected node6 node2)
    (connected node6 node7)
    (connected node6 node12)
    (connected node7 node8)
    (connected node7 node12)
    (connected node8 node7)
    (connected node8 node9)
    (connected node9 node2)
    (connected node9 node6)
    (connected node9 node10)
    (connected node10 node4)
    (connected node10 node7)
    (connected node10 node8)
    (connected node10 node11)
    (connected node10 node13)
    (connected node11 node12)
    (connected node12 node6)
    (connected node12 node13)

    (at-prime node7)
    (visited node7)

    (= (total-cost) 0)
  )


  (:goal (and 
    (visited node1)
    (visited node2)
    (visited node3)
    (visited node4)
    (visited node5)
    (visited node6)
    (visited node8)
    (visited node9)
    (visited node10)
    (visited node11)
    (visited node12)
    (visited node13)
  ))
  (:metric minimize (total-cost))

)