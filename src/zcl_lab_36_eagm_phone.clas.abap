CLASS zcl_lab_36_eagm_phone DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
      go_screen      TYPE REF TO zcl_lab_37_eagm_screen.

    METHODS:
      constructor IMPORTING io_screen TYPE REF TO zcl_lab_37_eagm_screen.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_LAB_36_EAGM_PHONE IMPLEMENTATION.


  METHOD constructor.
    me->go_screen = io_screen.
  ENDMETHOD.
ENDCLASS.
