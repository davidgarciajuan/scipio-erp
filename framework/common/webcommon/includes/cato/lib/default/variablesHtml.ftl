<#--
* 
* Master HTML template variables include for default cato markup.
* A set of global variables that define common styling classes, part of standard Cato Freemarker API.
* Automatically included at all times.
* Intended to be swappable.
*
* Default Cato styles (NOTE: currently targeted toward Foundation CSS).
* 
-->

<#-- 
*************************************
* TEMPLATING VARIABLES *
*************************************
-->

<#global styles = {
  <#-- Misc -->
    "framework" : "foundation",
    "disabled" : "disabled",
    "active" : "active",
    "button" : "button",
    "button_prefix" : "",
    "button_group" : "button-group",
    "button_force" : "force-button",
    "button_default" : "button tiny",
    "tiny" : "tiny",
    "small" : "small",
    "medium" : "medium",
    "large" : "large",
    "round" : "round",
    "radius" : "radius",
    "expand" : "expand",
    "collapse" : "collapse",
    "collapsed" : "collapsed",
    "prefix" : "prefix",
    "postfix" : "postfix",
    "hidden" : "hide",
    "icon" : "fi",
    "icon_prefix" : "fi-",
    "icon_button" : "fi-widget",
    "icon_button_value" : "&#xf214;",
    "icon_calendar" : "fi-calendar",
    "icon_arrow" : "fi-arrow-right",
    "icon_list" : "fi-list",
    "icon_user" : "fi-torso-female",
    "icon_password" : "fi-lock",
    "icon_tenant" : "fi-cloud",
    "heading_level_prefix" : "heading-level-",  
    
  <#-- Menus 
       menu_xxx classes are looked up by the @menu and @menuitem macros as defaults for each menu type. --> 
    <#-- Generic menu types -->
    "menu_generic" : "",  
    "menu_generic_item" : "", 
    "menu_generic_item_link" : "",
    "menu_generic_item_submit" : "", 
    "menu_button" : "button-group force-button",
    "menu_button_item" : "",
    "menu_button_item_link" : "button tiny",
    "menu_button_item_submit" : "button tiny",
    <#-- Main navigation menus -->
    "menu_main" : "dropdown",
    "menu_main_wrap" : "has-dropdown not-click active",        
    "menu_main_item" : "",
    "menu_main_item_link" : "",
    "menu_main_item_submit" : "", 
    "menu_sidebar" : "side-nav",
    "menu_sidebar_wrap" :"", 
    "menu_sidebar_item" : "",
    "menu_sidebar_item_link" : "",
    "menu_sidebar_item_submit" : "", 
    <#-- Tab and secondary navigation menus-->
    "menu_tab" : "button-group force-button", 
    "menu_tab_item" : "", 
    "menu_tab_item_link" : "button tiny",
    "menu_tab_item_submit" : "button", 
    "menu_subtab" : "button-group force-button",
    "menu_subtab_item" : "",
    "menu_subtab_item_link" : "button tiny",
    "menu_subtab_item_submit" : "button tiny", 
    <#-- Default section menu -->
    "menu_section" : "button-group",
    "menu_section_item" : "",
    "menu_section_item_link" : "button tiny",
    "menu_section_item_submit" : "button tiny", 
    <#-- Default section menu inlined with title
        FIXME: looks too big/clumsy with these buttons (floats right of title) -->
    "menu_section_inline" : "button-group",
    "menu_section_inline_item" : "",
    "menu_section_inline_item_link" : "button tiny",
    "menu_section_inline_item_submit" : "button tiny", 
    <#-- default entry is used for any encountered menu types that have no specific entries in this hash, 
         and also for individual value fallbacks for values not defined in the type-specific entries above -->    
    "menu_default" : "",  
    "menu_default_item" : "", 
    "menu_default_itemdisabled" : "disabled", 
    "menu_default_itemactive" : "active", 
    "menu_default_itemselected" : "selected", 
    "menu_default_item_contentdisabled" : "disabled", 
    "menu_default_item_contentactive" : "active", 
    "menu_default_item_contentselected" : "selected", 
    "menu_default_item_link" : "",
    "menu_default_item_text" : "text-entry",
    "menu_default_item_submit" : "",  
    
  <#-- Data and Tables -->  
    <#-- table type-based styles 
         used for default table class and attribute lookups by the @table macro, based on table type. -->
    "table_generic" : "",    <#-- represents free-form <table>. probably should have no class (let template decide). -->
    "table_generic_cellspacing" : "",
    "table_generic_rowtype" : "generic",    <#-- the default row type is normally "content", but generic tables need "generic" -->
    "table_responsive_wrap" : "scrollable-table-container", <#-- responsive table wrapping div element -->
    "table_data_list" : "basic-table",  <#-- analogous to ofbiz "list" type form widgets -->
    "table_data_list_cellspacing" : 0,
    <#-- not enabled, but may be desirable: "table_data_list_autoaltrows" : true, -->
    "table_data_complex" : "basic-table", <#-- like data_list but with complex structure (no form widget equivalent) -->
    "table_data_complex_cellspacing" : 0,
    "table_summary" : "basic-table",
    "table_summary_cellspacing" : 0,
    "table_fields" : "basic-table",    <#-- similar to ofbiz "single" type form widgets; may be acceptable for display-only fields -->
    "table_fields_cellspacing" : 0,
    <#-- default entry is used by @table for any encountered table types that have no specific entries in this hash. 
         in other words, it is the default style for table types that this theme does not recognize, or "all others". 
         it is also used for individual fallback values. -->    
    "table_default" : "basic-table",
    "table_default_cellspacing" : "",
    "table_default_autoaltrows" : false,    <#-- this is also default autoAltRows for any table type that doesn't specify it above -->
    "table_default_rowtype" : "content",    <#-- this is also default row type for any table type that doesn't specify it above -->
    
    <#-- free-form and other table-related styles -->
    "table_basic" : "basic-table",  <#-- this is not a table type, but simply the basic-table style -->
    "row_reg" : "even",
    "row_alt" : "odd",
    "row_selected" : "selected",
    
    "link_default" : "",
    "link_action" : "button tiny", 
    "link_id" : "button tiny", 
    "link_name" : "button tiny", 
    "link_desc" : "",
    "link_text" : "",
    "link_image" : "",
    
  <#-- Colors -->
    "color_green" : "success",
    "color_red" : "alert",
    "color_grey" : "secondary",
    "color_primary" : "primary",
    "color_secondary" : "secondary",
    "color_info" : "info",
    "color_warning" : "warning",
    "color_success" : "success",  
    "color_alert" : "alert",        <#-- Bootstrap: "danger" -->
    "color_error" : "alert",
    "button_color_default" : "",
    "button_color_primary" : "primary",
    "button_color_secondary" : "secondary",
    "button_color_success" : "success",
    "button_color_info" : "info",
    "button_color_warning" : "warning",
    "button_color_alert" : "alert",
    
  <#-- Grid -->
    "grid_row" : "row",
    "grid_cell" : "columns",
    "grid_display" : "display",      <#-- display grid -->
    "grid_end" : "end",
    "grid_small" : "small-",   
    "grid_medium" : "medium-",
    "grid_large" : "large-",       <#-- Bootstrap: "col-lg-" -->
    "grid_offset" : "offset-",      <#-- Bootstrap: "col-md-offset-" -->
    "grid_small_offset" : "small-offset-",     
    "grid_medium_offset" : "medium-offset-",    
    "grid_large_offset" : "large-offset-",   
    "grid_block_prefix" : "",
    "grid_block_postfix" : "block-grid-",
    "grid_columns_1" : "large-1 columns",
    "grid_columns_2" : "large-2 medium-3 columns",
    "grid_columns_3" : "large-3 medium-4 columns",
    "grid_columns_4" : "large-4 medium-5 columns",
    "grid_columns_5" : "large-5 medium-6 columns",
    "grid_columns_6" : "large-6 columns",
    "grid_columns_7" : "large-7 medium-6 columns",
    "grid_columns_8" : "large-8 medium-7 columns",
    "grid_columns_9" : "large-9 medium-8 columns",
    "grid_columns_10" : "large-10 medium-9 columns",
    "grid_columns_11" : "large-11 medium-10 columns",
    "grid_columns_12" : "large-12 columns",
    "grid_centered" : "centered",
    "grid_small_centered" : "small-centered",
    "grid_medium_centered" : "medium-centered",
    "grid_large_centered" : "large-centered",
    "grid_sidebar_0_main" : "large-12 columns",
    "grid_sidebar_1_main" : "large-10 medium-9 columns",
    "grid_sidebar_1_side" : "large-2 medium-3 columns",
    "grid_sidebar_2_main" : "large-8 medium-6 columns",
    "grid_sidebar_2_side" : "large-2 medium-3 columns",

  <#-- Floats -->
    "float_left" : "left",
    "float_right" : "right",
    "float_clearfix" : "clearfix",
    
  <#-- Navigation -->
    "nav_subnav" : "sub-nav",
    "nav_sidenav" : "navbar-inverse collapse navbar-collapse navbar-ex1-collapse ",
  
  <#-- Pagination -->
    "pagination_wrap" : "pagination-centered",
    "pagination_list" : "pagination",
    "pagination_control" : "",
    "pagination_item" : "",
    "pagination_item_first" : "nav-first",
    "pagination_item_last" : "nav-last",
    "pagination_item_previous" : "nav-previous",
    "pagination_item_next" : "nav-next",
    "pagination_item_active" : "current",
    "pagination_item_disabled" : "unavailable",

  <#-- Lists -->
    "list_inline" : "inline-list",

  <#-- Tile -->
    "tile_container" : "tile-container",
    "tile_wrap" : "tile",
    "tile_color" : "tile-color-",
    "tile_content" : "tile-content",
    "tile_icon" : "tile-icon",
    "tile_title" : "tile-title",
    "tile_overlay" : "tile-overlay",
    "tile_image" : "tile-image",

  <#-- Breadcrumbs -->
    "nav_breadcrumbs" : "breadcrumbs",
    "nav_breadcrumbs_disabled" : "unavailable",
    "nav_breadcrumbs_active" : "current",

  <#-- Panels -->
    "panel_wrap" : "panel",
    "panel_head" : "",
    "panel_title" : "",
    "panel_body" : "",
    "login_wrap" : "login-box",                  <#-- the login box is a special form of a panel in this case -->
    "login_header": "",
    "login_body" : "signup-panel right-solid",

  <#-- Alert Box -->
    "alert_wrap" : "alert-box",    <#-- Bootstrap: "alert" -->
    "alert_prefix_type" : "",             <#-- Bootstrap: "alert-"; Note: This may be removed -->
    "alert_type_info" : "info",
    "alert_type_success" : "success",
    "alert_type__warning" : "warning",
    "alert_type_secondary" : "secondary",  
    "alert_type_alert" : "alert",        
    "alert_type_error" : "alert",

  <#-- Pricing Tables -->
    "pricing_wrap" : "pricing-table",
    "pricing_price" : "price",
    "pricing_description" : "description",
    "pricing_title" : "title",
    "pricing_cta" : "cta-button",
    "pricing_bullet" : "bullet-item",

  <#-- Modal -->
    "modal_wrap" : "reveal-modal",

  <#-- Chart -->
    "chart_legend" : "chart-legend",

  <#-- Progress Bar -->
    "progress_container" : "progress",   <#-- Bootstrap: "progress" -->
    "progress_wrap" : "",           <#-- Bootstrap: "progress-bar" -->
    "progress_bar" : "meter",       <#-- Bootstrap: "sr-only" -->

  <#-- Fields 
       fields_xxx classes and settings are looked up by the @fields and @field macros as defaults for
       fields type and field type. -->
    "fields_wrap" : "collapse",
    "fields_label" : "prefix",
    "fields_default_labeltype" : "gridarea",
    "fields_default_labellayout" : "left",
    "fields_default_labelarea" : true,
    "fields_default_labelareaexceptions" : "submit submitarea",

    "fields_default_nolabels_labeltype" : "none",
    "fields_default_nolabels_labellayout" : "none",
    "fields_default_nolabels_labelarea" : false,
    "fields_default_nolabels_labelareaexceptions" : "", 

    "fields_generic_labeltype" : "gridarea",
    "fields_generic_labellayout" : "left",
    "fields_generic_labelarea" : false,
    "fields_generic_labelareaexceptions" : "", 

  <#-- Always declare last -->
    "dummy" : ""
}>

