CLASS zcl_lab_37_eagm_screen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_type_screen IMPORTING iv_type_screen TYPE string,
      get_type_screen RETURNING VALUE(rv_type_screen) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        gv_type_screen TYPE string.

ENDCLASS.



CLASS ZCL_LAB_37_EAGM_SCREEN IMPLEMENTATION.


  METHOD get_type_screen.
    rv_type_screen = me->gv_type_screen.
  ENDMETHOD.


  METHOD set_type_screen.
    gv_type_screen = iv_type_screen.
  ENDMETHOD.
ENDCLASS.
