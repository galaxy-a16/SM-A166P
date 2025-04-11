.class public Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;
.super Ljava/lang/Object;
.source "SemDeviceInfoTestModeUtils.java"


# static fields
.field public static final SHIPPED:Z

.field public static final TAG:Ljava/lang/String; = "SemDeviceInfoTestModeUtils"

.field public static sCurrentTestMode:I


# instance fields
.field public mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

.field public mContext:Landroid/content/Context;

.field public mObserver:Landroid/database/ContentObserver;

.field public mTestModeChangeHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestModeChangeHandler(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsCurrentTestMode()I
    .locals 1

    sget v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smupdateTestModeFromSetting(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->updateTestModeFromSetting(Landroid/content/Context;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->TAG:Ljava/lang/String;

    const-string p1, "This version has been shipped!! Then device info test mode is not available"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    new-instance p1, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;-><init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    const-string p1, "deviceinfo_test_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->updateTestModeFromSetting(Landroid/content/Context;)V

    return-void
.end method

.method public static updateTestModeFromSetting(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "deviceinfo_test_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    return-void
.end method
