connection: "anotherbq2"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: entiteit_resultaten {
  join: gemeente {
    sql_on: ${entiteit_resultaten.entiteit} = ${gemeente.entiteit} ;;
    fields: [location]
    relationship: many_to_one
  }
  join: lijst_resultaten {
    sql_on: ${entiteit_resultaten.entiteit} = ${lijst_resultaten.verkiezing}
        AND ${entiteit_resultaten.sterkste_lijst} = ${lijst_resultaten.lijstnummer};;
    fields: [lijst_resultaten.sterkste_lijst, lijst_resultaten.grouped_lijst]
    relationship: one_to_one
  }
}

explore: kandidaat_resultaten {
  join: gemeente {
    sql_on: ${kandidaat_resultaten.verkiezing} = ${gemeente.entiteit} ;;
    fields: [location, is_centrumstad]
    relationship: many_to_one
  }
}

explore: lijst_resultaten {
  join: gemeente {
    sql_on: ${lijst_resultaten.verkiezing} = ${gemeente.entiteit} ;;
    fields: [location]
    relationship: many_to_one
  }
}
