$ ->
  menu = $ '#menu'
  dropdown = $ '#dropdown'

  # Dropdown should be hidden by default
  dropdown.hide()

  # Add mouse event handlers to menu
  menu.on 'mouseover', (e) -> dropdown.stop().show 200
  menu.on 'mouseout', (e) -> dropdown.stop().hide 200

