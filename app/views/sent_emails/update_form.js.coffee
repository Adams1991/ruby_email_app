$("#subject_field").empty()
$("#message_field").empty()
  .append("<%= escape_javascript(render(:partial => @selected_template)) %>")
