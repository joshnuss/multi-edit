angular.module('MultiEdit').service 'Site', (Socket) ->
  service =
    layout: null
    types: []
    users:
      editing: []

  Socket.on 'init', (layout, types, users) ->
    service.layout = layout
    service.types  = types
    service.users.editing = users

  Socket.on 'site:layout', (layout) ->
    service.layout = layout

  Socket.on 'site:types', (types) ->
    service.types = types

  Socket.on 'users:editing:join', (user) ->
    service.users.editing.push(user)

  Socket.on 'users:editing:leave', (user) ->
    delete service.users.editing[user]

  service
