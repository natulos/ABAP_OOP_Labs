CLASS zcl_lab_50_eagm_work_zone DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_51_eagm_wz_friend.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        ls_work_zone TYPE ty_work_zone,
        lo_helper    TYPE REF TO lcl_helper.

    METHODS:
      set_work_zone IMPORTING iv_launchpad TYPE string
                              iv_dashboard TYPE string
                              iv_spaces    TYPE string.

ENDCLASS.



CLASS zcl_lab_50_eagm_work_zone IMPLEMENTATION.

  METHOD set_work_zone.
    me->ls_work_zone-launchpad = iv_launchpad.
    me->ls_work_zone-dashboard = iv_dashboard.
    me->ls_work_zone-spaces    = iv_spaces.
  ENDMETHOD.

ENDCLASS.
