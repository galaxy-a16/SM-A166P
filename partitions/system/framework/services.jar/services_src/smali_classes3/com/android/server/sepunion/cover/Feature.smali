.class public final Lcom/android/server/sepunion/cover/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static sDeviceTypeProperty:Ljava/lang/String; = null

.field public static sHardwareProperty:Ljava/lang/String; = null

.field public static sInstance:Lcom/android/server/sepunion/cover/Feature; = null

.field public static sIsDeviceSupportDetectCover:Z = false

.field public static sIsDeviceSupportQueried:Z = false

.field public static sIsDeviceSupportVerifyCover:Z = false

.field public static sIsNfcAuthSystemFeatureEnabled:Z = false

.field public static sIsSupportClearCameraViewCover:Z = false

.field public static sIsSupportClearCover:Z = false

.field public static sIsSupportClearSideViewCover:Z = false

.field public static sIsSupportFlipCover:Z = false

.field public static sIsSupportGamePackCover:Z = false

.field public static sIsSupportLEDBackCover:Z = false

.field public static sIsSupportMiniSviewWalletCover:Z = false

.field public static sIsSupportNeonCover:Z = false

.field public static sIsSupportNfcLedCover:Z = false

.field public static sIsSupportSecureCover:Z = false

.field public static sIsSystemFeatureQueried:Z = false

.field public static sSupportNfcLedCoverLevel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->getSystemProperties()V

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/Feature;->updateSystemFeature(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->updateDeviceSupportFeature()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;
    .locals 1

    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/sepunion/cover/Feature;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/Feature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    :cond_0
    sget-object p0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p0, " Current Feature state:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  sIsDeviceSupportVerifyCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, "  sIsDeviceSupportDetectCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportFlipCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, "  sIsSupportNfcLedCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, "  sIsSupportClearCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, "  sIsNfcAuthSystemFeatureEnabled="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, "  sIsSupportNeonCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sSupportNfcLedCoverLevel="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    const-string p0, "  sIsSupportGamePackCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportLEDBackCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportSecureCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportClearSideViewCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportMiniSviewWalletCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportClearCameraViewCover="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  "

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getSupportNfcLedCoverLevel()I
    .locals 0

    sget p0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    return p0
.end method

.method public final getSystemProperties()V
    .locals 0

    sget-object p0, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, "ro.hardware"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string/jumbo p0, "ro.build.characteristics"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public isNfcAuthEnabled()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    return p0
.end method

.method public isSupportClearCameraViewCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    return p0
.end method

.method public isSupportClearCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    return p0
.end method

.method public isSupportClearSideViewCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    return p0
.end method

.method public isSupportDetectCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    return p0
.end method

.method public isSupportFlipCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    return p0
.end method

.method public isSupportGamePackCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    return p0
.end method

.method public isSupportLEDBackCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    return p0
.end method

.method public isSupportMiniSviewWalletCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    return p0
.end method

.method public isSupportNeonCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    return p0
.end method

.method public isSupportNfcLedCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportSecureCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    return p0
.end method

.method public isSupportVerifyCover()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    return p0
.end method

.method public isTablet()Z
    .locals 1

    sget-object p0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "tablet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateDeviceSupportFeature()V
    .locals 1

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    if-nez p0, :cond_1

    const-string p0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string p0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    const-string p0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    sput-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    :cond_1
    return-void
.end method

.method public final updateSystemFeature(Landroid/content/Context;)V
    .locals 1

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.sec.feature.cover.flip"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    const-string p1, "com.sec.feature.cover.clearcover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    const-string p1, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    const-string p1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    const-string p1, "com.sec.feature.cover.gamepackcover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    const-string p1, "com.sec.feature.cover.ledbackcover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    const-string p1, "com.sec.feature.cover.neoncover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    const-string p1, "com.sec.feature.cover.securecover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    const-string p1, "com.sec.feature.cover.clearsideviewcover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    const-string p1, "com.sec.feature.cover.minisviewwalletcover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    const-string p1, "com.sec.feature.cover.clearcameraviewcover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    :cond_0
    return-void
.end method
