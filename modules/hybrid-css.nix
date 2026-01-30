theme: ''
  @define-color base00 ${theme.base00};
  @define-color base01 ${theme.base01};
  @define-color base02 ${theme.base02};
  @define-color base03 ${theme.base03};
  @define-color base04 ${theme.base04};
  @define-color base05 ${theme.base05};
  @define-color base06 ${theme.base06};
  @define-color base07 ${theme.base07};
  @define-color base08 ${theme.base08};
  @define-color base09 ${theme.base09};
  @define-color base0A ${theme.base0A};
  @define-color base0B ${theme.base0B};
  @define-color base0C ${theme.base0C};
  @define-color base0D ${theme.base0D};
  @define-color base0E ${theme.base0E};
  @define-color base0F ${theme.base0F};

  /* Semantic mappings */
  @define-color theme_bg_color @base00;
  @define-color theme_fg_color @base05;
  @define-color theme_selected_bg_color @base0E;
  @define-color theme_selected_fg_color @base00;
  @define-color borders @base02;
  @define-color warning_color @base0A;
  @define-color error_color @base08;
  @define-color success_color @base0B;

  /* Hybrid overrides — minimal, safe, non-janky */
  headerbar, .titlebar {
    background-color: @base01;
    color: @base05;
  }

  button {
    background-color: @base01;
    color: @base05;
    border-color: @base02;
  }

  button:hover {
    background-color: @base02;
  }

  entry {
    background-color: @base00;
    color: @base05;
    border-color: @base02;
  }

  scrollbar slider {
    background-color: @base02;
  }

  scrollbar slider:hover {
    background-color: @base03;
  }

  popover, menu {
    background-color: @base00;
    color: @base05;
    border-color: @base02;
  }

  /* Target the main background of Libadwaita apps (Nautilus, Settings) */
  window,
  .main-window,
  .background,
  stack {
      background-color: @base00;
      color: @base05;
  }

  /* Specifically for Nautilus (Files) */
  .nautilus-window,
  .nautilus-window .view {
      background-color: @base00;
      color: @base05;
  }

  /* Fix the sidebar */
  .navigation-sidebar {
      background-color: @base01;
      color: @base05;
  }

  /* Fix Edge/Chromium Headerbar and Window Buttons */
  headerbar, .titlebar {
    min-height: 46px; /* Standard GTK height */
    padding: 0 6px;
  }

  /* Fix the 'X' (close), min, and max buttons */
  windowcontrols button {
    padding: 6px;
    margin: 4px 0;
    background-color: transparent; /* Remove the 'boxy' look */
    border: none;
    box-shadow: none;
  }

  windowcontrols button:hover {
    background-color: rgba(255, 255, 255, 0.1); /* Subtle hover */
  }

  /* Specific fix for the Close button alignment */
  windowcontrols button.close:hover {
    background-color: @base08; /* Red highlight on hover */
    color: @base00;
  }

  /* Target the Sidebar in Seahorse/Nautilus */
  .navigation-sidebar,
  list.navigation-sidebar,
  .sidebar {
    background-color: @base01 !important;
    color: @base05 !important;
  }

  /* Fix "Flat" buttons that still look gray */
  button.flat {
    background-color: transparent;
  }

  button.flat:hover {
    background-color: @base02;
  }

  /* Ensure the 'header' area of the sidebar is also themed */
  stack sidebar list {
    background-color: @base01;
  }

  /* Force global backgrounds for stubborn apps */
  scrolledwindow, viewport {
    background-color: transparent;
  }
''
