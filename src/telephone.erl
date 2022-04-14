-module(telephone).
-export([]).

-export([vsn/0]).
-export([description/0]).

-export([connect/0, disconnect/1]).
-export([open/1, close/1]).

-export([cast/2, cast/3]).
-export([call/2]).

-include_lib("erlmachine/include/erlmachine_system.hrl").
-include_lib("amqp_client/include/amqp_client.hrl").

-type signal() :: #amqp_msg{}.

-type uri() :: list().

-type connection() :: term().
-type wire() :: term().

%%% Application

-spec get_key(Key::atom()) -> 'undefined' | success(term()).
get_key(Key) ->
    application:get_key(?MODULE, Key).

-spec vsn() -> binary().
vsn() ->
    {ok, Vsn} = get_key('vsn'),
    Vsn.

-spec description() ->  binary().
description() ->
    {ok, Desc} = get_key('description'),
    Desc.

-spec get_env(Par::atom(), Def::term()) -> term().
get_env(Par, Def) ->
    application:get_env(?MODULE, Par, Def).


%%% Env

-spec uri() -> uri().
uri() ->
    Def = "amqp://localhost",

    URI = get_env(uri, Def), true = is_list(URI),
    URI.


%% AMQP

-spec connect() -> success(connection()) | failure(term()).
connect() ->
    URI = uri(),

    {ok, Config} = amqp_uri:parse(URI),

    Res = amqp_connection:start(Config),
    Res.

-spec disconnect(Pid::connection()) -> success().
disconnect(Pid) ->
    ok = amqp_connection:close(Pid),
    ok.


-spec open(Pid::connection()) -> wire().
open(Pid) ->
    {ok, Wire} = amqp_connection:open_channel(Pid),
    Wire.

-spec close(Wire::wire()) -> success().
close(Wire) ->
    ok = amqp_channel:close(Wire),
    ok.

-spec cast(Wire::wire(), Method::term(), Signal::signal()) -> success().
cast(Wire, Method, Signal) ->
    ok = amqp_channel:cast(Wire, Method, Signal),
    ok.

-spec cast(Wire::wire(), Method::term()) -> success().
cast(Wire, Method) ->
    ok = amqp_channel:cast(Wire, Method),
    ok.

-spec call(Wire::wire(), Method::term()) -> term().
call(Wire, Method) ->
    Res = amqp_channel:call(Wire, Method),
    Res.

