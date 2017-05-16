view: entiteit_resultaten {
  sql_table_name: localelections2012.entiteit_resultaten ;;

  dimension: __getelde_bureaus {
    hidden: yes
    type: number
    sql: ${TABLE}.__Getelde_bureaus ;;
  }

  dimension: __ongeldig_blanco {
    hidden:yes
    type: number
    sql: ${TABLE}.__Ongeldig_Blanco ;;
  }

  dimension: __opkomst {
    hidden: yes
    type: number
    sql: ${TABLE}.__Opkomst ;;
  }

  dimension: bureaus {
    hidden: yes
    type: number
    sql: ${TABLE}.Bureaus ;;
  }

  dimension: entiteit {
    view_label: "Gemeente"
    label: "Gemeente"
    type: string
    sql: ${TABLE}.Entiteit ;;
  }

  dimension: getelde_bureaus {
    hidden: yes
    type: number
    sql: ${TABLE}.Getelde_bureaus ;;
  }

  dimension: nis {
    hidden: yes
    type: number
    sql: ${TABLE}.NIS ;;
  }

  measure: ongeldig_blanco {
    label: "Ongeldig/blanco"
    type: sum
    sql: ${TABLE}.Ongeldig_Blanco ;;
  }

  measure: opkomst {
    label: "Opkomst"
    type: sum
    sql: ${TABLE}.Opkomst ;;
  }

  dimension: status {
    hidden: yes
    type: string
    sql: ${TABLE}.Status ;;
  }

  measure: stemgerechtigden {
    type: sum
    sql: ${TABLE}.Stemgerechtigden ;;
  }

  dimension: sterkste_lijst {
    hidden: yes
    type: number
    sql: ${TABLE}.Sterkste_lijst ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
