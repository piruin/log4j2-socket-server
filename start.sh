#!/bin/bash

echo "Start log4j 2 Socket Server..."

java -cp jcommander-1.58.jar;log4j-api-2.7.jar;log4j-core-2.7.jar org.apache.logging.log4j.core.net.server.TcpSocketServer -i -p 8000 -c log4j.xml

echo "Stop server."
