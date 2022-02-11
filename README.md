# opennsa-config
 
--------------
**Preparation**
OpenNSA requires a number of configuration/certification files to properly run.

Here is a list of files that YOU will need to generate prior to the running the container (make sure they are in the config dir):
1. opennsa.conf (loc:config/)
2. All of the NRM files for the network (loc:config/)
3. key file (loc:config/)
4. crt file (loc:config/)
5. Optional: CA certificates (loc:config/certs/)
  
Example:

      config
        ├── certs
        │   └── ca.cert
        ├── csf-mx.nrm
        ├── opennsa.conf
        ├── opennsa.crt
        ├── opennsa.key
        ├── par-mx.nrm
        └── was-mx.nrm

--------------
**Running Image**

As OpenNSA requires a Postgres database, docker-compose is used to coordinate
the setup of the two containers.

1. Make sure opennsa.conf and opennsa.nrm are in the config dir
   Leave the database config as-is.

2. $ ./create-compose
   This will substitute stuff in the templates and create docker-compose.yml

3. $ docker-compose up
   This should bring up a PostgreSQL instance and OpenNSA.


You may have to edit template.yml to expose OpenNSA ports publicly, mount in
certificates, or similar.

If you have Portainer or other containers using the HTTP/HTTPS port (9080) or (9443), You can simply change the exposed ports in the docker-compose.yml.
