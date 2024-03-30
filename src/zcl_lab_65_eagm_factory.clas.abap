CLASS zcl_lab_65_eagm_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS
      get_file_type IMPORTING iv_file_type        TYPE string
                    RETURNING VALUE(ro_file_type) TYPE REF TO zif_lab_eagm_06_file.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_65_eagm_factory IMPLEMENTATION.
  METHOD get_file_type.

    CASE iv_file_type.
      WHEN 'Work'.
        ro_file_type = NEW zcl_lab_63_eagm_work_file( ).
      WHEN 'Supply'.
        ro_file_type = NEW zcl_lab_64_eagm_supply_file( ).
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
