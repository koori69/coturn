# coturn
## Version

4.5.0.7

Environment Parameters
-----------------
* EXTERNAL_IP -- optional manually-specified external IP address
* PORT -- listening port for STUN and TURN, default 3478
* USER -- default koori69:koori69
* REALM -- default koori69

 ```shell
docker run -d -e EXTERNAL_IP=xxx.xxx.xxx.xxx --name=coturn -p 6001:3478 -p 6001:3478/udp --restart="always" coturn:4.5.0.7
 ```
