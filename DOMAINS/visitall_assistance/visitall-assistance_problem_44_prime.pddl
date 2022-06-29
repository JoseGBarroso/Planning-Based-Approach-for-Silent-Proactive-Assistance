(define (problem visitall-assistance_problem_44_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6 node7 node8 node9 node10 node11 node12 node13 node14  - place)
    

  (:init
    (connected node1 node2)
    (connected node1 node7)
    (connected node2 node3)
    (connected node2 node4)
    (connected node2 node8)
    (connected node2 node13)
    (connected node3 node1)
    (connected node3 node4)
    (connected node3 node6)
    (connected node3 node7)
    (connected node4 node1)
    (connected node4 node5)
    (connected node4 node8)
    (connected node4 node12)
    (connected node4 node13)
    (connected node5 node6)
    (connected node5 node11)
    (connected node6 node2)
    (connected node6 node7)
    (connected node6 node8)
    (connected node6 node9)
    (connected node7 node3)
    (connected node7 node8)
    (connected node7 node9)
    (connected node7 node13)
    (connected node8 node5)
    (connected node8 node7)
    (connected node8 node9)
    (connected node8 node10)
    (connected node9 node3)
    (connected node9 node10)
    (connected node9 node12)
    (connected node10 node2)
    (connected node10 node5)
    (connected node10 node11)
    (connected node11 node5)
    (connected node11 node12)
    (connected node12 node3)
    (connected node12 node4)
    (connected node12 node5)
    (connected node12 node13)
    (connected node13 node12)

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
    (visited node10)
    (visited node11)
    (visited node12)
    (visited node13)
    (visited node14)
  ))
  (:metric minimize (total-cost))

)