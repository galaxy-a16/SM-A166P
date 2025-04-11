.class public Lcom/android/server/GrdmIcccManagerService;
.super Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter$Stub;
.source "GrdmIcccManagerService.java"


# static fields
.field public static TAG:Ljava/lang/String; = "GrdmIcccManagerService"

.field public static mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static native grdm_iccc_attestation_platform([B)[B
.end method

.method public static native grdm_iccc_load()I
.end method

.method public static native grdm_iccc_unload()I
.end method


# virtual methods
.method public final getCallerPackageName(I)Ljava/lang/String;
    .locals 1

    .line 45
    sget-object p0, Lcom/android/server/GrdmIcccManagerService;->TAG:Ljava/lang/String;

    const-string v0, "getCallerPackageName"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_0
    sget-object p0, Lcom/android/server/GrdmIcccManagerService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public declared-synchronized grdmSetAttestationData([B)[B
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    sget-object v0, Lcom/android/server/GrdmIcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "grdmSetAttestationData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/GrdmIcccManagerService;->getCallerPackageName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.attestation"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/android/server/GrdmIcccManagerService;->grdm_iccc_attestation_platform([B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 84
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
