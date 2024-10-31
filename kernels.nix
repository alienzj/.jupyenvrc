{pkgs, ...}: {
  kernel.r.bioenv = {
    enable = true;
    displayName = "Bioenv R";
    extraRPackages = ps: [
      ps.ggplot2
    ];
  };
}
