CLASS zcl_lab_19_eagm_lion DEFINITION INHERITING FROM zcl_lab_18_eagm_animal
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      walk REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_19_EAGM_LION IMPLEMENTATION.


  METHOD walk.
    rv_walk = 'The lion walks'.
  ENDMETHOD.
ENDCLASS.
