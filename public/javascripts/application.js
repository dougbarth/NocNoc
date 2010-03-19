// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function refreshPanels() {
  $$('.panel').each(function(panel) {
    refreshPanel(panel);
  });
}

function refreshPanel(panel) {
  iframe = $(panel).down('iframe');
  iframe.src = iframe.src;
}
