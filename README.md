# The Single-Target Gate (STG) benchmark suite
The benchmark suite contains quantum circuits implementing small Boolean functions and expressed in the Q# quantum programming language. 

The circuits are optimized according to the requirements of fault-tolerant quantum computing. 
For each representative of a spectral-equivalent class of Boolean functions with 4 and 5 inputs, the benchmark contains three different implementations: optimized for T-count, T-depth or number of qubits. 

Details on the algorithms applied to generate the original circuits are in [1], together with an explanation of how the representative implementation can be used to generate a circuit for all Boolean functions in the same 
spectral-equivalent class, without increasing any of the indicated cost functions.

The benchmarks can be used in association with the LUT-based compilation method in [2] to generate quantum circuits implementing larger Boolean functions.

[1] G. Meuli, M. Soeken, M. Roetteler, G. De Micheli, *Enumerating Optimal Quantum Circuits using Spectral Classification*, ISCAS 2020.

[2] G. Meuli, M. Soeken, M. Roetteler, G. De Micheli, *ROS: Resource Constrained Oracle Synthesis for Quantum Computers*,QPL 2019

Compilation results
-----

<font size="1.5">
<table rules="rows">
  <tr>
    <th ></th>
    <th  colspan="4">optimal number of quits</th>
    <th  colspan="4">optimal number of T gates </th>
    <th colspan="4">optimal T-depth</th>
  </tr>
  <tr>
    <td style="text-align:left" >truth table</td>
    <td >cliffords</td>
    <td >qubits</td>
    <td >T-count</td>
    <td >T-depth</td>
    <td >cliffords</td>
    <td >qubits</td>
    <td >T-count</td>
    <td >T-depth</td>
    <td >cliffords</td>
    <td >qubits</td>
    <td >T-count</td>
    <td >T-depth</td>
  </tr>
  <tr>
    <td > 8000</td>
    <td  style="text-align:center">120</td>
    <td   style="text-align:center">6</td>
    <td  style="text-align:center">70</td>
    <td  style="text-align:center">37</td>
    <td  style="text-align:center">51</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">81</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >8080</td>
    <td  style="text-align:center">48</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">28</td>
    <td  style="text-align:center">19</td>
    <td  style="text-align:center">23</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">3</td>
    <td  style="text-align:center">29</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td > 0888</td>
    <td  style="text-align:center">132</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">77</td>
    <td  style="text-align:center">42</td>
    <td  style="text-align:center">47</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">85</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >8888</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">2</td>
    <td  style="text-align:center">17</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">1</td>
  </tr>
  <tr>
    <td  >7080</td>
    <td  style="text-align:center">60</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">35</td>
    <td  style="text-align:center">24</td>
    <td  style="text-align:center">25</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">3</td>
    <td  style="text-align:center">45</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td  >7880</td>
    <td  style="text-align:center">182</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">105</td>
    <td  style="text-align:center">55</td>
    <td  style="text-align:center">70</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">89</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >7888</td>
    <td  style="text-align:center">24</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">14</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">22</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">2</td>
    <td  style="text-align:center">35</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">1</td>
  </tr>
  <tr>
    <td  >6ac06ac0</td>
    <td  style="text-align:center">24</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">14</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">26</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">2</td>
    <td  style="text-align:center">31</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">1</td>
  </tr>
  <tr>
    <td  >6ac8e000</td>
    <td  style="text-align:center">720</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">413</td>
    <td  style="text-align:center">210</td>
    <td  style="text-align:center">125</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">162</td>
    <td  style="text-align:center">15</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td  >80008000</td>
    <td  style="text-align:center">120</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">70</td>
    <td  style="text-align:center">37</td>
    <td  style="text-align:center">43</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">85</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >80808080</td>
    <td  style="text-align:center">48</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">28</td>
    <td  style="text-align:center">19</td>
    <td  style="text-align:center">19</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">3</td>
    <td  style="text-align:center">33</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td  >88808000</td>
    <td  style="text-align:center">582</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">336</td>
    <td  style="text-align:center">159</td>
    <td  style="text-align:center">72</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">99</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >88808080</td>
    <td  style="text-align:center">314</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">182</td>
    <td  style="text-align:center">92</td>
    <td  style="text-align:center">61</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">77</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >88808880</td>
    <td  style="text-align:center">170</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">98</td>
    <td  style="text-align:center">50</td>
    <td  style="text-align:center">65</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">97</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >88888888</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">2</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">1</td>
  </tr>
  <tr>
    <td >a8808000</td>
    <td  style="text-align:center">848</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">490</td>
    <td  style="text-align:center">232</td>
    <td  style="text-align:center">110</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">155</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >a8808080</td>
    <td  style="text-align:center">292</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">168</td>
    <td  style="text-align:center">88</td>
    <td  style="text-align:center">53</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">85</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >a8808880</td>
    <td  style="text-align:center">436</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">252</td>
    <td  style="text-align:center">123</td>
    <td  style="text-align:center">78</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">119</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >a880a880</td>
    <td  style="text-align:center">148</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">84</td>
    <td  style="text-align:center">47</td>
    <td  style="text-align:center">29</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">3</td>
    <td  style="text-align:center">49</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td >a8888880</td>
    <td  style="text-align:center">548</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">315</td>
    <td  style="text-align:center">160</td>
    <td  style="text-align:center">57</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">89</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >a888a080</td>
    <td  style="text-align:center">258</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">147</td>
    <td  style="text-align:center">74</td>
    <td  style="text-align:center">59</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">85</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >a8e0c800</td>
    <td  style="text-align:center">560</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">322</td>
    <td  style="text-align:center">156</td>
    <td  style="text-align:center">110</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">135</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >aa808080</td>
    <td  style="text-align:center">360</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">210</td>
    <td  style="text-align:center">105</td>
    <td  style="text-align:center">57</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">73</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >b884a880</td>
    <td  style="text-align:center">686</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">392</td>
    <td  style="text-align:center">188</td>
    <td  style="text-align:center">82</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">101</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >bc88a080</td>
    <td  style="text-align:center">709</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">399</td>
    <td  style="text-align:center">192</td>
    <td  style="text-align:center">104</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">137</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >e0a8c880</td>
    <td  style="text-align:center">240</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">140</td>
    <td  style="text-align:center">75</td>
    <td  style="text-align:center">86</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">107</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td >e1808880</td>
    <td  style="text-align:center">372</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">217</td>
    <td  style="text-align:center">117</td>
    <td  style="text-align:center">86</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">113</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e8808000</td>
    <td  style="text-align:center">798</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">448</td>
    <td  style="text-align:center">226</td>
    <td  style="text-align:center">69</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">105</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e8808002</td>
    <td  style="text-align:center">721</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">420</td>
    <td  style="text-align:center">222</td>
    <td  style="text-align:center">92</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">113</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e8808080</td>
    <td  style="text-align:center">484</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">280</td>
    <td  style="text-align:center">142</td>
    <td  style="text-align:center">98</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">127</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e8808880</td>
    <td  style="text-align:center">410</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">238</td>
    <td  style="text-align:center">120</td>
    <td  style="text-align:center">82</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">113</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >e880a880</td>
    <td  style="text-align:center">414</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">238</td>
    <td  style="text-align:center">120</td>
    <td  style="text-align:center">92</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">125</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e880e880</td>
    <td  style="text-align:center">250</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">140</td>
    <td  style="text-align:center">79</td>
    <td  style="text-align:center">98</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">125</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e8818880</td>
    <td  style="text-align:center">974</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">560</td>
    <td  style="text-align:center">259</td>
    <td  style="text-align:center">84</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">101</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e881e880</td>
    <td  style="text-align:center">504</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">287</td>
    <td  style="text-align:center">143</td>
    <td  style="text-align:center">121</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">154</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e8888880</td>
    <td  style="text-align:center">526</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">301</td>
    <td  style="text-align:center">151</td>
    <td  style="text-align:center">103</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">140</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e8a08880</td>
    <td  style="text-align:center">524</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">301</td>
    <td  style="text-align:center">146</td>
    <td  style="text-align:center">118</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">143</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e8c0a880</td>
    <td  style="text-align:center">268</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">147</td>
    <td  style="text-align:center">79</td>
    <td  style="text-align:center">86</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">123</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e9a0c088</td>
    <td  style="text-align:center">468</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">266</td>
    <td  style="text-align:center">134</td>
    <td  style="text-align:center">122</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">167</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e9c0a880</td>
    <td  style="text-align:center">540</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">308</td>
    <td  style="text-align:center">152</td>
    <td  style="text-align:center">124</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">153</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >ea808080</td>
    <td  style="text-align:center">216</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">126</td>
    <td  style="text-align:center">70</td>
    <td  style="text-align:center">56</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
    <td  style="text-align:center">75</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td >eca08880</td>
    <td  style="text-align:center">414</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">238</td>
    <td  style="text-align:center">120</td>
    <td  style="text-align:center">113</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">150</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >f8808880</td>
    <td  style="text-align:center">528</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">308</td>
    <td  style="text-align:center">155</td>
    <td  style="text-align:center">80</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">117</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td  >f8888880</td>
    <td  style="text-align:center">594</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">343</td>
    <td  style="text-align:center">168</td>
    <td  style="text-align:center">78</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">105</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >fca08880</td>
    <td  style="text-align:center">578</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">329</td>
    <td  style="text-align:center">155</td>
    <td  style="text-align:center">122</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">155</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >2888a000</td>
    <td  style="text-align:center">96</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">56</td>
    <td  style="text-align:center">33</td>
    <td  style="text-align:center">45</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
    <td  style="text-align:center">65</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td>6ac8e240</td>
    <td  style="text-align:center">198</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">112</td>
    <td  style="text-align:center">59</td>
    <td  style="text-align:center">74</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">111</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >78888888</td>
    <td  style="text-align:center">60</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">35</td>
    <td  style="text-align:center">19</td>
    <td  style="text-align:center">56</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">75</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td >80000000</td>
    <td  style="text-align:center">264</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">154</td>
    <td  style="text-align:center">78</td>
    <td  style="text-align:center">43</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">57</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >80808000</td>
    <td  style="text-align:center">316</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">182</td>
    <td  style="text-align:center">91</td>
    <td  style="text-align:center">59</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">73</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >88888880</td>
    <td  style="text-align:center">282</td>
    <td  style="text-align:center">7</td>
    <td  style="text-align:center">161</td>
    <td  style="text-align:center">82</td>
    <td  style="text-align:center">58</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">75</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >e9808080</td>
    <td  style="text-align:center">204</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">119</td>
    <td  style="text-align:center">66</td>
    <td  style="text-align:center">57</td>
    <td  style="text-align:center">8</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">101</td>
    <td  style="text-align:center">13</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td >eac86240</td>
    <td  style="text-align:center">148</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">84</td>
    <td  style="text-align:center">47</td>
    <td  style="text-align:center">44</td>
    <td  style="text-align:center">9</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">4</td>
    <td  style="text-align:center">67</td>
    <td  style="text-align:center">11</td>
    <td  style="text-align:center">12</td>
    <td  style="text-align:center">3</td>
  </tr>
  <tr>
    <td >ee84a060</td>
    <td  style="text-align:center">198</td>
    <td  style="text-align:center">6</td>
    <td  style="text-align:center">112</td>
    <td  style="text-align:center">61</td>
    <td  style="text-align:center">90</td>
    <td  style="text-align:center">10</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">5</td>
    <td  style="text-align:center">119</td>
    <td  style="text-align:center">15</td>
    <td  style="text-align:center">16</td>
    <td  style="text-align:center">2</td>
  </tr>
  <tr>
    <td> <b>Total </td>
    <td style="text-align:center">  <b>19002 </td> 
    <td style="text-align:center">  <b>345 </td>
    <td style="text-align:center">  <b>10913 </td>
    <td style="text-align:center">  <b>5506 </td>
    <td style="text-align:center">  <b>3842 </td>
    <td style="text-align:center">  <b>475 </td>
    <td style="text-align:center">  <b>712 </td>
    <td style="text-align:center">  <b>220 </td>
    <td style="text-align:center">  <b>5260 </td>
    <td style="text-align:center">  <b>625 </td>
    <td style="text-align:center">  <b>712 </td>
    <td style="text-align:center">  <b>143 </td>
  </tr>

</table>

