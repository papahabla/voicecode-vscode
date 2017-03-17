pack = Packages.register
  name: 'vscode'
  platforms: ['darwin']
  applications: ['com.microsoft.VSCode']
  description: 'Visual Studio Code integration'

pack.implement

  'object:next': ->
    @key 'right', 'command option'

  'object:previous': ->
    @key 'left', 'command option'

  'object:backward': ->
    @key '[', 'control'

  'object:forward': ->
    @key '[', 'control shift'

  'editor:move-to-line-number': (input) ->
    @key 'g', 'control'
    if input?
      @delay 200
      @string input
      @delay 100
      @enter()

  'ide:build': (input) ->
      @key 'f7', 'shift'

  'ide:run': (input) ->
      @key 'f5'

  'ide:debug': (input) ->
      @key 'f5'

  'ide:debug-breakpoint-toggle': (input) ->
      @key 'f9'

  'ide:debug-step-into': ->
      @key 'f11'

  'ide:debug-step-out': ->
      @key 'f11', 'shift'

  'ide:debug-step-over': ->
      @key 'f10'

  'ide:debug-continue': ->
      @key 'f5'

  'ide:show-doc': (input) ->
      @key 'i', 'command'

  'ide:show-completion': (input) ->
      @key 'control' # TODO: ?

  'ide:goto-file': (input) ->
      @key 'p', 'command'
      if value
        @string input

  'ide:goto-any': (input) ->
      @key 't', 'command'
      if value
        @string input

  'ide:goto-symbol': (input) ->
      @key 'o', 'command shift'
      if value
        @string input

  'ide:goto-symbol-project': (input) ->
      @key 't', 'command'
      if value
        @string input

  'ide:goto-definition': (input) ->
      @key 'f12'

  'ide:group-new': (input) ->
    if input
      # if value == 'first'
      #   @key '1', 'command' # 1, 2, or 3
      # else if value == 'previous'
      #   @key input, 'command' # 1, 2, or 3
      @key input, 'command' # 1, 2, or 3
    else
      @key '2', 'command'
