This github repo contains tool required for SIEM rule testing. 


Installation
1. Setup Caldera: Go to the folder Mitre-Caldera and follow instruction.
2. Setup vectr: Go to the folder vectr and follow instruction.
3. Follow the steps in calderaToAttire


How to Work:
1. Performe adversary emulation using caldera and collect the results in json format.
2. Uisng calderaToAttire Operation results from caldera and converting them to the ATTiRe logging format, for use in vectr.
3. Import the result in vectr to Analyz
