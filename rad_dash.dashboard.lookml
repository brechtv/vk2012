- dashboard: Lokale verkiezingen 2012
  layout: newspaper
  elements:
  - name: Leeftijdsdistributie
    type: text
    title_text: Leeftijdsdistributie
    row: 15
    col: 0
    width: 24
    height: 2
  - name: "[vk2012] Uitslag [bars]"
    label: "[vk2012] Uitslag [bars]"
    model: local_elections_2012
    explore: lijst_resultaten
    type: looker_column
    fields:
    - lijst_resultaten.stemmen
    - lijst_resultaten.grouped_lijst
    pivots:
    - lijst_resultaten.grouped_lijst
    fill_fields:
    - lijst_resultaten.grouped_lijst
    sorts:
    - lijst_resultaten.grouped_lijst
    limit: 500
    column_limit: 50
    row_total: right
    dynamic_fields:
    - table_calculation: percent
      label: Percent
      expression: "${lijst_resultaten.stemmen}/${lijst_resultaten.stemmen:row_total}"
      value_format:
      value_format_name: percent_1
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - lijst_resultaten.stemmen
    series_colors:
      CD&V - percent: "#FF9800"
      GROEN - 4 - percent: "#4CAF50"
      SP.A - 1 - percent: "#F44336"
      N-VA - 0 - percent: "#FFEB3B"
      CD&V - 2 - percent: "#FF9800"
      VLD - 3 - percent: "#2196F3"
      Vlaams Belang - 5 - percent: "#795548"
    label_rotation: 0
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: N-VA
        name: N-VA
      - id: SP.A
        name: SP.A
      - id: CD&V
        name: CD&amp;V
      - id: VLD
        name: VLD
      - id: GROEN
        name: GROEN
      - id: Vlaams Belang
        name: Vlaams Belang
      - id: Other
        name: Other
    listen:
      Gemeente: lijst_resultaten.verkiezing
    row: 0
    col: 6
    width: 18
    height: 7
  - name: "[vk2012] TItle card"
    label: "[vk2012] TItle card"
    model: local_elections_2012
    explore: kandidaat_resultaten
    type: single_value
    fields:
    - kandidaat_resultaten.verkiezing
    sorts:
    - kandidaat_resultaten.verkiezing
    limit: 500
    column_limit: 50
    total: true
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: labels
    label_type: labPer
    series_types: {}
    inner_radius: 40
    colors:
    - "#2196F3"
    - "#F44336"
    series_colors: {}
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    label_rotation: 0
    label_value_format: ''
    hidden_fields: []
    label_color:
    - "#959595"
    x_axis_label: Leeftijd
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: stemmen
        name: Stemmen
    single_value_title: Lokale verkiezingen 2012
    listen:
      Gemeente: kandidaat_resultaten.verkiezing
    row: 0
    col: 0
    width: 6
    height: 7
  - name: "[vk2012] Leeftijd distr"
    label: "[vk2012] Leeftijd distr"
    model: local_elections_2012
    explore: kandidaat_resultaten
    type: looker_column
    fields:
    - kandidaat_resultaten.voorkeurstemmen
    - kandidaat_resultaten.leeftijd_tier
    fill_fields:
    - kandidaat_resultaten.leeftijd_tier
    sorts:
    - kandidaat_resultaten.leeftijd_tier
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: stemmen
      label: Stemmen
      expression: "${kandidaat_resultaten.voorkeurstemmen}/${kandidaat_resultaten.voorkeurstemmen:total}"
      value_format:
      value_format_name: percent_1
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: labels
    label_type: labPer
    series_types: {}
    inner_radius: 40
    colors:
    - "#2196F3"
    - "#F44336"
    series_colors: {}
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    label_rotation: 0
    label_value_format: ''
    hidden_fields:
    - kandidaat_resultaten.voorkeurstemmen
    label_color:
    - "#959595"
    x_axis_label: Leeftijd
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: stemmen
        name: Stemmen
    listen:
      Gemeente: kandidaat_resultaten.verkiezing
    row: 25
    col: 0
    width: 24
    height: 8
  - name: "[vk2012] Zetelverdeling"
    label: "[vk2012] Zetelverdeling"
    model: local_elections_2012
    explore: kandidaat_resultaten
    type: looker_pie
    fields:
    - kandidaat_resultaten.grouped_lijst
    - kandidaat_resultaten.zetels
    fill_fields:
    - kandidaat_resultaten.grouped_lijst
    sorts:
    - kandidaat_resultaten.zetels desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    value_labels: labels
    label_type: labVal
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      CD&V: "#FF9800"
      N-VA: "#FFEB3B"
      SP.A: "#F44336"
      VLD: "#673AB7"
      Vlaams Belang: "#795548"
      GROEN: "#4CAF50"
      PVDA: "#B71C1C"
    listen:
      Gemeente: kandidaat_resultaten.verkiezing
    row: 7
    col: 14
    width: 10
    height: 8
  - name: "[vk2012] Leeftijd distr (F)"
    label: "[vk2012] Leeftijd distr (F)"
    model: local_elections_2012
    explore: kandidaat_resultaten
    type: looker_column
    fields:
    - kandidaat_resultaten.leeftijd
    - kandidaat_resultaten.geslacht
    - kandidaat_resultaten.voorkeurstemmen
    pivots:
    - kandidaat_resultaten.geslacht
    filters:
      kandidaat_resultaten.geslacht: F
    sorts:
    - kandidaat_resultaten.leeftijd
    - kandidaat_resultaten.geslacht
    limit: 500
    column_limit: 50
    total: true
    stacking: ''
    show_value_labels: false
    label_density: 1
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: labels
    label_type: labPer
    series_types: {}
    inner_radius: 40
    colors:
    - "#2196F3"
    - "#F44336"
    series_colors:
      F - kandidaat_resultaten.voorkeurstemmen: "#F44336"
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    label_rotation: 0
    label_value_format: 0,\K
    hidden_fields: []
    label_color:
    - "#F44336"
    x_axis_label: Leeftijd
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: stemmen
        name: Stemmen
    single_value_title: Lokale verkiezingen 2012
    listen:
      Gemeente: kandidaat_resultaten.verkiezing
    row: 33
    col: 0
    width: 14
    height: 7
  - name: "[vk2012] M/F distribution"
    label: "[vk2012] M/F distribution"
    model: local_elections_2012
    explore: kandidaat_resultaten
    type: looker_pie
    fields:
    - kandidaat_resultaten.geslacht
    - kandidaat_resultaten.voorkeurstemmen
    sorts:
    - kandidaat_resultaten.voorkeurstemmen desc
    limit: 500
    column_limit: 50
    total: true
    value_labels: labels
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    inner_radius: 40
    colors:
    - "#2196F3"
    - "#F44336"
    series_colors: {}
    listen:
      Gemeente: kandidaat_resultaten.verkiezing
    row: 33
    col: 14
    width: 10
    height: 13
  - name: "[vk2012] Leeftijd distr (M)"
    label: "[vk2012] Leeftijd distr (M)"
    model: local_elections_2012
    explore: kandidaat_resultaten
    type: looker_column
    fields:
    - kandidaat_resultaten.leeftijd
    - kandidaat_resultaten.geslacht
    - kandidaat_resultaten.voorkeurstemmen
    pivots:
    - kandidaat_resultaten.geslacht
    filters:
      kandidaat_resultaten.geslacht: M
    sorts:
    - kandidaat_resultaten.leeftijd
    - kandidaat_resultaten.geslacht
    limit: 500
    column_limit: 50
    total: true
    stacking: ''
    show_value_labels: false
    label_density: 1
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: labels
    label_type: labPer
    series_types: {}
    inner_radius: 40
    colors:
    - "#2196F3"
    - "#F44336"
    series_colors: {}
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    label_rotation: 0
    label_value_format: 0,\K
    hidden_fields: []
    label_color:
    - "#959595"
    x_axis_label: Leeftijd
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: stemmen
        name: Stemmen
    single_value_title: Lokale verkiezingen 2012
    listen:
      Gemeente: kandidaat_resultaten.verkiezing
    row: 40
    col: 0
    width: 14
    height: 6
  - name: "[vk2012] Totaal zetels"
    label: "[vk2012] Totaal zetels"
    model: local_elections_2012
    explore: kandidaat_resultaten
    type: single_value
    fields:
    - kandidaat_resultaten.zetels
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: Totaal aantal zetels
    listen:
      Gemeente: kandidaat_resultaten.verkiezing
    row: 7
    col: 0
    width: 6
    height: 8
  - name: "[vk2012] Stemmenverdeling"
    label: "[vk2012] Stemmenverdeling"
    model: local_elections_2012
    explore: lijst_resultaten
    type: looker_pie
    fields:
    - lijst_resultaten.stemmen
    - lijst_resultaten.grouped_lijst
    fill_fields:
    - lijst_resultaten.grouped_lijst
    sorts:
    - lijst_resultaten.stemmen desc
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      N-VA: "#FFEB3B"
      SP.A: "#F44336"
      CD&V: "#FF9800"
      GROEN: "#4CAF50"
      VLD: "#673AB7"
      Vlaams Belang: "#795548"
      Other: "#c3c3c3"
    listen: {}
    row: 7
    col: 6
    width: 8
    height: 8
  filters:
  - name: Gemeente
    title: Gemeente
    type: field_filter
    default_value: Brugge
    model: local_elections_2012
    explore: kandidaat_resultaten
    field: kandidaat_resultaten.verkiezing
    listens_to_filters: []
    allow_multiple_values: false
