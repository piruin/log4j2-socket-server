# Log4j 2 - Socket Server

Because there no ***download and run*** solution for start socket server of
Log4j version 2, That is why I made it!.

## How to use
### Server
run `start.sh` script to start server with default configuration.

> **Default** configuration will start *TcpSocketServer* and logging with *RollingRandomAccessFile*.
> listen `info` level log at port ***8000***. See more default properties below.


input `exit` to stop server.

### Client

Use SocketAppenders for log to Logging Server.
```xml
<Configuration status="warn" name="AwesomeApp" packages="your.awesome.package">
    <Appenders>
        <Socket name="socket" host="localhost" port="8000">
            <SerializedLayout />
        </Socket>
    </Appenders>

    <Loggers>
        <Root level="info">
            <AppenderRef ref="socket"/>
        </Root>
    </Loggers>
</Configuration>
```
You may change `localhost` to address of Logging Server (May be port `8000` too),
Then you can see log at `logs/` under this project directory at Log server.


## Customize

Change `log4j.xml` and `start.sh` to whatever you want then start server. I recommend to folk this project
to control change of your configuration.

### Default Properties
Properties | value
--- | ---
SockertServer | TcpSocketServer
Appender | RollingRandomAccessFile
Port | 8000
Log-level | info
Log-Pattern | %d %p %c{1.} [%t] %m%n
File Name | logs/info.log
Archive File-Pattern | logs/$${date:yyyy-MM}/info-%d{yyyy-MM-dd-HH}-%i.log.gz



## License
This project under Apache 2.0 License.

    Copyright 2016 Piruin Panichphol

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

### Notice

Project/File | License | Copyright
--- | --- | ---
Log4j 2 | Apache 2.0 | Copyright 1999-2016 Apache Software Foundation
JCommander | Apache 2.0 | Copyright 2010 the original author or authors.
