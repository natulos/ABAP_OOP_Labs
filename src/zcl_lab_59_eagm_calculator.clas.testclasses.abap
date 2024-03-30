*"* use this source file for your ABAP unit test classes
CLASS ltcl_calculator DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA:
        mo_cut TYPE REF TO zcl_lab_59_eagm_calculator. "CUT: Class Under Test

    METHODS:
      sum_up_local_test FOR TESTING RAISING cx_static_check,
      setup,
      teardown.
ENDCLASS.


CLASS ltcl_calculator IMPLEMENTATION.

  METHOD sum_up_local_test.
    "Given
    DATA:
      lv_num_1 TYPE i VALUE 10,
      lv_num_2 TYPE i VALUE 3,
      lv_sum   TYPE i.

    "When
    lv_sum = me->mo_cut->sum_up( EXPORTING iv_num_1 = lv_num_1
                                           iv_num_2 = lv_num_2 ).

    IF cl_abap_unit_assert=>assert_equals( EXPORTING act = lv_sum
                                                     exp = 13 ) = abap_true.

      cl_abap_unit_assert=>fail( 'Sum Up Process Failed' ).
    ENDIF.
  ENDMETHOD.

  METHOD setup.
    me->mo_cut = NEW zcl_lab_59_eagm_calculator( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR me->mo_cut.
  ENDMETHOD.

ENDCLASS.
