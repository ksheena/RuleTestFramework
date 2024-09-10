This folder conatins Caldera Installation Steps on Ubuntu and Related Documents.


Caldera Installation Steps:
1. Download the filed default.yml and install_caldera.sh file from github
2. Change the permission of file  install_caldera.sh
        chmod +x install_caldera.sh
3. run install_caldera.shc
        ./install_caldera.sh
4. Create screen and run caldera build in caldera directory 
         screen -S caldera_install
         python3 server.py --insecure --build
5. Access  http://localhost:8888 in Chrome browser. Credentials are there in default.yml file.

Installation Document: 
https://caldera.readthedocs.io/en/latest/Installing-Caldera.html


YouTube Caldera Adversary Emulation:
https://www.youtube.com/watch?v=EIHLXWnK1Dw&t=4378s