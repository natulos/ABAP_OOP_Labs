*"* use this source file for your ABAP unit test classes
CLASS test_injection DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.
    "Implementacion parcial de interfaces. Solo para clases test.
    INTERFACES:
      if_abap_db_writer PARTIALLY IMPLEMENTED.

  PRIVATE SECTION.

    DATA:
     mo_cut TYPE REF TO zcl_lab_61_eagm_travel.

    METHODS:
      get_travel_test FOR TESTING RAISING cx_static_check,
      setup,
      teardown.
ENDCLASS.


CLASS test_injection IMPLEMENTATION.

  METHOD get_travel_test.

    DATA(ls_fligth) = mo_cut->get_travel( ).

    IF cl_abap_unit_assert=>assert_equals( act = ls_fligth-flight_date
                                           exp = '20231214' ) = abap_true.
      cl_abap_unit_assert=>fail( 'Get customer process failed---zcl_lab_61_eagm_travel->get_travel' ).
    ENDIF.

  ENDMETHOD.

  METHOD setup.
    me->mo_cut = NEW zcl_lab_61_eagm_travel(  ).

    TEST-INJECTION select_data.
      lv_fligth_date = '20231214'.
      ls_fligth-flight_date = lv_fligth_date.
      ls_fligth-price = 200.
    END-TEST-INJECTION.
  ENDMETHOD.

  METHOD teardown.
    CLEAR me->mo_cut.
  ENDMETHOD.

  METHOD if_abap_close_resource~close.

  ENDMETHOD.

ENDCLASS.
