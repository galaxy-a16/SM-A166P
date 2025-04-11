.class public abstract Lcom/android/server/biometrics/SemBiometricFeature;
.super Ljava/lang/Object;
.source "SemBiometricFeature.java"


# static fields
.field public static final FACE_FEATURE_LANDSCAPE_MODE:Z

.field public static final FEATURE_FINGERPRINT_JDM_HAL:Z

.field public static final FEATURE_INTEGRATED_LOCKOUT:Z

.field public static final FEATURE_JDM_HAL:Z

.field public static final FEATURE_LOGGING_MODE:Z

.field public static final FEATURE_SUPPORT_AOD:Z

.field public static final FEATURE_SUPPORT_DESKTOP_MODE:Z

.field public static final FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

.field public static final FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

.field public static final FEATURE_SUPPORT_SPEN:Z

.field public static final FP_FEATURE_EARLY_WAKE_UP:Z

.field public static final FP_FEATURE_FAKE_AOD:Z

.field public static final FP_FEATURE_GESTURE_MODE:Z

.field public static final FP_FEATURE_HW_LIGHT_SOURCE:Z

.field public static final FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

.field public static final FP_FEATURE_SENSOR_IS_OPTICAL:Z

.field public static final FP_FEATURE_SENSOR_IS_SIDE:Z

.field public static final FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

.field public static final FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

.field public static final FP_FEATURE_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

.field public static final FP_FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS:Z

.field public static final FP_FEATURE_SUPPORT_FINGERPRINT:Z

.field public static final FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

.field public static final FP_FEATURE_SWIPE_ENROLL:Z

.field public static final FP_FEATURE_TSP_BLOCK:Z

.field public static final FP_FEATURE_USE_AOSP_HAL:Z

.field public static final FP_FEATURE_WOF_OPTION_DEFAULT_OFF:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEVICE_MANUFACTURING_TYPE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "jdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_DESKTOP_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aodversion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_AOD:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_SPEN:Z

    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_BIOAUTH_CONFIG_FINGERPRINT_FEATURES"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "display"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "optical"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ultrasonic"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_SIDE:Z

    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SWIPE_ENROLL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_EARLY_WAKE_UP:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_LCD_CONFIG_SELFMASK_VERSION"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v3, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_FAKE_AOD:Z

    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_WOF_OPTION_DEFAULT_OFF:Z

    const-string/jumbo v0, "ro.soc.model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "s5e8845"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS:Z

    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_LANDSCAPE_MODE:Z

    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    return-void
.end method
