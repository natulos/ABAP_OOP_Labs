CLASS zcl_lab_64_eagm_supply_file DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_eagm_06_file .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_64_eagm_supply_file IMPLEMENTATION.


  METHOD zif_lab_eagm_06_file~get_file_type.
    rv_file_type = |Supply File|.
  ENDMETHOD.
ENDCLASS.
