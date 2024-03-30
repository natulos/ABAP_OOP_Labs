CLASS zcl_lab_68_eagm_package_b DEFINITION INHERITING FROM zcl_lab_66_eagm_travel
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
    METHODS:
      transport_oneway REDEFINITION,
      day_one REDEFINITION,
      day_two REDEFINITION,
      day_three REDEFINITION,
      transport_return REDEFINITION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_68_eagm_package_b IMPLEMENTATION.

 METHOD transport_oneway.
    io_out->write( 'Transport Oneway Package B' ).
  ENDMETHOD.

  METHOD day_one.
    io_out->write( 'Day One Package B' ).
  ENDMETHOD.

  METHOD day_two.
    io_out->write( 'Day Two Package B' ).
  ENDMETHOD.

  METHOD day_three.
    io_out->write( 'Day Three Package B' ).
  ENDMETHOD.

  METHOD transport_return.
    io_out->write( 'Transport Return Package B' ).
  ENDMETHOD.

ENDCLASS.
