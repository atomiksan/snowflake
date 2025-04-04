{
  config,
  pkgs,
  ...
}:

{
  # Tmux config
  programs.tmux = {
    enable = true;
    terminal = "tmux-256color";
    escapeTime = 10;
    prefix = "C-Space";
    keyMode = "vi";
    sensibleOnTop = true;
    #customPaneNavigationAndResize = false;
    extraConfig = ''
      set-option -sa terminal-overrides ",xterm*:Tc"
      set-option -g focus-events on

      # Vim style key binds for panes
      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R

      # Resize panes using Alt + arrow keys
      bind -n M-Left resize-pane -L 5    # Shrink pane by 5 cells to the left
      bind -n M-Right resize-pane -R 5   # Expand pane by 5 cells to the right
      bind -n M-Up resize-pane -U 5      # Shrink pane by 5 cells upwards
      bind -n M-Down resize-pane -D 5    # Expand pane by 5 cells downwards

      # Shift arrow to switch windows
      bind -n S-Left  previous-window
      bind -n S-Right next-window

      # Shift Alt vim keys to switch windows
      bind -n M-H previous-window
      bind -n M-L next-window

      # Set split panes to open in same directory
      bind '"' split-window -v -c "#{pane_current_path}"
      bind % split-window -h -c "#{pane_current_path}"
      bind c new-window -c "#{pane_current_path}"

      # Set split panes to follow vim-motions
      set-window-option -g mode-keys vi 
    '';
    disableConfirmationPrompt = true;
    mouse = true;
    newSession = true;
    baseIndex = 1;
    shell = "/home/atomik/.nix-profile/bin/fish";
    plugins = with pkgs; [
      {
        plugin = tmuxPlugins.resurrect;
        extraConfig = "set -g @resurrect-strategy-nvim 'session'";
      }
      {
        plugin = tmuxPlugins.continuum;
        extraConfig = ''
          set -g @continuum-restore 'on'
          set -g @continuum-save-interval '60' # minutes
        '';
      }
      {
        plugin = tmuxPlugins.tokyo-night-tmux;
        extraConfig = ''
          set -g @tokyo-night-tmux_show_path 1
          set -g @tokyo-night-tmux_path_format relative
          set -g @tokyo-night-tmux_window_id_style roman
          set -g @tokyo-night-tmux_pane_id_style hsquare
          set -g @tokyo-night-tmux_zoom_id_style dsquare
          set -g @tokyo-night-tmux_show_datetime 0
          set -g @tokyo-night-tmux_show_git 0
          set -g @tokyo-night-tmux_transparent 1
        '';
      }
      tmuxPlugins.yank
      tmuxPlugins.battery
      {
        plugin = tmuxPlugins.vim-tmux-navigator;
        extraConfig = ''
          set -g @vim_navigator_mapping_left "C-h"
          set -g @vim_navigator_mapping_right "C-l"
          set -g @vim_navigator_mapping_up "C-k"
          set -g @vim_navigator_mapping_down "C-j"
          set -g @vim_navigator_mapping_prev ""  # removes the C-\ binding
        '';
      }
      # {
      #   plugin = tmuxPlugins.rose-pine;
      #   extraConfig = ''
      #     set -g @rose_pine_variant 'main'
      #     set -g @rose_pine_user 'on'
      #     set -g @rose_pine_bar_bg_disable 'on'
      #     set -g @rose_pine_bar_bg_disabled_color_option 'default'
      #   '';
      # }
      {
        plugin = tmuxPlugins.online-status;
        extraConfig = ''
          set -g @online_icon "ok"
          set -g @offline_icon "nok"
        '';
      }
    ];
  };

}
