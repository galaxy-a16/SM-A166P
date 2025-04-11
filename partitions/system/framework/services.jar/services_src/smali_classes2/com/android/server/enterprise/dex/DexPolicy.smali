.class public Lcom/android/server/enterprise/dex/DexPolicy;
.super Lcom/samsung/android/knox/dex/IDexPolicy$Stub;
.source "DexPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static isBlockerRegistered:Z = false


# instance fields
.field public final blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field public mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final mContext:Landroid/content/Context;

.field public mContext_temp:Lcom/samsung/android/knox/ContextInfo;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

.field public restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/dex/DexPolicy;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext_temp(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/samsung/android/knox/ContextInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmContext_temp(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyEthernetOnly(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexitDexModeSetPackageState(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->exitDexModeSetPackageState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterDexBlocker(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->registerDexBlocker()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetisBlockerRegistered()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method


# virtual methods
.method public addPackageToDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    const-string v0, "addPackageToDisableList"

    const-string v1, "DexPolicyService"

    .line 806
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 809
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 810
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "addPackageToDisableList already blocked package"

    .line 811
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 816
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addPackageToDisableList : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 v2, 0x1

    .line 822
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 825
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 828
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v2

    return p0

    :catch_0
    move-exception p0

    .line 831
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addPackageToDisableList : failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public allowScreenTimeoutChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    .line 879
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 881
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "DEX_POLICY"

    const-string/jumbo v1, "screenTimeoutChangeAllowed"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 4

    .line 482
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getRestrictionPolicy()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "failed to set applyEthernetOnly"

    const-string v2, "DexPolicyService"

    if-nez v0, :cond_1

    .line 485
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyEthernetOnly - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 491
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->storeCurrentPolicy(Lcom/samsung/android/knox/ContextInfo;)V

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->storeNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)V

    .line 493
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 494
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 496
    :try_start_0
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 498
    invoke-static {v2, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/dex/DexPolicy;->setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 501
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    goto :goto_2

    .line 503
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 504
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    .line 505
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevCellDataEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 506
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p2, p1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 508
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevWifiEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 510
    :try_start_1
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    invoke-interface {p2, p1, v3}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 512
    invoke-static {v2, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevWifiTetheringEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 516
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p2, p1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 518
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevUsbTetheringEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 519
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p2, p1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 521
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevBtTetheringEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 522
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p2, p1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 524
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->restoreNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)V

    :goto_2
    return-void
.end method

.method public final disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 3

    .line 775
    :try_start_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 776
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageDisabled(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    const/4 p1, 0x1

    .line 778
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->updatePackageControlState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 781
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setControlStateMask : failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DexPolicyService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 3

    .line 788
    :try_start_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 789
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->isPackageDisabledInControlState(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    :cond_0
    const/4 p1, 0x0

    .line 792
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->updatePackageControlState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setControlStateMask : failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DexPolicyService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final enforceDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceDexPermission()V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    return-void
.end method

.method public enforceEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 360
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string v3, "ethernetOnlyEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    :cond_1
    :goto_0
    return v0
.end method

.method public final enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public enforceVirtualMacAddress(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    .line 906
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 908
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "DEX_POLICY"

    const-string/jumbo v1, "useDexStationMacAddress"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final exitDexModeSetPackageState()V
    .locals 9

    const-string v0, "adminUid"

    const-string v1, "exitDexModeSetPackageState"

    const-string v2, "DexPolicyService"

    .line 696
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v1, v5

    .line 700
    iget-object v5, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitDexModeSetPackageState : Admin list size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 705
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 706
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v6, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 711
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    .line 712
    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 713
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 714
    invoke-virtual {p0, v6, v8}, Lcom/android/server/enterprise/dex/DexPolicy;->enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 716
    :cond_1
    invoke-virtual {p0, v6, v5}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 720
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitDexModeSetPackageState : failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    throw p0
.end method

.method public final getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getControlState(Ljava/lang/String;I)I
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDexControlState(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    const-string v0, "DexPolicyService"

    const-string v1, "getPackagesFromDisableList"

    .line 866
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 870
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 871
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableListForDex(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 874
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getRestrictionPolicy()V
    .locals 1

    const-string/jumbo v0, "restriction_policy"

    .line 277
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    return-void
.end method

.method public getVirtualMacAddress()Ljava/lang/String;
    .locals 6

    const-string v0, "DexPolicyService"

    .line 933
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceDexPermission()V

    .line 934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string p0, ""

    :try_start_0
    const-string/jumbo v3, "network_management"

    .line 938
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 939
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    const-string v4, "eth0"

    .line 940
    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    .line 942
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object p0

    .line 943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVirtualMacAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 946
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVirtualMacAddress : failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 950
    throw p0
.end method

.method public isDexActivated()Z
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isDexDisabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 337
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string v2, "dexDisabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 340
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDexDisabled : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public isEthernetOnlyEnforced()Z
    .locals 3

    const/4 v0, 0x0

    .line 378
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string v2, "ethernetOnlyEnabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 381
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEthernetOnlyEnforced : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public final isPackageDisabledInControlState(ILjava/lang/String;)Z
    .locals 0

    .line 800
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getControlState(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPrevBtTetheringEnabled()Z
    .locals 3

    const/4 v0, 0x1

    .line 641
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "prevBtTethering"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 644
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrevBtTetheringEnabled : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public final isPrevCellDataEnabled()Z
    .locals 3

    const/4 v0, 0x1

    .line 565
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "prevCellularData"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 568
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrevCellDataEnabled : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public final isPrevUsbTetheringEnabled()Z
    .locals 3

    const/4 v0, 0x1

    .line 603
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "prevUsbTethering"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 606
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrevUsbTetheringEnabled : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public final isPrevWifiEnabled()Z
    .locals 3

    const/4 v0, 0x1

    .line 584
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "prevWifi"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 587
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrevWifiEnabled : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public final isPrevWifiTetheringEnabled()Z
    .locals 3

    const/4 v0, 0x1

    .line 622
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "prevWifiTethering"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 625
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrevWifiTetheringEnabled : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public isScreenTimeoutChangeAllowed()Z
    .locals 3

    const/4 v0, 0x1

    .line 889
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "screenTimeoutChangeAllowed"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 892
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScreenTimeoutChangeAllowed : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public isVirtualMacAddressEnforced()Z
    .locals 3

    const/4 v0, 0x0

    .line 916
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "useDexStationMacAddress"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 919
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVirtualMacAddressEnforced : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
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

    .line 267
    sget-boolean p1, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->unRegisterDexBlocker()V

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->isEthernetOnlyApplied(Lcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    :cond_1
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final registerDexBlocker()V
    .locals 5

    const-string v0, "DexPolicyService"

    .line 305
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 307
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 308
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 310
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v3, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    const/4 p0, 0x1

    .line 311
    sput-boolean p0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    const-string/jumbo p0, "registerDexBlocker was registered"

    .line 312
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "registerDexBlocker was failed"

    .line 314
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public removePackageFromDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v0, "removePackageFromDisableList"

    const-string v1, "DexPolicyService"

    .line 839
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 843
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 845
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "removePackageFromDisableList not find blocked package name"

    .line 846
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 v2, 0x1

    .line 850
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 852
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    .line 854
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 855
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    xor-int/lit8 p0, v0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 858
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removePackageFromDisableList : failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public final restoreNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 8

    const-string v0, "DEX_POLICY"

    const-string v1, "DexPolicyService"

    .line 456
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 458
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    .line 462
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v7, "prevDataStatus"

    invoke-virtual {v5, v6, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 464
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v6, "prevWifiStatus"

    invoke-virtual {p0, p1, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move v5, v4

    .line 467
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "restoreNetworkStatus() failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    const/4 v0, 0x1

    if-eqz v5, :cond_0

    .line 471
    :try_start_2
    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 472
    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 474
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreNetworkStatus : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 477
    :goto_4
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    throw v0

    .line 477
    :cond_1
    :goto_5
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setDexDisabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 290
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "DEX_POLICY"

    const-string v2, "dexDisabled"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 294
    sget-boolean v0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->registerDexBlocker()V

    .line 297
    :cond_0
    sget-boolean p2, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->unRegisterDexBlocker()V

    :cond_1
    return p1
.end method

.method public final setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 2

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEthernetOnlyApplied - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "DEX_POLICY"

    const-string v1, "ethernetOnlyApplied"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public final showEthernetOnlyNotification(Z)V
    .locals 8

    .line 529
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const v1, 0x104042e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string v2, "DexPolicyService"

    if-nez v1, :cond_0

    const-string p0, "Failed to get NotificationManager"

    .line 534
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 538
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/16 v5, 0x11cd

    if-eqz p1, :cond_1

    .line 541
    :try_start_0
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string v6, "MDM_DEXPOLICY"

    invoke-direct {p1, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    .line 543
    invoke-virtual {p1, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const p0, 0x10806ce

    .line 544
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const-string p0, "Dex Ethernet only mode"

    .line 546
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 547
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 548
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 p0, 0x2

    .line 549
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 p0, 0x1

    .line 550
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 552
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "showEthernetOnlyNotification was failed"

    .line 557
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final storeCurrentPolicy(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 11

    const-string v0, "DexPolicyService"

    const-string v1, "RESTRICTION"

    const/4 v2, 0x1

    .line 399
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "cellularDataEnabled"

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 402
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "WIFI"

    const-string v7, "allowWifi"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 404
    :try_start_2
    iget-object v5, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v7, "usbTetheringEnabled"

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 407
    :try_start_3
    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "wifiTetheringEnabled"

    invoke-virtual {v6, v7, v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 410
    :try_start_4
    iget-object v7, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v9, "bluetoothTetheringEnabled"

    invoke-virtual {v7, v8, v1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "store current status - cell - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  wifi - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  usbTether - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  WifiTether - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  BtTether - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_2

    :catch_1
    move-exception v1

    move v6, v2

    goto :goto_1

    :catch_2
    move-exception v1

    move v5, v2

    goto :goto_0

    :catch_3
    move-exception v1

    move v4, v2

    move v5, v4

    :goto_0
    move v6, v5

    :goto_1
    move v2, v3

    move v3, v6

    goto :goto_2

    :catch_4
    move-exception v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 418
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "storeCurrentPolicy() failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v3

    move v3, v2

    move v2, v10

    .line 420
    :goto_3
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v7, "prevCellularData"

    const-string v8, "DEX_POLICY"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 423
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v3, "prevWifi"

    invoke-virtual {v0, v1, v8, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 426
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v3, "prevUsbTethering"

    invoke-virtual {v0, v1, v8, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 429
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v3, "prevWifiTethering"

    invoke-virtual {v0, v1, v8, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 432
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v0, "prevBtTethering"

    invoke-virtual {p0, p1, v8, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public final storeNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 6

    .line 439
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 441
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 442
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    .line 443
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 445
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v4, "prevDataStatus"

    const-string v5, "DEX_POLICY"

    invoke-virtual {v2, v3, v5, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 449
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v0, "prevWifiStatus"

    invoke-virtual {p0, p1, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public systemReady()V
    .locals 0

    .line 0
    return-void
.end method

.method public final unRegisterDexBlocker()V
    .locals 5

    const-string v0, "DexPolicyService"

    .line 320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 322
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 325
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v3, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    const/4 p0, 0x0

    .line 326
    sput-boolean p0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    const-string/jumbo p0, "registerDexBlocker was unregistered"

    .line 327
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "unRegisterDexBlocker was failed"

    .line 329
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final updatePackageControlState(Ljava/lang/String;IZ)V
    .locals 1

    .line 760
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updatePackageControlStateForDex(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public final writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 7

    const-string v0, "adminUid"

    const-string v1, "DEX_POLICY"

    const-string v2, "DexPolicyService"

    .line 728
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v3, 0x0

    .line 731
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 732
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 735
    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object p2

    const-string v6, "dexApplicationDisableList"

    .line 736
    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 739
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p2, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    if-lez p2, :cond_0

    .line 742
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .line 743
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "writePackageList(dexApplicationDisableList) : update : ret : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 748
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "writePackageList(dexApplicationDisableList) : insert : ret : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "writePackageList : failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v3
.end method
