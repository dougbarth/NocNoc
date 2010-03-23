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

function currentPanelsParams() {
  result = new Hash();
  $$('.panel_group').each(function(pg) {
    panel_group_id = /panel_group_([0-9]+)/.exec(pg.id)[1];
    visible_panel = pg.select('.panel').detect(function(p) {
      return p.visible();
    });
    result.set('panel_groups[' + panel_group_id + ']', /panel_([0-9]+)/.exec(visible_panel.id)[1]);
  });
  return result;
}

