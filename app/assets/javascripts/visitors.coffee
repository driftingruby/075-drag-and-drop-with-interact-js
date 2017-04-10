# dragMoveListener = undefined

# dragMoveListener = (event) ->
#   target = undefined
#   x = undefined
#   y = undefined
#   target = event.target
#   x = (parseFloat(target.getAttribute('data-x')) or 0) + event.dx
#   y = (parseFloat(target.getAttribute('data-y')) or 0) + event.dy
#   target.style.webkitTransform = target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'
#   target.setAttribute 'data-x', x
#   target.setAttribute 'data-y', y

# window.dragMoveListener = dragMoveListener
# interact('*[data-draggable="true"]').draggable
#   inertia: true
#   autoScroll: true
#   onmove: dragMoveListener
# $(document).on 'turbolinks:load', ->
#   interact('#favorite_foods').dropzone
#     accept: '*[data-draggable="true"]'
#     overlap: 0.75
#     ondropactivate: (event) ->
#     ondragenter: (event) ->
#       event.target.classList.add 'drop-target'
#       event.relatedTarget.classList.add 'can-drop'
#       $.get event.relatedTarget.attributes['data-url'].value, favorite: true
#     ondragleave: (event) ->
#       event.target.classList.remove 'drop-target'
#       event.relatedTarget.classList.remove 'can-drop'
#       $.get event.relatedTarget.attributes['data-url'].value, favorite: false
#     ondrop: (event) ->
#     ondropdeactivate: (event) ->
#       event.target.classList.remove 'drop-active'
#       event.target.classList.remove 'drop-target'
#   ingredients = []
#   interact('#have_ingredients').dropzone
#     accept: '*[data-draggable="true"]'
#     overlap: 0.75
#     ondropactivate: (event) ->
#     ondragenter: (event) ->
#       event.target.classList.add 'drop-target'
#       event.relatedTarget.classList.add 'can-drop'
#       ingredients.push event.relatedTarget.attributes['data-ingredient'].value
#       $.get event.relatedTarget.attributes['data-url'].value, ingredients: ingredients
#     ondragleave: (event) ->
#       event.target.classList.remove 'drop-target'
#       event.relatedTarget.classList.remove 'can-drop'
#       ingredients = jQuery.grep(ingredients, (value) ->
#         value != event.relatedTarget.attributes['data-ingredient'].value
#       )
#       $.get event.relatedTarget.attributes['data-url'].value, ingredients: ingredients
#     ondrop: (event) ->
#     ondropdeactivate: (event) ->
#       event.target.classList.remove 'drop-active'
#       event.target.classList.remove 'drop-target'
#   return

