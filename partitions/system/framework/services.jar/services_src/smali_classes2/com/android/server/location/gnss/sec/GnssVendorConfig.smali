.class public Lcom/android/server/location/gnss/sec/GnssVendorConfig;
.super Ljava/lang/Object;
.source "GnssVendorConfig.java"


# static fields
.field public static mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;
    .locals 2

    const-class v0, Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-direct {v1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;-><init>()V

    sput-object v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 34
    :cond_0
    sget-object v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public isBroadcomGnss()Z
    .locals 1

    .line 58
    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "vendor/etc/gnss/gps.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public isIzatServiceEnabled()Z
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isQcomHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isNonQcomGnss()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLsiEurekaGnss()Z
    .locals 1

    const-string/jumbo p0, "ro.product.model"

    const-string v0, "Unknown"

    .line 76
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SM-S921B"

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SM-S921N"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SM-S926B"

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SM-S926N"

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLsiGnss()Z
    .locals 1

    .line 54
    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "vendor/etc/gnss/gps.cfg"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public isMtkGnss()Z
    .locals 1

    .line 50
    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "vendor/etc/gnss/mnl.prop"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public isNonQcomGnss()Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isMtkGnss()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isQcomHardware()Z
    .locals 1

    const-string/jumbo p0, "qcom"

    .line 42
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUnisocGnss()Z
    .locals 1

    const-string/jumbo p0, "ro.hardware.chipname"

    const-string v0, "Unknown"

    .line 62
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "unisoc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
