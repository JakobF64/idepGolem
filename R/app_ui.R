#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic

    navbarPage(
      "iDEP 1.12",
      theme = bslib::bs_theme(
        version = 5,
        primary = "#0033A0",
        secondary = "#CBD3EB",
        warning = "#ffc107",
        bg = "#fbfbfb",
        fg = "#0D223E",
        base_font = bslib::font_google("Merriweather"),
        heading_font = bslib::font_google("Merriweather"),
        font_scale = 0.7,
        "navbar-bg" = "#0033A0"
      ),
      id = "navbar",
      mod_01_load_data_ui(id = "load_data"),
      mod_02_pre_process_ui(id = "pre_process"),
      mod_03_clustering_ui(id = "clustering"),
      mod_04_pca_ui(id = "pca"),
      mod_05_deg_1_ui(id = "deg"),
      mod_05_deg_2_ui(id = "deg"),
      mod_06_pathway_ui(id = "pathway"),
      mod_07_genome_ui(id = "genome"),
      mod_08_bicluster_ui(id = "bicluster"),
      mod_09_network_ui(id = "network"),
      mod_10_doc_ui(id = "doc")
    ),
    tags$head(includeHTML(app_sys("app/www/google_analytics_GA4.html"))),
    tags$head(includeHTML(app_sys("app/www/google_analytics_golem.html")))
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www", app_sys("app/www")
  )

  tags$head(
    favicon(
      ico = "favicon",
      rel = "shortcut icon",
      resources_path = "www",
      ext = "png"
    ),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "iDEP 1.1"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
