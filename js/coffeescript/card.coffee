# Code Preview 
$ ->
  HtmlMode = ace.require("ace/mode/html").Mode;
  editor = ace.edit("code-preview-card");
  editor.getSession().setMode(new HtmlMode());
  editor.setTheme("ace/theme/github");

  editor = ace.edit("code-preview-card-profile");
  editor.getSession().setMode(new HtmlMode());
  editor.setTheme("ace/theme/github");
