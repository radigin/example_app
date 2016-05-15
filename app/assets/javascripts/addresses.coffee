@delete_address_f = ->
  $('a.remove_fields').on 'click', ->
    $(this).closest('.field').find('input[type=hidden].remove_fields').first().val('1')
    $(this).closest('.address').hide()
    false
@add_address_f = ->
  $('a.add_address').on 'click', ->
    new_id = new Date().getTime()
    regexp = new RegExp("new_address", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)   
    $(this).after(content)
    window.delete_address_f()
    false  
$(document).ready window.delete_address_f
$(document).on 'page:load', window.delete_address_f
$(document).ready window.add_address_f
$(document).on 'page:load', window.add_address_f
