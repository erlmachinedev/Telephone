# Telephone ☎️  
Friendly application to study the basic [RabbitMQ](https://www.rabbitmq.com) concepts in a fictional telephone 📞 exchange simulation

[img][]

What is RabbitMQ? 

> [RabbitMQ](https://www.rabbitmq.com)is one of the most popular open source [message brokers](https://en.wikipedia.org/wiki/Message_broker) which is used worldwide at small startups and large enterprises.  

How does message broker work?

> Let's imagine fictional [telephone_exchange](https://en.wikipedia.org/wiki/Telephone_exchange) which is used to establish telephone calls between users (Alice and Bob). This central office can guarantee reliable communication and routing between subscribers ([telephone numbers](https://en.wikipedia.org/wiki/Telephone_number))

What is a [connection](https://www.rabbitmq.com/connections.html)?

> By the same way as physical telephony device has an [electrical cable](https://en.wikipedia.org/wiki/Electrical_cable) to carry electric current, your messaging [client](https://www.rabbitmq.com/devtools.html) requires a persistent gateway to provide network interchange between your application and RabbitMQ 

What is a [channel](https://www.rabbitmq.com/channels.html)?

> Channel is a logical entity inside RabbitMQ. In our fictional telephone exchange station channels can be described as extensions on an operator [switchboard](https://en.wikipedia.org/wiki/Telephone_switchboard). Each connection can have multiple associated channels. There are different strategies of channel creation: [datatype channel](https://www.enterpriseintegrationpatterns.com/DatatypeChannel.html), [point-to-point channel](https://www.enterpriseintegrationpatterns.com/PointToPointChannel.html), etc.      

What is an [exchange](https://www.rabbitmq.com/tutorials/amqp-concepts.html#exchanges)?

> In our fictional universe exchange is represented by central office. It is the main place where multiple operators serve to determinate the routes of a message and connect subscribers to each other. In RabbitMQ exchanges are represented by 4 types: [direct](https://www.rabbitmq.com/tutorials/amqp-concepts.html#exchange-direct), [fanout](https://www.rabbitmq.com/tutorials/amqp-concepts.html#exchange-fanout), [topic](https://www.rabbitmq.com/tutorials/amqp-concepts.html#exchange-topic) and [headers](https://www.rabbitmq.com/tutorials/amqp-concepts.html#exchange-headers) 

What is a [queue](https://www.rabbitmq.com/queues.html)?

> Queue is a message buffer and associated [data type](https://en.wikipedia.org/wiki/Queue_(abstract_data_type)). It stores routed messages until they are finally delivered to the consumer. In RabbitMQ queues care configured via [durability](https://www.rabbitmq.com/queues.html#durability), [exclusiveness](https://www.rabbitmq.com/queues.html#exclusive-queues), [priority](https://www.rabbitmq.com/queues.html#priorities), etc. params. The also have different types (check the differentiations between [quorum queues](https://www.rabbitmq.com/quorum-queues.html) and the classic ones)        

### What's next?

[![asciicast](https://asciinema.org/a/mWznGGG0mQt5xq3ZqyL4MsQto.svg)](https://asciinema.org/a/mWznGGG0mQt5xq3ZqyL4MsQto)
