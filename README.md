# TokenBucketSimulation
In this project I am  sending packets from station-A to station-B via Traffic shaper. The traffic generated from station A is sent at a variable rate following the Poisson Distribution. That is inter arrival time between jobs or customers will be variable as seen in Poisson distribution. The traffic shaper will regulate the rate of data flow and the capacity of queue will be set, the queue will send incoming packets from station A and send it to station B when it receives the token from the token generator. The traffic shaping algorithm used here is based on token bucket algorithm. The queue inside the traffic shaper is a FIFO queue with a fixed size constant service time.

Testing with CLA-Assistant in production with the corporate CLA feature. ......
