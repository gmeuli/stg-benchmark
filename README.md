# The Single-Target Gate (STG) benchmark suite
The benchmark suite contains quantum circuits implementing small Boolean functions and expressed in the Q# quantum programming language. 

The circuits are optimized according to the requirements of fault-tolerant quantum computing. 
For each representative of a spectral-equivalent class of Boolean functions with 4 and 5 inputs, the benchmark contains three different implementations: optimized for T-count, T-depth or number of qubits. 

The paper [1] explains how a representative implementation can be used to generate a circuit for all Boolean functions in the same 
spectral-equivalent class, without increasing any of the indicated cost functions.

The algorithms used to generate the circuits optimized for the T-count and the T-depth are based on Xor-And-inverter Graphs (XAG) and are described in [1] and [2].

The algorithm that generates the circuits optimized for the number of qubits use ESOP-based synthesis and techniques from [3] and [4]. 

The benchmarks can be used in association with the LUT-based compilation method in [5] to generate quantum circuits implementing larger Boolean functions.

## References

[1] G. Meuli, M. Soeken, M. Roetteler, G. De Micheli, *Enumerating Optimal Quantum Circuits using Spectral Classification*, ISCAS, 2020.

[2] G. Meuli, M. Soeken, E. Campbell, M. Roetteler, G. De Micheli, *The Role of Multiplicative Complexity in Compiling Low T-count Oracle Circuits*

[3] M. Amy, D. Maslov, M. Mosca, *Polynomial-time T-depth Optimization of Clifford+T circuits via Matroid Partitioning*, IEEE Transactions on Computer-Aided Design of Integrated Circuits and Systems 33(10), 2014.

[4] D. Maslov, *On the advantages of using relative phase Toffolis with an application to multiple control Toffoli optimization*, Phys. Rev. A 93, 2016.

[5] G. Meuli, M. Soeken, M. Roetteler, G. De Micheli, *ROS: Resource Constrained Oracle Synthesis for Quantum Computers*, QPL, 2019.


## Compilation results


<font size="1.5">
<table rules="rows">
  <tr>
    <th ></th>
    <th  colspan="3">optimal T-count</th>
    <th  colspan="3">optimal T-depth </th>
    <th colspan="3">optimal number of qubits</th>
  </tr>
    <tr style="text-align: center;">
      <th>truth table</th>
      <th>Qubits</th>
      <th>T-count</th>
      <th>T-depth</th>
      <th>Qubits</th>
      <th>T-count</th>
      <th>T-depth</th>
      <th>Qubits</th>
      <th>T-count</th>
      <th>T-depth</th>
    </tr>
  <tbody>
    <tr>
      <td  style="text-align:center">8000</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">24</td>
      <td  style="text-align:center">12</td>
    </tr>
    <tr>
      <td  style="text-align:center">8080</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">8</td>
    </tr>
    <tr>
      <td  style="text-align:center">0888</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">31</td>
      <td  style="text-align:center">14</td>
    </tr>
    <tr>
      <td  style="text-align:center">8888</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">1</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">3</td>
    </tr>
    <tr>
      <td  style="text-align:center">7080</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">19</td>
      <td  style="text-align:center">8</td>
    </tr>
    <tr>
      <td  style="text-align:center">7880</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">36</td>
      <td  style="text-align:center">13</td>
    </tr>
    <tr>
      <td  style="text-align:center">7888</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">1</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
    </tr>
    <tr>
      <td  style="text-align:center">6ac06ac0</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">1</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
    </tr>
    <tr>
      <td  style="text-align:center">6ac8e000</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">15</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">63</td>
      <td  style="text-align:center">28</td>
    </tr>
    <tr>
      <td  style="text-align:center">80008000</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">24</td>
      <td  style="text-align:center">12</td>
    </tr>
    <tr>
      <td  style="text-align:center">80808080</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">8</td>
    </tr>
    <tr>
      <td  style="text-align:center">88808000</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">26</td>
      <td  style="text-align:center">11</td>
    </tr>
    <tr>
      <td  style="text-align:center">88808080</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">48</td>
      <td  style="text-align:center">21</td>
    </tr>
    <tr>
      <td  style="text-align:center">88808880</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">31</td>
      <td  style="text-align:center">14</td>
    </tr>
    <tr>
      <td  style="text-align:center">88888888</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">1</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">3</td>
    </tr>
    <tr>
      <td  style="text-align:center">a8808000</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">54</td>
      <td  style="text-align:center">22</td>
    </tr>
    <tr>
      <td  style="text-align:center">a8808080</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">40</td>
      <td  style="text-align:center">20</td>
    </tr>
    <tr>
      <td  style="text-align:center">a8808880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">55</td>
      <td  style="text-align:center">22</td>
    </tr>
    <tr>
      <td  style="text-align:center">a880a880</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">15</td>
      <td  style="text-align:center">6</td>
    </tr>
    <tr>
      <td  style="text-align:center">a8888880</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">27</td>
      <td  style="text-align:center">12</td>
    </tr>
    <tr>
      <td  style="text-align:center">a888a080</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">55</td>
      <td  style="text-align:center">24</td>
    </tr>
    <tr>
      <td  style="text-align:center">a8e0c800</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">87</td>
      <td  style="text-align:center">36</td>
    </tr>
    <tr>
      <td  style="text-align:center">aa808080</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">65</td>
      <td  style="text-align:center">28</td>
    </tr>
    <tr>
      <td  style="text-align:center">b884a880</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">32</td>
      <td  style="text-align:center">13</td>
    </tr>
    <tr>
      <td  style="text-align:center">bc88a080</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">55</td>
      <td  style="text-align:center">21</td>
    </tr>
    <tr>
      <td  style="text-align:center">e0a8c880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">27</td>
      <td  style="text-align:center">13</td>
    </tr>
    <tr>
      <td  style="text-align:center">e1808880</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">70</td>
      <td  style="text-align:center">33</td>
    </tr>
    <tr>
      <td  style="text-align:center">e8808000</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">42</td>
      <td  style="text-align:center">18</td>
    </tr>
    <tr>
      <td  style="text-align:center">e8808002</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">83</td>
      <td  style="text-align:center">34</td>
    </tr>
    <tr>
      <td  style="text-align:center">e8808080</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">58</td>
      <td  style="text-align:center">27</td>
    </tr>
    <tr>
      <td  style="text-align:center">e8808880</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">55</td>
      <td  style="text-align:center">26</td>
    </tr>
    <tr>
      <td  style="text-align:center">e880a880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">51</td>
      <td  style="text-align:center">19</td>
    </tr>
    <tr>
      <td  style="text-align:center">e880e880</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">36</td>
      <td  style="text-align:center">14</td>
    </tr>
    <tr>
      <td  style="text-align:center">e8818880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">69</td>
      <td  style="text-align:center">29</td>
    </tr>
    <tr>
      <td  style="text-align:center">e881e880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">44</td>
      <td  style="text-align:center">15</td>
    </tr>
    <tr>
      <td  style="text-align:center">e8888880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">63</td>
      <td  style="text-align:center">25</td>
    </tr>
    <tr>
      <td  style="text-align:center">e8a08880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">89</td>
      <td  style="text-align:center">38</td>
    </tr>
    <tr>
      <td  style="text-align:center">e8c0a880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">47</td>
      <td  style="text-align:center">21</td>
    </tr>
    <tr>
      <td  style="text-align:center">e9a0c088</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">65</td>
      <td  style="text-align:center">24</td>
    </tr>
    <tr>
      <td  style="text-align:center">e9c0a880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">79</td>
      <td  style="text-align:center">32</td>
    </tr>
    <tr>
      <td  style="text-align:center">ea808080</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">42</td>
      <td  style="text-align:center">18</td>
    </tr>
    <tr>
      <td  style="text-align:center">eca08880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">47</td>
      <td  style="text-align:center">22</td>
    </tr>
    <tr>
      <td  style="text-align:center">f8808880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">79</td>
      <td  style="text-align:center">32</td>
    </tr>
    <tr>
      <td  style="text-align:center">f8888880</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">29</td>
      <td  style="text-align:center">11</td>
    </tr>
    <tr>
      <td  style="text-align:center">fca08880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">68</td>
      <td  style="text-align:center">25</td>
    </tr>
    <tr>
      <td  style="text-align:center">2888a000</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">32</td>
      <td  style="text-align:center">16</td>
    </tr>
    <tr>
      <td  style="text-align:center">6ac8e240</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">44</td>
      <td  style="text-align:center">17</td>
    </tr>
    <tr>
      <td  style="text-align:center">78888888</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">19</td>
      <td  style="text-align:center">8</td>
    </tr>
    <tr>
      <td  style="text-align:center">80000000</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">34</td>
      <td  style="text-align:center">15</td>
    </tr>
    <tr>
      <td  style="text-align:center">80808000</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">58</td>
      <td  style="text-align:center">26</td>
    </tr>
    <tr>
      <td  style="text-align:center">88888880</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">7</td>
      <td  style="text-align:center">41</td>
      <td  style="text-align:center">15</td>
    </tr>
    <tr>
      <td  style="text-align:center">e9808080</td>
      <td  style="text-align:center">8</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">13</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">27</td>
      <td  style="text-align:center">13</td>
    </tr>
    <tr>
      <td  style="text-align:center">eac86240</td>
      <td  style="text-align:center">9</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">4</td>
      <td  style="text-align:center">11</td>
      <td  style="text-align:center">12</td>
      <td  style="text-align:center">3</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">19</td>
      <td  style="text-align:center">8</td>
    </tr>
    <tr>
      <td  style="text-align:center">ee84a060</td>
      <td  style="text-align:center">10</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">5</td>
      <td  style="text-align:center">15</td>
      <td  style="text-align:center">16</td>
      <td  style="text-align:center">2</td>
      <td  style="text-align:center">6</td>
      <td  style="text-align:center">43</td>
      <td  style="text-align:center">20</td>
    </tr>
  </tbody>
</table>