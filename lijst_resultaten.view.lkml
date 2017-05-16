view: lijst_resultaten {
  sql_table_name: localelections2012.lijst_resultaten ;;

  dimension: lijst {
    type: string
    sql: ${TABLE}.lijst ;;
  }

  dimension: grouped_lijst {
    label: "Lijst (cleaned)"
    type: string
    case: {
      when: {
        sql: LOWER(${lijst}) LIKE "%n-va%" ;;
        label: "N-VA"
      }
      when: {
        sql: LOWER(${lijst}) LIKE "%sp%" ;;
        label: "SP.A"
      }
      when: {
        sql: LOWER(${lijst}) LIKE "cd%" ;;
        label: "CD&V"
      }
      when: {
        sql: LOWER(${lijst}) LIKE "%vld%" ;;
        label: "VLD"
      }
      when: {
        sql: LOWER(${lijst}) LIKE "%groen%" ;;
        label: "GROEN"
      }
      when: {
        sql: LOWER(${lijst}) LIKE "%vlaams%" ;;
        label: "Vlaams Belang"
      }
      else: "Other"
    }
  }

  dimension: sterkste_lijst {
    type: string
    sql: ${TABLE}.lijst ;;
  }

  dimension: lijstnummer {
    type: number
    sql: ${TABLE}.Lijstnummer ;;
  }

  dimension: nis {
    hidden: yes
    type: number
    sql: ${TABLE}.NIS ;;
  }

  dimension: onvolledig_lijst_stemmen {
    hidden: yes
    type: number
    sql: ${TABLE}.OnvolledigLijstStemmen ;;
  }

  dimension: verkiezing {
    label: "Gemeente"
    type: string
    sql: ${TABLE}.Verkiezing ;;
  }

  dimension: volledig_lijst_stemmen {
    hidden: yes
    type: number
    sql: ${TABLE}.VolledigLijstStemmen ;;
  }

  measure: stemmen {
    type: sum
    sql: ${onvolledig_lijst_stemmen} + ${volledig_lijst_stemmen} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
