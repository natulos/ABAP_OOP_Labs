CLASS zcl_lab_66_eagm_travel DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      travel FINAL IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.

  PROTECTED SECTION.

    DATA:
      out TYPE REF TO if_oo_adt_classrun_out.

    METHODS:

      transport_oneway ABSTRACT IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out,
      day_one ABSTRACT IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out,
      day_two ABSTRACT IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out,
      day_three ABSTRACT IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out,
      transport_return ABSTRACT IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_66_eagm_travel IMPLEMENTATION.

  METHOD travel.
    me->out = io_out.
    me->transport_oneway( me->out ).
    me->day_one( me->out ).
    me->day_two( me->out ).
    me->day_three( me->out ).
    me->transport_return( me->out ).
  ENDMETHOD.

ENDCLASS.
