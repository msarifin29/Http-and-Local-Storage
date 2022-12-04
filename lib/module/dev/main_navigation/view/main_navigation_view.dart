// ignore_for_file: dead_code

import 'package:example/core.dart';

import 'package:flutter/material.dart';

class MainNavigationView extends StatefulWidget {
  final Widget child;
  const MainNavigationView({
    super.key,
    required this.child,
  });

  @override
  State<MainNavigationView> createState() => MainNavigationViewState();
}

class MainNavigationViewState extends State<MainNavigationView> {
  static late MainNavigationViewState instance;
  int selectedIndex = 0;
  double groupAligment = -1.0;
  bool expanded = true;
  double sidebarWidth = 240.0;

  List navigationItems = [
    NavigationItem(
      icon: const Icon(Icons.dashboard),
      label: 'Dashboard',
      route: '/dashboard',
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Style Guide',
      route: '/style_guide',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Card',
      route: '/card',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(Icons.dashboard),
      label: 'Form UI',
      route: '/form_ui',
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Hyper Ui',
      route: '/hyper_ui',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Theme',
      route: '/theme',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Widgets',
      route: '/widgets',
      items: [
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Heading UI',
          route: '/heading_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Statistic Ui',
          route: '/statistic_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Badge Ui',
          route: '/badge_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Chip Ui',
          route: '/chip_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Button Ui',
          route: '/button_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Tab Ui',
          route: '/tab_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Avatar Ui',
          route: '/avatar_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Scaffold Ui',
          route: '/scaffold_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Navigation Ui',
          route: '/navigation_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Appbar Ui',
          route: '/appbar_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'List Ui',
          route: '/list_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'List Item Ui',
          route: '/list_item_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Detail Ui',
          route: '/detail_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Dialog Ui',
          route: '/dialog_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Widget Ui',
          route: '/widget_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Searchfield Ui',
          route: '/searchfield_ui',
          items: [],
        ),
      ],
    ),
  ];

  List unusedNavigations = [
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Http Example',
      route: '/http_example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Http Form Example',
      route: '/http_form_example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Example',
      route: '/example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Pos Another Example',
      route: '/pos_another_example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Profile Ui Example',
      route: '/profile_ui_example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Testxxx',
      route: '/testxxx',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Profile Ui',
      route: '/profile_ui',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tr State Management',
      route: '/tr_state_management',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tr Form',
      route: '/tr_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Counter',
      route: '/trsm_counter',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Loading',
      route: '/trsm_loading',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Visibility',
      route: '/trsm_visibility',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Navigation',
      route: '/trsm_navigation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Enabled And Disabled',
      route: '/trsm_enabled_and_disabled',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Cart',
      route: '/trsm_cart',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Add And Delete From List',
      route: '/trsm_add_and_delete_from_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Loading For Http Request',
      route: '/trsm_loading_for_http_request',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Animation',
      route: '/trsm_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Digital Clock',
      route: '/trsm_digital_clock',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Crud',
      route: '/trsm_crud',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tr',
      route: '/tr',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Login',
      route: '/trfm_login',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Login Form',
      route: '/trfm_login_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Signup Form',
      route: '/trfm_signup_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Forgot Password Form',
      route: '/trfm_forgot_password_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Reset Password Form',
      route: '/trfm_reset_password_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Edit Profile Form',
      route: '/trfm_edit_profile_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Product Form',
      route: '/trfm_product_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Checkout Form',
      route: '/trfm_checkout_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Review Form',
      route: '/trfm_review_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Filter Date Dialog Form',
      route: '/trfm_filter_date_dialog_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Filter Category And Date Bottomsheet Form',
      route: '/trfm_filter_category_and_date_bottomsheet_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Filter List',
      route: '/trsm_filter_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Horizontal Category List',
      route: '/trsm_horizontal_category_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Vertical Category List',
      route: '/trsm_vertical_category_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Category In Wrap',
      route: '/trsm_category_in_wrap',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trfm Edit Store Form',
      route: '/trfm_edit_store_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Slide Animation',
      route: '/trsm_slide_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Fade In Animation',
      route: '/trsm_fade_in_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Fade Out Animation',
      route: '/trsm_fade_out_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Scale In Animation',
      route: '/trsm_scale_in_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Scale Out Animation',
      route: '/trsm_scale_out_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Animation By Mouse Event',
      route: '/trsm_animation_by_mouse_event',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Fade Animation',
      route: '/trsm_fade_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Scale Animation',
      route: '/trsm_scale_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Rotate Animation',
      route: '/trsm_rotate_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Scale Animation By Slide Value',
      route: '/trsm_scale_animation_by_slide_value',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Chat List',
      route: '/trsm_chat_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Heading Ui',
      route: '/heading_ui',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Counter',
      route: '/ltsm_counter',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Loading',
      route: '/ltsm_loading',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Visibility',
      route: '/ltsm_visibility',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Enabled Or Disabled',
      route: '/ltsm_enabled_or_disabled',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Slide Animation',
      route: '/ltsm_slide_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Fade Animation',
      route: '/ltsm_fade_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Rotate Animation',
      route: '/ltsm_rotate_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Horizontal Category List',
      route: '/ltsm_horizontal_category_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Vertical Category List',
      route: '/ltsm_vertical_category_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Crud',
      route: '/ltsm_crud',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltfm Login',
      route: '/ltfm_login',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltfm Sign Up',
      route: '/ltfm_sign_up',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltfm Edit Profile',
      route: '/ltfm_edit_profile',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltfm Product Form',
      route: '/ltfm_product_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltfm Review Form',
      route: '/ltfm_review_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltfm Checkout Form',
      route: '/ltfm_checkout_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltfm Filter Dialog',
      route: '/ltfm_filter_dialog',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltfm Filter Bottom Sheet',
      route: '/ltfm_filter_bottom_sheet',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltfm Sliding Form',
      route: '/ltfm_sliding_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltfm Reset Password',
      route: '/ltfm_reset_password',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Scroll',
      route: '/trsm_scroll',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Scroll',
      route: '/ltsm_scroll',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Repeat Animation',
      route: '/ltsm_repeat_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Navigation With Slide Animation',
      route: '/ltsm_navigation_with_slide_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ltsm Theme',
      route: '/ltsm_theme',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tutorial Extension',
      route: '/tutorial_extension',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Pos Login',
      route: '/pos_login',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Pos Main Navigation',
      route: '/pos_main_navigation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Pos Product List',
      route: '/pos_product_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Pos Product Form',
      route: '/pos_product_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Pos Order',
      route: '/pos_order',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Pos Order List',
      route: '/pos_order_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Fic Counter',
      route: '/fic_counter',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Fic Loading',
      route: '/fic_loading',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Fic Enable Or Disabled',
      route: '/fic_enable_or_disabled',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Fic Visibility',
      route: '/fic_visibility',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Fic Animation',
      route: '/fic_animation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Fic Navigation',
      route: '/fic_navigation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Fic Cart',
      route: '/fic_cart',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Fic Filter List',
      route: '/fic_filter_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Fic Theme',
      route: '/fic_theme',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Http Login',
      route: '/http_login',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Http Product List',
      route: '/http_product_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Http Product Form',
      route: '/http_product_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tf Login',
      route: '/tf_login',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tf Product List',
      route: '/tf_product_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tf Product Form',
      route: '/tf_product_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tf Register',
      route: '/tf_register',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ui Dailiy Todo List',
      route: '/ui_dailiy_todo_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tk Main Navigation',
      route: '/tk_main_navigation',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tk Dashboard',
      route: '/tk_dashboard',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ovo Dashboard',
      route: '/ovo_dashboard',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ack Tutorial Cart',
      route: '/ack_tutorial_cart',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Login',
      route: '/ls_login',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Theme',
      route: '/ls_theme',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Product List',
      route: '/ls_product_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Product Form',
      route: '/ls_product_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Form History',
      route: '/ls_form_history',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tr Basic Widget',
      route: '/tr_basic_widget',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tr Basic Detail',
      route: '/tr_basic_detail',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls First Time Setup',
      route: '/ls_first_time_setup',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Login And Save Token',
      route: '/ls_login_and_save_token',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Create Pin',
      route: '/ls_create_pin',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Login By Pin',
      route: '/ls_login_by_pin',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Customer Crud',
      route: '/ls_customer_crud',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Product Crud',
      route: '/ls_product_crud',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Pos',
      route: '/ls_pos',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Pos With Table Selection',
      route: '/ls_pos_with_table_selection',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Favorite',
      route: '/ls_favorite',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls User Setting',
      route: '/ls_user_setting',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ls Login Form With History',
      route: '/ls_login_form_with_history',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Login',
      route: '/ht_login',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Product List',
      route: '/ht_product_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Dashboard',
      route: '/ht_dashboard',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Image Galleries',
      route: '/ht_image_galleries',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Statistic Card',
      route: '/ht_statistic_card',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Line Chart',
      route: '/ht_line_chart',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Pie Chart',
      route: '/ht_pie_chart',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Todo List',
      route: '/ht_todo_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Product Crud List',
      route: '/ht_product_crud_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Product Crud Form',
      route: '/ht_product_crud_form',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Ht Map Marker',
      route: '/ht_map_marker',
      items: [],
    ),
    //@NAVIGATION_GENERATOR
  ];

  @override
  void initState() {
    super.initState();
    MainNavigationViewState.instance = this;
  }

  @override
  Widget build(BuildContext context) {
    var currentEndpoint = GoRouter.of(context).location;

    // if (Responsive.isMobile(context)) {
    //   expanded = false;
    // }

    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        body: Row(
          children: <Widget>[
            Builder(builder: (context) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: expanded ? sidebarWidth : 0,
                child: Theme(
                  data: getDefaultTheme().copyWith(
                    textTheme: TextTheme(
                      bodyText1: googleFont.copyWith(
                        color: drawerFontColor,
                      ),
                      bodyText2: googleFont.copyWith(
                        color: drawerFontColor,
                      ),
                    ),
                    iconTheme: IconThemeData(
                      color: drawerFontColor,
                    ),
                  ),
                  child: Drawer(
                    backgroundColor: drawerBackgroundColor,
                    child: ListView(
                      children: [
                        const Logo(),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const SideGroupTitle(
                          title: 'Main menu',
                        ),
                        ...List.generate(navigationItems.length, (index) {
                          return SideMenuItem(
                            item: navigationItems[index],
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              );
            }),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 2.0,
                    ),
                    child: Row(
                      children: [
                        if (!Responsive.isMobile(context)) ...[
                          IconButton(
                            onPressed: () {
                              expanded = expanded ? false : true;
                              setState(() {});
                            },
                            icon: CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).drawerTheme.backgroundColor,
                              child: Icon(
                                expanded
                                    ? MdiIcons.chevronLeft
                                    : MdiIcons.chevronRight,
                                size: 18.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                        ],
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Dashboard',
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Settings',
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Theme changer',
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const ImageIcon(
                          NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3239/3239952.png',
                          ),
                          size: 20.0,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Icon(
                          Icons.inbox_outlined,
                          size: 20.0,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 18.0,
                          backgroundImage: const NetworkImage(
                            'https://i.ibb.co/S32HNjD/no-image.jpg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1.4,
                    color: Colors.grey[300],
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: widget.child,
                        ),
                        if (false)
                          const VerticalDivider(thickness: 1, width: 1),
                        if (false)
                          Container(
                            width: 240.0,
                            height: MediaQuery.of(context).size.height,
                            padding: const EdgeInsets.all(12.0),
                            color: Colors.white,
                            child: Wrap(
                              runSpacing: 6.0,
                              spacing: 6.0,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  width: MediaQuery.of(context).size.width,
                                  child: const Text(
                                    'Theme changer',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                TUIColorChanger(
                                  onChanged: (value) {
                                    appbarBackgroundColor = value;
                                    setState(() {});
                                  },
                                ),
                                TUIColorChanger(
                                  onChanged: (value) {
                                    scaffoldBackgroundColor = value;
                                    setState(() {});
                                  },
                                ),
                                const TUIFontChanger(),
                                TUIValueChanger(
                                  min: 0.0,
                                  max: 100.0,
                                  onChanged: (value) {
                                    cardBorderRadius = 100 * value;
                                    debugPrint(
                                      'cardBorderRadius: $cardBorderRadius',
                                    );
                                    setState(() {});
                                  },
                                ),
                                TUIValueChanger(
                                  min: 0.0,
                                  max: 50.0,
                                  onChanged: (value) {
                                    cardElevation = 50.0 * value;
                                    debugPrint(
                                      'cardBorderRadius: $cardElevation',
                                    );
                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
