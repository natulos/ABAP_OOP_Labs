CLASS zcl_lab_13_eagm_view DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      constructor IMPORTING iv_view_type TYPE string.

  PROTECTED SECTION.
    DATA:
      view_type TYPE string,
      box       TYPE string.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_13_EAGM_VIEW IMPLEMENTATION.


  METHOD constructor.
    me->view_type = iv_view_type.
  ENDMETHOD.
ENDCLASS.
