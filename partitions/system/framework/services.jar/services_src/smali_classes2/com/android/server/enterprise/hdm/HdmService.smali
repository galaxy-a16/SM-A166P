.class public Lcom/android/server/enterprise/hdm/HdmService;
.super Lcom/samsung/android/knox/hdm/IHdmManager$Stub;
.source "HdmService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mHashImei:[B

.field public mImei0:Ljava/lang/String;

.field public mMacAddress:Ljava/lang/String;

.field public mSerialNumber:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDM - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/enterprise/hdm/HdmService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final enforceHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_HDM"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 297
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_HDM"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getCallerPackageName(I)Ljava/lang/String;
    .locals 2

    .line 744
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v1, "getCallerPackageName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 748
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

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 283
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public declared-synchronized getHdmId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 453
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v1, "getHdmId() on HdmService.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/16 p1, 0x5f

    .line 457
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, "parameter check failed"

    .line 458
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-object p2

    .line 463
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setImeis()V

    .line 464
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setMacAddress()V

    .line 466
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 467
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    goto :goto_0

    .line 469
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 470
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_4

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 478
    :cond_3
    throw p2

    :cond_4
    :goto_1
    const-string p1, "getHdmId Fail to get device ID"

    .line 474
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 553
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v1, "getHdmPolicy() on HdmService.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 555
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/hdm/HdmService;->getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/16 v0, 0x5f

    const/4 v1, 0x0

    .line 567
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 568
    sget-object p1, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "parameter check failed for requestId"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-object v1

    :cond_0
    const/16 p1, 0x28

    .line 572
    :try_start_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 573
    sget-object p1, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "parameter check failed for serviceName"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    monitor-exit p0

    return-object v1

    .line 577
    :cond_1
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 617
    :try_start_3
    sget-object p2, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPolicy failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 620
    monitor-exit p0

    return-object v1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final isDeviceRootKeyValid(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Z
    .locals 1

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 104
    sget-object p0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string p1, "DRK failed in isAliveDeviceRootKeyService()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p0, 0x1

    .line 108
    invoke-virtual {p1, p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 109
    sget-object p0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string p1, "DRK failed in isExistDeviceRootKey()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    return p0
.end method

.method public declared-synchronized isNFCBlockedByHDM(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    monitor-enter p0

    .line 688
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v1, "isNFCBlockedByHDM() on HdmService.java: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 690
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HDMFW"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/hdm/HdmService;->getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isSwBlockEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    monitor-enter p0

    .line 657
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v1, "isSwBlockEnabled() on HdmService.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p1, 0x0

    .line 659
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final setHashImeiAndSerial()V
    .locals 5

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 141
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/hdm/HdmSakManager;->isSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    sget-object v2, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v3, "calculate hashed info"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/hdm/HdmSakManager;->getHashedImei(Landroid/content/Context;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 144
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmSakManager;->getHashedUniqueNumber()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    goto :goto_1

    .line 146
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v3, "get hashed info from DRK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v3, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v4, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/hdm/HdmService;->isDeviceRootKeyValid(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xc

    .line 150
    invoke-virtual {v3, v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "setHashImeiAndSerial(): DRK is not valid"

    .line 152
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->getImei()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 157
    invoke-virtual {v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->getSerial()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    const-string/jumbo p0, "mSerialNumber calculated"

    .line 158
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public declared-synchronized setHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 345
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setHdmPolicy() on HdmService.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/16 p1, 0x2000

    .line 349
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, "parameter check failed"

    .line 350
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-object p2

    .line 355
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setNwdInfo()Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "setNwdInfo failed"

    .line 356
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHdmTaCmd(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 1

    monitor-enter p0

    .line 635
    :try_start_0
    sget-object p2, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setHdmTaCmd() on HdmService.java"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p1, 0x0

    .line 638
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setImeis()V
    .locals 5

    .line 120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 121
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPrimaryImei()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPrimaryImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    sget-object v2, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final setMacAddress()V
    .locals 4

    .line 169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 170
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sem_wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setMacAddress is failed on SemWifiManager"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final setNwdInfo()Z
    .locals 3

    .line 186
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setImeis()V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setHashImeiAndSerial()V

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setMacAddress()V

    .line 196
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 201
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized setSwBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    monitor-enter p0

    .line 664
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSwBlock() on HdmService.java: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p1, 0x0

    .line 666
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized syncSwBlockFromBoot()I
    .locals 4

    monitor-enter p0

    .line 671
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncSwBlockFromBoot() on HdmService.java: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid caller uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    .line 677
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/hdm/HdmService;->getCallerPackageName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.hdmapp"

    .line 678
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    monitor-exit p0

    const/4 p0, -0x2

    return p0

    .line 683
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HDMFW"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/hdm/HdmService;->getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .locals 0

    .line 0
    return-void
.end method

.method public final validateParameter(Ljava/lang/String;I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
