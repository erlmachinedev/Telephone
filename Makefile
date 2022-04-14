PROJECT = telephone
PROJECT_DESCRIPTION = "Friendly application to study the basic RabbitMQ concepts in a fictional telephone exchange simulation"
PROJECT_VERSION = 1.0.0

DEPS = erlmachine amqp_client

TEST_DEPS = meck

dep_erlmachine = git https://github.com/Erlmachine/erlmachine
dep_amqp_client = hex 3.8.14

dep_meck = git https://github.com/eproxus/meck.git 0.9.0

include erlang.mk
