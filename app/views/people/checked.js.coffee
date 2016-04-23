$('#checked<%= @person.id%>').html("<%=j link_to(russify_boolean(@person.checked), checked_person_path(@person), remote: true, id: "checked#{@person.id}") %>")
