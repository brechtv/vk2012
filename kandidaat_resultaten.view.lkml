view: kandidaat_resultaten {
  sql_table_name: localelections2012.kandidaat_resultaten ;;

  dimension: geslacht {
    type: string
    sql: ${TABLE}.Geslacht ;;
  }

  dimension: leeftijd {
    type: number
    sql: ${TABLE}.Leeftijd ;;
  }

  dimension: leeftijd_tier {
    type: tier
    sql: ${TABLE}.Leeftijd ;;
    tiers: [18,20,25,30,35,40,45,50,55,60,65,70,75,80]
    style: integer
  }

  dimension: lijstnaam {
    type: string
    sql: ${TABLE}.Lijstnaam ;;
  }

  dimension: grouped_lijst {
    label: "Lijst (cleaned)"
    type: string
    case: {
      when: {
        sql: LOWER(${lijstnaam}) LIKE "%n-va%" ;;
        label: "N-VA"
      }
      when: {
        sql: LOWER(${lijstnaam}) LIKE "%sp%" ;;
        label: "SP.A"
      }
      when: {
        sql: LOWER(${lijstnaam}) LIKE "cd%" ;;
        label: "CD&V"
      }
      when: {
        sql: LOWER(${lijstnaam}) LIKE "%vld%" ;;
        label: "VLD"
      }
      when: {
        sql: LOWER(${lijstnaam}) LIKE "%groen%" ;;
        label: "GROEN"
      }
      when: {
        sql: LOWER(${lijstnaam}) LIKE "%vlaams%" ;;
        label: "Vlaams Belang"
      }
      when: {
        sql: LOWER(${lijstnaam}) LIKE "%pvda%" ;;
        label: "PVDA"
      }
      else: "Other"
    }
  }

  dimension: lijstnummer {
    type: number
    sql: ${TABLE}.Lijstnummer ;;
  }

  dimension: naam {
    type: string
    sql: ${TABLE}.Naam ;;
  }

  dimension: nis {
    hidden: yes
    type: number
    sql: ${TABLE}.NIS ;;
  }

  dimension: opmerkingen {
    hidden: yes
    type: string
    sql: ${TABLE}.Opmerkingen ;;
  }

  dimension: verkiezing {
    label: "Gemeente"
    type: string
    sql: ${TABLE}.Verkiezing ;;
  }

  dimension: verkozen {
    type: yesno
    sql: ${TABLE}.Verkozen ;;
  }

  dimension: verkozen_volgnummer {
    type: number
    sql: ${TABLE}.Verkozen_volgnummer ;;
  }

  dimension: volgnummer {
    type: number
    sql: ${TABLE}.Volgnummer ;;
  }

  measure: voorkeurstemmen {
    type: sum
    sql: ${TABLE}.Voorkeurstemmen ;;
  }

  measure: voorkeurstemmen_pct_of_total {
    type: percent_of_total
    sql: ${voorkeurstemmen} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: zetels {
    type: count_distinct
    sql: ${naam} ;;
    filters: {
      field: verkozen
      value: "yes"
    }
  }
}
