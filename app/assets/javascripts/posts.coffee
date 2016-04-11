@copy_name = ->
  str = document.getElementById('post_full_name').value
  str = str.substr(0, 16)
  document.getElementById('post_name').value = str
  
