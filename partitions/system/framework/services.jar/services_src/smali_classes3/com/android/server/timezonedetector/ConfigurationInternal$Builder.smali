.class public Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# instance fields
.field public mAutoDetectionEnabledSetting:Z

.field public mEnhancedMetricsCollectionEnabled:Z

.field public mGeoDetectionEnabledSetting:Z

.field public mGeoDetectionRunInBackgroundEnabled:Z

.field public mGeoDetectionSupported:Z

.field public mLocationEnabledSetting:Z

.field public mTelephonyDetectionSupported:Z

.field public mTelephonyFallbackSupported:Z

.field public mUserConfigAllowed:Z

.field public mUserId:Ljava/lang/Integer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAutoDetectionEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnhancedMetricsCollectionEnabled(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mEnhancedMetricsCollectionEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGeoDetectionEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabledSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGeoDetectionRunInBackgroundEnabled(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionRunInBackgroundEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGeoDetectionSupported(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocationEnabledSetting(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabledSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephonyDetectionSupported(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephonyFallbackSupported(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyFallbackSupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserConfigAllowed(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:Ljava/lang/Integer;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 2

    .line 481
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;Lcom/android/server/timezonedetector/ConfigurationInternal-IA;)V

    return-object v0
.end method

.method public setAutoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    .line 458
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    return-object p0
.end method

.method public setEnhancedMetricsCollectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    .line 450
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mEnhancedMetricsCollectionEnabled:Z

    return-object p0
.end method

.method public setGeoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    .line 474
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabledSetting:Z

    return-object p0
.end method

.method public setGeoDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    .line 423
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    return-object p0
.end method

.method public setGeoDetectionRunInBackgroundEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    .line 442
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionRunInBackgroundEnabled:Z

    return-object p0
.end method

.method public setLocationEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    .line 466
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabledSetting:Z

    return-object p0
.end method

.method public setTelephonyDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    return-object p0
.end method

.method public setTelephonyFallbackSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    .line 432
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyFallbackSupported:Z

    return-object p0
.end method

.method public setUserConfigAllowed(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    .line 407
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return-object p0
.end method

.method public setUserId(I)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:Ljava/lang/Integer;

    return-object p0
.end method
