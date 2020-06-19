# Local Testing

This document details how to start up the onboard and landside containers on the same computer for local testing such as for simulation.


Windows and MacOS users will need to have Docker Desktop installed. You will need at least Docker Engine v17.06, and v19.03 is recommended.
For Windows users, we recommend using the WSL 2 backend.


1. To run the containers, please clone our codebase and change directory to the newly created directory. In that directory (robosub-ros) execute
   ```
   docker-compose up -d
   ```
   This will pull the images if you don't have them, create a new network that simulates the network we use on our robot,
   and will start the containers.
2. To connect into the containers, you can ssh into them. 

   For the onboard container, use the command 
   ```
   ssh -p 2200 root@localhost
   ```

   For the landside container, use the command
   ```
   ssh -XY -p 2201 root@localhost
   ```

   The `-XY` starts graphics forwarding. You will not be able to forward graphics on the onboard container.
   
   The `-p` stands for which port ssh in the container is set to. We have set that to 2200 for the onboard container and 2201 for the 
   landside container.
   
   The password for both containers is 'robotics'.

3. To stop and remove both containers, navigate to the same directory you started them from (from your computer, not from inside
   the container). Execute
   ```
   docker-compose down
   ```
   Both containers will stop and be deleted and the local network that was created will be deleted.

