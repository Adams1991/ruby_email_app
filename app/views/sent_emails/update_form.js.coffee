$("#subject").empty()
  .append("<%= escape_javascript(render(:partial => @selected_template)) %>")
