body_about <- dashboardBody(
  fluidRow(
    fluidRow(
      column(
        box(
          title = div("About this project", style = "padding-left: 20px", class = "h2"),
          column(
            "This dashboard shows recent developments of the COVID-19 pandemic. The latest
            open data on the COVID-19 spread are regularly downloaded and displayed in
            a map, summary tables, key figures and plots.",
            tags$br(),
            h3("Motivation"),
            "Various companies thought that a global crisis is an excellent opportunity to
            show case their technologies. Therefore, my idea was to show that open-source
            technologies, such as R Shiny, can be used to create a decent dashboard in few hours.
            Furthermore, the most popular COVID-19 dashboard (",
            tags$a(href = "https://coronavirus.jhu.edu/map.html", "Johns Hopkins COVID-19"), ") is styled rather
            alarmist. Therefore, a more neutral dashboard might help to dampen the already
            existing hysteria a little.",
            h4("Why Open Source?"),
            "My hope is that this dashboard can help researchers around the world to get a
            better overview of the current situation concerning the COVID-19 idea. I hereby
            invite all of you to contribute to this project with additional visualizations,
            information etc.",
            tags$br(),
            tags$br(),
            tags$ul(
              tags$li(tags$b("COVID-19 data:"), tags$a(href = "https://github.com/CSSEGISandData/COVID-19",
                "Johns Hopkins CSSE")),
              tags$li(tags$b("Population data:"), tags$a(href = "https://data.worldbank.org/indicator/SP.POP.TOTL",
                "The World Bank"), "& Wikipedia for countries which are not in World Bank data set.")
            ),
            HTML("<b>Note</b>: Johns Hopkins is not updating their data on recovered cases anymore. Therefore, this data
            is estimated as <i>(Confirmed at current date - 14 days) - deceased at current date)</i>. Furthermore,
            state specific information for the US is currently not available from their data. I am currently working
            on getting a new data source with more reliable data."),
            h3("Bugs, Issues & Enhancement Requests"),
            "If you find any bug / issue or have an idea how to improve the dashboard,
            please create an issue on ", tags$a(href = "https://github.com/mesfind/covid19_et/issues",
              "Github"), ". I will try to look into it as soon as possible.",
            h3("Contribute"),
            "If you want to add any visualization or further information feel free to create
            a pull request on ", tags$a(href = "https://github.com/mesfind/covid19_et", "Github"), ".
            For major rework either fork the repository or create an issue so we can discuss it.",
            h3("Developer"),
            "Mesfin Diro | Data Scientist @",
            tags$a(href = "https://www.linkedin.com/in/mesfindiro/", "LinkedIn"), "|",
            tags$a(href = "https://twitter.com/mesfin.diro", "Twitter"), "|",
            tags$a(href = "https://github.com/mesfind/", "Github"),
            width = 12,
            style = "padding-left: 20px; padding-right: 20px; padding-bottom: 40px; margin-top: -15px;"
          ),
          width = 6,
        ),
        width = 12,
        style = "padding: 15px"
      )
    )
  )
)

page_about <- dashboardPage(
  title   = "About",
  header  = dashboardHeader(disable = TRUE),
  sidebar = dashboardSidebar(disable = TRUE),
  body    = body_about
)
