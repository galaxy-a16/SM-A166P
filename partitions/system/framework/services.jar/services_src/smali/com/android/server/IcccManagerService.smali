.class public Lcom/android/server/IcccManagerService;
.super Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;
.source "IcccManagerService.java"


# static fields
.field public static TAG:Ljava/lang/String; = "IcccManagerService"

.field public static mContext:Landroid/content/Context;


# instance fields
.field public icccBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$mget_iccc_response_data(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/IcccManagerService;->get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;-><init>()V

    .line 78
    new-instance v0, Lcom/android/server/IcccManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    iput-object v0, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    sget-object v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Start IcccManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sput-object p1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 71
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.BCS_REQUEST"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 4

    .line 142
    sget-object v0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "IcccManagerService"

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    sget-object p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v0, "IcccManagerService() - Valid Caller"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] in ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] service"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 145
    sget-object p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "IcccManagerService() - Invalid Caller"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    throw v0
.end method

.method public static native get_Trusted_Boot_Data()I
.end method

.method public static native iccc_attestation_platform([B)[B
.end method

.method public static native iccc_device_info([B)[B
.end method

.method public static native iccc_device_status(I[B)[B
.end method

.method public static native iccc_load()I
.end method

.method public static native iccc_readData_platform(I)I
.end method

.method public static native iccc_saveData_platform(II)I
.end method

.method public static native iccc_unload()I
.end method


# virtual methods
.method public final enforcePermission()Z
    .locals 1

    .line 133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized getDeviceInfo([B)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "getDeviceInfo"

    .line 224
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 226
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_device_info([B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDeviceStatus(I[B)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "getDeviceStatus"

    .line 204
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_load()I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object p1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string p2, "iccc_load failure"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_device_status(I[B)[B

    move-result-object p1

    .line 213
    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_unload()I

    move-result p2

    if-eqz p2, :cond_1

    .line 214
    sget-object p2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v0, "iccc_unload failure"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSecureData(I)I
    .locals 0

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTrustedBootData()I
    .locals 1

    monitor-enter p0

    .line 186
    :try_start_0
    invoke-static {}, Lcom/android/server/IcccManagerService;->get_Trusted_Boot_Data()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    const v0, -0xffff4

    .line 155
    :try_start_0
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, -0xffff6

    .line 157
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAttestationData([B)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "setAttestationData"

    .line 194
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 196
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_attestation_platform([B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecureData(II)I
    .locals 1

    monitor-enter p0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    move-result p1

    goto :goto_0

    .line 177
    :cond_0
    sget-object p1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string p2, "Not System UID. Only system UID caller can change status"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    .line 180
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
