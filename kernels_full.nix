{pkgs, ...}: {
  kernel.python.bioenv = {
    enable = true;
    python = "python311";
    displayName = "Bioenv Python";
    env = pkgs.python311.withPackages (ps: with ps; [
      ps.pandas
      ps.polars

      ps.xlsxwriter

      ps.numpy

      ps.seaborn
      ps.matplotlib
      ps.plotnine

      ps.scipy
      ps.scikit-learn
      ps.scikit-bio

      ps.biopython

      ps.lightgbm
      ps.xgboost
      ps.statsmodels

      ps.jax
      ps.keras
      ps.torch
    ]);
  };
  kernel.r.bioenv = {
    enable = true;
    displayName = "Bioenv R";
    extraRPackages = ps: [
      # infrastructure
      ## lang
      ps.rlang

      ## development
      ps.devtools
      ps.remotes
      ps.rmarkdown
      ps.knitr

      ## benchmark
      ps.bench

      ## format
      ps.styler
      ps.lintr

      # data structure and functions
      ## maps
      ps.fastmap

      ## functions
      ps.slider

      ## regrex
      ps.rex

      ## cpp
      ps.cpp11

      # tidy data manipulation
      ## core
      ps.tidyverse

      ## read and write
      ps.xopen
      ps.haven
      ps.feather
      ps.nanoparquet
      ps.jsonlite

      ## web data
      ps.rvest
      ps.httr
      ps.httr2
      ps.xml2
      ps.curl
      ps.V8

      # tidy data visualization
      ## interactive
      ps.shiny

      ## general
      ps.scales
      ps.svglite
      ps.ggpubr
      ps.ggplotify
      ps.ggalluvial
      ps.ggstar
      ps.ggnewscale
      ps.ggdensity
      ps.ggside
      ps.ggsankeyfier
      ps.ggblend
      ps.ggh4x
      ps.gghalves
      ps.ggsignif

      ## tree
      ps.tidytree
      ps.ggtree
      ps.ggtreeExtra

      ## heatmap
      ps.ComplexHeatmap
      ps.circlize

      ## correlation
      ps.cowplot

      ## table summary
      ps.gtsummary
      ps.flextable
      ps.gt
      ps.gtExtras

      ## color
      #tidy modeling and test
      ps.tidymodels

      # bioinformatics
      ## general
      ps.SummarizedExperiment
      ps.clusterProfiler
      ps.enrichplot

      ## microbiome
      ps.vegan
      ps.DirichletMultinomial
      ps.curatedMetagenomicData
      ps.MicrobiotaProcess
      ps.MicrobiomeProfiler
      ps.Maaslin2
      ps.SIAMCAT
      ps.phyloseq
      ps.dada2
      ps.decontam
      ps.DECIPHER
      ps.fido
      # remotes::install_github("mikemc/speedyseq")
      # remotes::install_github("KarstensLab/microshades", dependencies = TRUE)
    ];
  };
}
