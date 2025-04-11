.class public abstract Lcom/android/server/display/DisplayControl;
.super Ljava/lang/Object;
.source "DisplayControl.java"


# direct methods
.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 1

    const-string/jumbo v0, "name must not be null"

    .line 51
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, p1, v0}, Lcom/android/server/display/DisplayControl;->nativeCreateDisplay(Ljava/lang/String;ZF)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static createDisplay(Ljava/lang/String;ZF)Landroid/os/IBinder;
    .locals 1

    const-string/jumbo v0, "name must not be null"

    .line 69
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayControl;->nativeCreateDisplay(Ljava/lang/String;ZF)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/android/server/display/DisplayControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    return-void

    .line 80
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "displayToken must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getHdrOutputConversionSupport()Z
    .locals 1

    .line 144
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetHdrOutputConversionSupport()Z

    move-result v0

    return v0
.end method

.method public static getHdrOutputTypesWithLatency()[I
    .locals 1

    .line 136
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetHdrOutputTypesWithLatency()[I

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplayIds()[J
    .locals 1

    .line 98
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .locals 0

    .line 105
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayControl;->nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedHdrOutputTypes()[I
    .locals 1

    .line 128
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetSupportedHdrOutputTypes()[I

    move-result-object v0

    return-object v0
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;ZF)Landroid/os/IBinder;
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeGetHdrOutputConversionSupport()Z
.end method

.method private static native nativeGetHdrOutputTypesWithLatency()[I
.end method

.method private static native nativeGetPhysicalDisplayIds()[J
.end method

.method private static native nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetSupportedHdrOutputTypes()[I
.end method

.method private static native nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V
.end method

.method private static native nativeSetHdrConversionMode(II[II)I
.end method

.method public static overrideHdrTypes(Landroid/os/IBinder;[I)V
    .locals 0

    .line 91
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayControl;->nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V

    return-void
.end method

.method public static setHdrConversionMode(II[I)I
    .locals 1

    if-eqz p2, :cond_0

    .line 118
    array-length v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/display/DisplayControl;->nativeSetHdrConversionMode(II[II)I

    move-result p0

    return p0
.end method
