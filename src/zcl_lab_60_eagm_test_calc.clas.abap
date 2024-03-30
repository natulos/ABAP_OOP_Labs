CLASS zcl_lab_60_eagm_test_calc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.
    METHODS:
      "! @testing zcl_lab_59_eagm_calculator
      sum_up FOR TESTING .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        mo_cut TYPE REF TO zcl_lab_59_eagm_calculator. "CUT: Class Under Test

    METHODS:
      setup,
      teardown.
ENDCLASS.



CLASS zcl_lab_60_eagm_test_calc IMPLEMENTATION.
  METHOD sum_up.
    "Given
    CONSTANTS:
      lv_num_1 TYPE i VALUE 10,
      lv_num_2 TYPE i VALUE 3.

    "When
   DATA(lv_sum) = mo_cut->sum_up( EXPORTING iv_num_1 = lv_num_1
                                            iv_num_2 = lv_num_2 ).

    "Them
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_sum
        exp                  = 13 ).
  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW zcl_lab_59_eagm_calculator(  ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

ENDCLASS.
