CLASS zcl_lab_01_eagm_ejec DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_eagm_ejec IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*    DATA(lo_person)         = NEW zcl_lab_04_eagm_person(  ).
*    DATA(lo_flight)         = NEW zcl_lab_05_eagm_flight(  ).
*    DATA(lo_elements)       = NEW zcl_lab_06_eagm_elements(  ).
*    DATA(lo_student)        = NEW zcl_lab_07_eagm_student(  ).
*    DATA(lo_account)        = NEW zcl_lab_09_eagm_account(  ).
*
*
*    DATA:
*      lv_age      TYPE i,
*      ls_elements TYPE zcl_lab_06_eagm_elements=>ty_elem_objects.
*
*    lo_person->set_age( '34' ).
*    lo_person->get_age( IMPORTING ev_age = lv_age ).
*    out->write( lv_age ).
*
*    out->write( lo_flight->check_flight( iv_carrier_id    = 'AA'
*                                         iv_connection_id = '0018' ) ).
*
*    ls_elements-class     = 'class_value'.
*    ls_elements-instance  = 'instance_value'.
*    ls_elements-reference = 'reference_value'.
*    lo_elements->set_elements( EXPORTING is_elements = ls_elements ) .
*    out->write( lo_elements->ms_object ).
*    out->write( |Currencys: | &&
*                |{ zcl_lab_06_eagm_elements=>cs_currency-btc }-| &&
*                |{ zcl_lab_06_eagm_elements=>cs_currency-cop }-| &&
*                |{ zcl_lab_06_eagm_elements=>cs_currency-eur }-| &&
*                |{ zcl_lab_06_eagm_elements=>cs_currency-usd }| ).
*
*    lo_student->set_birth_date( '19891028' ).
*    out->write( lo_student->birth_date ).
*
*    zcl_lab_08__eagm_work_record=>open_new_record(
*      iv_date       = '19891028'
*      iv_first_name = 'Antonio'
*      iv_last_name  = 'Guzman'
*      iv_surname    = 'Optional' ).
*
*    lo_account->set_iban( iban = 'Self Reference' ).
*    lo_account->get_iban( IMPORTING iban = DATA(lv_iban) ).
*    out->write( lv_iban ).
*
*
*    out->write( zcl_lab_10_eagm_constructor=>log ).
*    DATA(lo_constructor) = NEW zcl_lab_10_eagm_constructor(  ).
*    out->write( zcl_lab_10_eagm_constructor=>log ).

*    DATA(lo_linux) = NEW zcl_lab_12_eagm_linux(  ).
*    lo_linux->get_architecture( IMPORTING ev_architecture = DATA(lv_architecture) ).
*    out->write( lv_architecture ).
*
*    DATA(lo_grid) = NEW zcl_lab_14_eagm_grid( iv_view_type = 'View Type 01'
*                                              iv_box       = 'Box 01' ).
*
*    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*    SELECT SINGLE *
*        FROM /dmo/flight
*         WHERE carrier_id = 'AA'
*           AND connection_id = '0018'
*         INTO @DATA(ls_flight).
*
*    DATA(lo_fligh) = NEW zcl_lab_15_eagm_flight_price( ).
*    DATA(lo_disc_10) = NEW zcl_lab_16_eagm_price_discount( ).
*    DATA(lo_disc_20) = NEW zcl_lab_17_eagm_price_discount( ).
*
*    lo_fligh->add_price( iv_add_price = ls_flight ).
*    lo_disc_10->add_price( iv_add_price = ls_flight ).
*    lo_disc_20->add_price( iv_add_price = ls_flight ).
*
*    out->write( lo_fligh->mt_flights ).
*    out->write( lo_disc_10->mt_flights ).
*    out->write( lo_disc_20->mt_flights ).
*
*    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*    DATA(lo_animal) = NEW zcl_lab_18_eagm_animal(  ).
*    DATA(lo_lion) = NEW zcl_lab_19_eagm_lion(  ).
*
*    lo_animal = lo_lion. "Narrowing Cast or Up Cast
*    out->write( 'Narrowing Cast or Up Cast' ).
*    out->write( lo_animal->walk(  ) ).
*
*    TRY.
*        lo_animal = lo_lion.
*        lo_lion ?= lo_animal.
*      CATCH cx_sy_move_cast_error.
*        out->write( 'Casting error' ).
*        RETURN.
*    ENDTRY.
*
*    out->write( 'Widening Cast or Down Cast' ).
*    out->write( lo_lion->walk(  ) ).
*
*    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*    DATA(partner) = NEW zcl_lab_24_eagm_partner( ).
*    out->write( partner->get_company_capital(  ) ).
*
*    out->write( zcl_lab_25_eagm_collaborator=>get_capital( ) ).

*    DATA(lo_flights) = NEW zcl_lab_26_eagm_flights(  ).
*
**    lo_flights->zif_lab_eagm_01_flight~set_conn_id( iv_conn_id = '000001' ).
**    out->write( lo_flights->zif_lab_eagm_01_flight~get_conn_id(  ) ).
**
**    DATA(ls_cust_info) = lo_flights->zif_lab_eagm_02_customer~get_customer( '000001' ).
**    out->write( ls_cust_info ).
*
*    lo_flights->set_conn_id( iv_conn_id = '000001' ).
*    out->write( lo_flights->get_conn_id(  ) ).
*
*    DATA(ls_cust_info) = lo_flights->get_customer( '000001' ).
*    out->write( ls_cust_info ).
*
**    out->write( lo_flights->zif_lab_eagm_03_airports~get_airports( 'FRA' ) ).
*    out->write( lo_flights->get_airports( 'FRA' ) ).
*
*    DATA(lo_logistics) = new zcl_lab_28_eagm_logistics(  ).
*    out->write( lo_logistics->input_products( ) ).
*    out->write( lo_logistics->merchandise_output( ) ).
*    out->write( lo_logistics->production_line( ) ).
*
*    DATA:
*      lt_org         TYPE TABLE OF REF TO zcl_lab_29_eagm_organization,
*      go_org_germany TYPE REF TO zcl_lab_30_eagm_org_germany,
*      go_org_france  TYPE REF TO zcl_lab_31_eagm_org_france.
*
*    go_org_germany = NEW #(  ).
*    go_org_france  = NEW #(  ).
*
*    APPEND go_org_germany TO lt_org.
*    APPEND go_org_france TO lt_org.
*
*    LOOP AT lt_org INTO DATA(lo_org).
*      out->write( lo_org->get_location( ) ).
*    ENDLOOP.
*
***********************************************************************
*    DATA:
*      lt_employee      TYPE TABLE OF REF TO zif_lab_eagm_04_employee,
*      lo_ee_internal   TYPE REF TO zcl_lab_32_eagm_internal_empl,
*      lo_ee_expatriate TYPE REF TO zcl_lab_33_eagm_expatria_empl.
*
*    lo_ee_internal   = NEW #(  ).
*    lo_ee_expatriate = NEW #(  ).
*
*    APPEND lo_ee_internal TO lt_employee.
*    APPEND lo_ee_expatriate TO lt_employee.
*
*    LOOP AT lt_employee INTO DATA(lo_employee).
*      out->write( |Num. Employees: { lo_employee->get_employees_count( ) }| ).
*    ENDLOOP.
*
***********************************************************************
*    DATA(lo_student) = NEW zcl_lab_34_eagm_student(  ).
*    DATA(lo_collage) = NEW zcl_lab_35_eagm_college(  ).
*
*    lo_student->set_name( 'Toño' ).
*    out->write( lo_collage->enroll_student( lo_student ) ).
***********************************************************************
*
*    DATA(lo_screen) = NEW zcl_lab_37_eagm_screen(  ).
*    lo_screen->set_type_screen( 'Screen_1' ).
*
*    DATA(lo_phone) = NEW zcl_lab_36_eagm_phone( lo_screen ).
*    out->write( lo_phone->go_screen->get_type_screen( ) ).
*
***********************************************************************
*
*    DATA:
*      lo_prod_price_a TYPE REF TO zcl_lab_38_eagm_prod_price,
*      lo_prod_price_b TYPE REF TO zcl_lab_38_eagm_prod_price.
*
*    lo_prod_price_a = NEW #(  ).
*    lo_prod_price_a->price = '10'.
*
*    lo_prod_price_b = lo_prod_price_a.
*    lo_prod_price_b->price = '2'.
*
*    out->write( lo_prod_price_a->get_price(  ) ).
*    out->write( lo_prod_price_b->get_price( ) ).
*
***********************************************************************
*
*    DATA lo_budget TYPE REF TO zcl_lab_39_eagm_budget.
*    lo_budget = NEW zcl_lab_40_eagm_actual_budget( ).
*
***********************************************************************
*    DATA:
*      go_object       TYPE REF TO object,
*      lv_headquarters TYPE string.
*
*    go_object = NEW zcl_lab_41_eagm_organization( ).
*
*    DATA(lv_method_name) = 'SET_HEADQUARTERS'.
*    CALL METHOD go_object->(lv_method_name) EXPORTING iv_headquarters = 'Head Quarters'.
*
*    lv_method_name = 'GET_HEADQUARTERS'.
*    CALL METHOD go_object->(lv_method_name) RECEIVING rv_headquarters = lv_headquarters.
*    out->write( lv_headquarters ).

**********************************************************************
*    DATA(go_screen)     = NEW zcl_lab_42_eagm_screen( 'Touchscreen' ).
*    DATA(go_navigation) = NEW zcl_lab_43_eagm_navigation(  ).
*
*    SET HANDLER go_navigation->on_touch_screen FOR go_screen.
*
*    go_screen->pos_x = '5'.
*    go_screen->pos_y = '6'.
*    go_screen->element_selected( ).
*
*    out->write( |{ go_navigation->log }| ).
***********************************************************************
*
*    DATA(go_o_system) = NEW zcl_lab_44_eagm_o_system( ).
*    DATA(go_chrome) = NEW zcl_lab_45_eagm_chrome(  ).
*
*    SET HANDLER go_chrome->on_close_window FOR go_o_system.
*
*    DO 2 TIMES.
*      IF sy-index = 2.
*        SET HANDLER go_chrome->on_close_window FOR go_o_system ACTIVATION abap_false.
*        go_chrome->notification = |No handler for event mouse movement|.
*      ENDIF.
*
*      out->write( go_o_system->mouse_movement( ) ).
*      out->write( go_chrome->notification ).
*    ENDDO.
*
***********************************************************************
*
*    SET HANDLER zcl_lab_47_eagm_custom_service=>on_new_call.
*    zcl_lab_46_eagm_m_operator=>assign_call( iv_phone_number = '+573137536391' ).
*    out->write( zcl_lab_47_eagm_custom_service=>new_call_number ).

**********************************************************************
*    DATA(go_employee_1) = NEW zcl_lab_48_eagm_admin_dep( 'AAA' ).
*    DATA(go_employee_2) = NEW zcl_lab_48_eagm_admin_dep( 'BBB' ).
*    DATA(go_employee_3) = NEW zcl_lab_48_eagm_admin_dep( 'CCC' ).
*    DATA(go_employee)   = NEW zcl_lab_49_eagm_employee( ).
*
*
*    go_employee_1->notify_employee( ).
*    out->write( go_employee_1->log ).
*
*    go_employee_2->notify_employee( ).
*    out->write( go_employee_2->log ).
*
*    go_employee_3->notify_employee( ).
*    out->write( go_employee_3->log ).
*
*
*    out->write( zcl_lab_49_eagm_employee=>table_employee_notified ).
***********************************************************************
*    DATA(lo_check_user) = NEW zcl_lab_53_eagm_check_user( ).
*
*    TRY.
*        lo_check_user->check_user( sy-uname ).
*
*      CATCH zcx_lab_52_eagm_operations INTO DATA(lx_check_user).
*        out->write( lx_check_user->get_text(  ) ).
*    ENDTRY.
*
***********************************************************************
*
*    DATA:
*      lv_result TYPE i,
*      lv_num1   TYPE i VALUE 20,
*      lv_num2   TYPE i.
*
*    TRY.
*        TRY.
*            lv_result = lv_num1 / lv_num2.
*
*          CATCH zcx_lab_52_eagm_operations INTO DATA(lx_check).
*            out->write( lx_check->get_text(  ) ).
*
*          CLEANUP INTO DATA(lx_cleanup).
*            out->write( |Cleanup: { lx_cleanup->get_text( ) }| ).
*        ENDTRY.
*
*      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
*        out->write( |Catch: { lx_zerodivide->get_text(  ) }| ).
*        lv_num2 = 2.
*        RETRY.
*
*    ENDTRY.
*
*    out->write( |Retry: { lv_result }| ).
*
***********************************************************************
*
*    DATA(lo_bank) = NEW zcl_lab_54_eagm_bank(  ).
*
*    out->write( |\nChecking IBAN: ES95 4329 8765 4321 ...| ).
*    TRY.
*        out->write( lo_bank->transfer( 'ES95 4329 8765 4321' ) ).
*      CATCH zcx_lab_55_eagm_auth_iban INTO DATA(lx_auth_iban).
*        out->write( lx_auth_iban->get_text( ) ).
*    ENDTRY.
*
*    out->write( |\nChecking IBAN: ES95 4329 8765 9999 ...| ).
*    TRY.
*        out->write( lo_bank->transfer( 'ES95 4329 8765 9999' ) ).
*      CATCH zcx_lab_55_eagm_auth_iban INTO DATA(lx_auth).
*        out->write( |{ lx_auth->get_text( ) }| ).
*    ENDTRY.
***********************************************************************
*
*    out->write( |\n| ).
*
*    DATA(lo_data_analyzer) = NEW zcl_lab_58_eagm_date_analyzer(  ).
*
*    TRY.
*        TRY.
*            lo_data_analyzer->analyze_date(  ).
*
*          CATCH zcx_lab_56_eagm_no_date INTO DATA(lx_exception_1).
*
*            lo_data_analyzer->analyze_format( io_previous = lx_exception_1 ).
*        ENDTRY.
*
*      CATCH zcx_lab_57_eagm_format_unknown INTO DATA(lx_exception_2).
*
*        out->write( |{ lx_exception_2->get_text(  ) }\n| ).
*        out->write( |{ lx_exception_2->previous->get_text(  ) }\n| ).
*
*    ENDTRY.
**********************************************************************
    DATA:
      go_singleton_1 TYPE REF TO zcl_lab_62_eagm_context,
      go_singleton_2 TYPE REF TO zcl_lab_62_eagm_context.


    go_singleton_1 = zcl_lab_62_eagm_context=>get_instance( ).
    WAIT UP TO 2 SECONDS.
    go_singleton_2 = zcl_lab_62_eagm_context=>get_instance( ).
    WAIT UP TO 2 SECONDS.

    out->write( go_singleton_1->mv_time ).
    out->write( go_singleton_2->mv_time ).

**********************************************************************

    DATA:
      go_file    TYPE REF TO zif_lab_eagm_06_file,
      go_factory TYPE REF TO zcl_lab_65_eagm_factory.

    go_factory = NEW #(  ).

    go_file = go_factory->get_file_type( iv_file_type = 'Work' ).
    out->write( go_file->get_file_type( ) ).

    go_file = go_factory->get_file_type( iv_file_type = 'Supply' ).
    out->write( go_file->get_file_type( ) ).

**********************************************************************

    DATA(go_package_a) = NEW zcl_lab_67_eagm_package_a(  ).
    DATA(go_package_b) = NEW zcl_lab_68_eagm_package_b(  ).

    out->write( |Travel A | ).
    go_package_a->travel( out ).
    out->write( |{ cl_abap_char_utilities=>newline }Travel B| ).
    go_package_b->travel( out ).

**********************************************************************
    out->write( cl_abap_char_utilities=>newline ).
    DATA(go_blog) = NEW zcl_lab_69_eagm_blog( ).
    DATA(go_admin) = NEW zcl_lab_71_eagm_administrator( ).
    DATA(go_user) = NEW zcl_lab_72_eagm_users( ).

    SET HANDLER go_admin->on_new_publication FOR go_blog.
    SET HANDLER go_user->on_new_publication FOR go_blog.

    "Set new publication
    go_blog->set_new_publication( |New publication has been added by: { sy-uname }| ).

    out->write( go_blog->get_new_publication( ) ).
    out->write( go_admin->new_publicaton ).
    out->write( go_user->new_publicaton ).

**********************************************************************
    out->write( cl_abap_char_utilities=>newline ).

    DATA(go_model) = NEW zcl_lab_73_eagm_model( ).
    DATA(go_view) = NEW zcl_lab_74_eagm_view(  ).
    DATA(go_controller) = NEW zcl_lab_75_eagm_controller(  ).

    go_controller->set_model( go_model ).
    go_controller->set_view( go_view ).

    go_controller->get_view( )->display_fligths( it_flights = go_model->get_flights( 'AA' )
                                                 io_out     = out ).

  ENDMETHOD.
ENDCLASS.
