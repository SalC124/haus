{ pkgs }:

# Generates a full GTK theme package from a Base16 palette
# using Adwaita as the structural base.
themeName: theme:

let
  # Minimal hybrid overrides — safe for GTK3/GTK4
  hybridCss = import ./hybrid-css.nix theme;
in
pkgs.stdenv.mkDerivation {
  pname = "gtk-theme-${themeName}";
  version = "1.0";

  # We use gnome-themes-extra as the primary source for the Adwaita structure
  src = pkgs.gnome-themes-extra;

  installPhase = ''
    mkdir -p $out/share/themes/${themeName}/gtk-3.0
    mkdir -p $out/share/themes/${themeName}/gtk-4.0

    # Copy Adwaita base for GTK3
    cp -r ${pkgs.gnome-themes-extra}/share/themes/Adwaita/gtk-3.0/* \
          $out/share/themes/${themeName}/gtk-3.0/

    # IMPORTANT: Nix store files are read-only. We must make them writable to append.
    chmod -R +w $out/share/themes/${themeName}/gtk-3.0

    # For GTK4, if the directory is empty or doesn't exist in the source,
    # ensure the file exists so we can append to it.
    touch $out/share/themes/${themeName}/gtk-4.0/gtk.css

    # Append hybrid overrides
    echo "${hybridCss}" >> $out/share/themes/${themeName}/gtk-3.0/gtk.css
    echo "${hybridCss}" >> $out/share/themes/${themeName}/gtk-4.0/gtk.css
  '';
}
