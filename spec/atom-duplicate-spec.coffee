# AtomDuplicate = require '../lib/atom-duplicate'
#
# # Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
# #
# # To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# # or `fdescribe`). Remove the `f` to unfocus the block.
#
# describe "AtomDuplicate", ->
#   activationPromise = null
#
#   beforeEach ->
#     atom.workspaceView = new WorkspaceView
#     activationPromise = atom.packages.activatePackage('atomDuplicate')
#
#   describe "when the atom-duplicate:toggle event is triggered", ->
#     it "attaches and then detaches the view", ->
#       expect(atom.workspaceView.find('.atom-duplicate')).not.toExist()
#
#       # This is an activation event, triggering it will cause the package to be
#       # activated.
#       atom.workspaceView.trigger 'atom-duplicate:toggle'
#
#       waitsForPromise ->
#         activationPromise
#
#       runs ->
#         expect(atom.workspaceView.find('.atom-duplicate')).toExist()
#         atom.workspaceView.trigger 'atom-duplicate:toggle'
#         expect(atom.workspaceView.find('.atom-duplicate')).not.toExist()
