CLASS zcl_lab_70_eagm_observer DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
        on_new_publication ABSTRACT
            FOR EVENT new_publication OF zcl_lab_69_eagm_blog
            IMPORTING ev_new_publication.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_70_eagm_observer IMPLEMENTATION.
ENDCLASS.
