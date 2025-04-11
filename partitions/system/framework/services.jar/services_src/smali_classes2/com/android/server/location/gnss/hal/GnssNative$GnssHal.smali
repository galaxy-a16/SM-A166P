.class public Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;
.super Ljava/lang/Object;
.source "GnssNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGeofence(IDDDIIII)Z
    .locals 0

    .line 1782
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_add_geofence(IDDDIIII)Z

    move-result p0

    return p0
.end method

.method public classInitOnce()V
    .locals 0

    .line 1616
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_class_init_once()V

    return-void
.end method

.method public cleanup()V
    .locals 0

    .line 1632
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_cleanup()V

    return-void
.end method

.method public cleanupBatching()V
    .locals 0

    .line 1759
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_cleanup_batching()V

    return-void
.end method

.method public deleteAidingData(I)V
    .locals 0

    .line 1655
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_delete_aiding_data(I)V

    return-void
.end method

.method public flushBatch()V
    .locals 0

    .line 1768
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_flush_batch()V

    return-void
.end method

.method public getBatchSize()I
    .locals 0

    .line 1751
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_batch_size()I

    move-result p0

    return p0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 0

    .line 1651
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_internal_state()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSehGnssHalVersion()F
    .locals 0

    .line 1855
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_seh_gnss_hal_version()F

    move-result p0

    return p0
.end method

.method public gnssConfigurationUpdateExtension(Ljava/lang/String;)V
    .locals 0

    .line 1837
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_configuration_update_extension(Ljava/lang/String;)V

    return-void
.end method

.method public init()Z
    .locals 0

    .line 1628
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init()Z

    move-result p0

    return p0
.end method

.method public initBatching()Z
    .locals 0

    .line 1755
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init_batching()Z

    move-result p0

    return p0
.end method

.method public initLocationOff()Z
    .locals 0

    .line 1833
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init_extension_location_off()Z

    move-result p0

    return p0
.end method

.method public initOnce(Lcom/android/server/location/gnss/hal/GnssNative;Z)V
    .locals 0

    .line 1624
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$mnative_init_once(Lcom/android/server/location/gnss/hal/GnssNative;Z)V

    return-void
.end method

.method public injectBestLocation(IDDDFFFFFFJIJD)V
    .locals 0

    .line 1678
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_best_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public injectCivicAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1911
    invoke-static/range {p1 .. p13}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_civic_address(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public injectFlpError(I)V
    .locals 0

    .line 1874
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_flp_error(I)V

    return-void
.end method

.method public injectFlpLocation(IDDDFFFFFFJ)V
    .locals 0

    .line 1868
    invoke-static/range {p1 .. p15}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_flp_location(IDDDFFFFFFJ)V

    return-void
.end method

.method public injectLocation(IDDDFFFFFFJIJD)V
    .locals 0

    .line 1667
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public injectLppeComIeCapability(IZZZIZZZZZ)V
    .locals 0

    .line 1880
    invoke-static/range {p1 .. p10}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_lppe_com_ie_capability(IZZZIZZZZZ)V

    return-void
.end method

.method public injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .locals 0

    .line 1731
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    return p0
.end method

.method public injectNiSuplMessageData([BII)V
    .locals 0

    .line 1845
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_ni_supl_message_data([BII)V

    return-void
.end method

.method public injectPsdsData([BII)V
    .locals 0

    .line 1828
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_psds_data([BII)V

    return-void
.end method

.method public injectTime(JJI)V
    .locals 0

    .line 1685
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_time(JJI)V

    return-void
.end method

.method public injectUbpCapability(ZZZZ)V
    .locals 0

    .line 1887
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_ubp_capability(ZZZZ)V

    return-void
.end method

.method public injectUbpError(I)V
    .locals 0

    .line 1894
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_ubp_error(I)V

    return-void
.end method

.method public injectUbpInfo(II)V
    .locals 0

    .line 1891
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_ubp_info(II)V

    return-void
.end method

.method public injectWlanCapability(IIJIII)V
    .locals 0

    .line 1899
    invoke-static/range {p1 .. p7}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_wlan_capability(IIJIII)V

    return-void
.end method

.method public injectWlanError(I)V
    .locals 0

    .line 1906
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_wlan_error(I)V

    return-void
.end method

.method public injectWlanScanInfo([J[I[II)V
    .locals 0

    .line 1903
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_wlan_scan_info([J[I[II)V

    return-void
.end method

.method public isAntennaInfoSupported()Z
    .locals 0

    .line 1701
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_antenna_info_supported()Z

    move-result p0

    return p0
.end method

.method public isGeofencingSupported()Z
    .locals 0

    .line 1776
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_geofence_supported()Z

    move-result p0

    return p0
.end method

.method public isGnssVisibilityControlSupported()Z
    .locals 0

    .line 1799
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_gnss_visibility_control_supported()Z

    move-result p0

    return p0
.end method

.method public isMeasurementCorrectionsSupported()Z
    .locals 0

    .line 1727
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_measurement_corrections_supported()Z

    move-result p0

    return p0
.end method

.method public isMeasurementSupported()Z
    .locals 0

    .line 1713
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_measurement_supported()Z

    move-result p0

    return p0
.end method

.method public isNavigationMessageCollectionSupported()Z
    .locals 0

    .line 1689
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_navigation_message_supported()Z

    move-result p0

    return p0
.end method

.method public isPsdsSupported()Z
    .locals 0

    .line 1824
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_supports_psds()Z

    move-result p0

    return p0
.end method

.method public isSehGnssAidlHal()Z
    .locals 0

    .line 1859
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_seh_gnss_aidl_hal()Z

    move-result p0

    return p0
.end method

.method public isSupported()Z
    .locals 0

    .line 1620
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_supported()Z

    move-result p0

    return p0
.end method

.method public pauseGeofence(I)Z
    .locals 0

    .line 1791
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_pause_geofence(I)Z

    move-result p0

    return p0
.end method

.method public readNmea([BI)I
    .locals 0

    .line 1659
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_read_nmea([BI)I

    move-result p0

    return p0
.end method

.method public removeGeofence(I)Z
    .locals 0

    .line 1795
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_remove_geofence(I)Z

    move-result p0

    return p0
.end method

.method public requestPowerStats()V
    .locals 0

    .line 1807
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_request_power_stats()V

    return-void
.end method

.method public resumeGeofence(II)Z
    .locals 0

    .line 1787
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_resume_geofence(II)Z

    move-result p0

    return p0
.end method

.method public sendNiResponse(II)V
    .locals 0

    .line 1803
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_send_ni_response(II)V

    return-void
.end method

.method public sendSuplNiMessage([BI)V
    .locals 0

    .line 1841
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_send_supl_ni_message([BI)V

    return-void
.end method

.method public setAgpsReferenceLocationCellId(IIIIJII)V
    .locals 0

    .line 1851
    invoke-static/range {p1 .. p8}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_ref_location_cellid(IIIIJII)V

    return-void
.end method

.method public setAgpsReferenceLocationCellId(IIIIJIII)V
    .locals 0

    .line 1820
    invoke-static/range {p1 .. p9}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_ref_location_cellid(IIIIJIII)V

    return-void
.end method

.method public setAgpsServer(ILjava/lang/String;I)V
    .locals 0

    .line 1811
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method public setAgpsSetId(ILjava/lang/String;)V
    .locals 0

    .line 1815
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_id(ILjava/lang/String;)V

    return-void
.end method

.method public setPositionMode(IIIIIZ)Z
    .locals 0

    .line 1646
    invoke-static/range {p1 .. p6}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_set_position_mode(IIIIIZ)Z

    move-result p0

    return p0
.end method

.method public start()Z
    .locals 0

    .line 1636
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start()Z

    move-result p0

    return p0
.end method

.method public startAntennaInfoListening()Z
    .locals 0

    .line 1705
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_antenna_info_listening()Z

    move-result p0

    return p0
.end method

.method public startBatch(JFZ)Z
    .locals 0

    .line 1764
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_batch(JFZ)Z

    move-result p0

    return p0
.end method

.method public startMeasurementCollection(ZZI)Z
    .locals 0

    .line 1718
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_measurement_collection(ZZI)Z

    move-result p0

    return p0
.end method

.method public startNavigationMessageCollection()Z
    .locals 0

    .line 1693
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_navigation_message_collection()Z

    move-result p0

    return p0
.end method

.method public startNmeaMessageCollection()Z
    .locals 0

    .line 1743
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_nmea_message_collection()Z

    move-result p0

    return p0
.end method

.method public startSvStatusCollection()Z
    .locals 0

    .line 1735
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_sv_status_collection()Z

    move-result p0

    return p0
.end method

.method public stop()Z
    .locals 0

    .line 1640
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop()Z

    move-result p0

    return p0
.end method

.method public stopAntennaInfoListening()Z
    .locals 0

    .line 1709
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_antenna_info_listening()Z

    move-result p0

    return p0
.end method

.method public stopBatch()V
    .locals 0

    .line 1772
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_batch()Z

    return-void
.end method

.method public stopMeasurementCollection()Z
    .locals 0

    .line 1723
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_measurement_collection()Z

    move-result p0

    return p0
.end method

.method public stopNavigationMessageCollection()Z
    .locals 0

    .line 1697
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_navigation_message_collection()Z

    move-result p0

    return p0
.end method

.method public stopNmeaMessageCollection()Z
    .locals 0

    .line 1747
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_nmea_message_collection()Z

    move-result p0

    return p0
.end method

.method public stopSvStatusCollection()Z
    .locals 0

    .line 1739
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_sv_status_collection()Z

    move-result p0

    return p0
.end method
