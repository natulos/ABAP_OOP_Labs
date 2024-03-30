CLASS zcl_lab_14_eagm_grid DEFINITION INHERITING FROM zcl_lab_13_eagm_view
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      constructor IMPORTING iv_view_type TYPE string
                            iv_box       TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_14_EAGM_GRID IMPLEMENTATION.


  METHOD constructor.
    super->constructor( iv_view_type = iv_view_type ).
    me->box = iv_box.
  ENDMETHOD.
ENDCLASS.
