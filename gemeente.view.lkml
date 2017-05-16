view: gemeente {
  sql_table_name: localelections2012.gemeenten ;;

  dimension: entiteit {
    label: "Gemeente"
    type: string
    sql: ${TABLE}.Entiteit ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: latng {
    type: string
    sql: ${TABLE}.Latng ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.Lng ;;
  }

  dimension: is_centrumstad {
    case: {
      when: {
        sql: ${TABLE}.Entiteit IN ("Aalst","Antwerpen","Brugge","Genk","Gent","Hasselt","Kortrijk","Leuven","Mechelen","Oostende","Roeselare","Sint-Niklaas","Turnhout")  ;;
        label: "Centrumsteden"
        }
      else: "Platteland"
    }
  }

  dimension: location {
    group_label: "Gemeente"
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${lng} ;;
  }
}
