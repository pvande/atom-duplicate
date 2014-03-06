{Range} = require 'atom'

module.exports =
  activate: (state) ->
    atom.workspaceView.on "atom-duplicate:duplicate", @duplicateLine

  duplicateLine: ->
    editor = atom.workspaceView.getActiveView().getEditor()

    editor.transact ->
      selections = editor.getSelections()
      if selections.every((sel) -> sel.isEmpty())
        selections.forEach (sel) ->
          range = sel.getBufferRange()
          nextLine = range.start.translate([1, 0])

          sel.expandOverLine()
          text = sel.getText()
          sel.insertText(text, select: false, autoIndent: false, undo: 'skip')
          sel.insertText(text, select: false, autoIndent: false, undo: 'skip')

          sel.setBufferRange(new Range(nextLine, nextLine))

      else
        selections.forEach (sel) ->
          text = sel.getText()
          sel.insertText(text, select: false, autoIndent: false, undo: 'skip')
          sel.insertText(text, select: true, autoIndent: false, undo: 'skip')
