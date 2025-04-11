.class public Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;
.super Ljava/lang/Object;
.source "SdpServiceKeeper.java"


# static fields
.field public static mWhitelist:Ljava/util/List;


# instance fields
.field public mAM:Landroid/app/ActivityManager;

.field public mContext:Landroid/content/Context;

.field public mPM:Landroid/content/pm/IPackageManager;

.field public mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

.field public final mSdpPolicyDbLock:Ljava/lang/Object;

.field public mSdpPolicyMap:Ljava/util/Map;

.field public final mSdpPolicyMapLock:Ljava/lang/Object;

.field public mUM:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mUM:Landroid/os/UserManager;

    .line 70
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mAM:Landroid/app/ActivityManager;

    .line 71
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mPM:Landroid/content/pm/IPackageManager;

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    .line 82
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mContext:Landroid/content/Context;

    .line 111
    new-instance v2, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-direct {v2, v1, v0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;-><init>(Landroid/content/Context;Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase-IA;)V

    iput-object v2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    .line 112
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mUM:Landroid/os/UserManager;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mAM:Landroid/app/ActivityManager;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->initWhitelist()V

    return-void
.end method

.method public static safe(Ljava/util/List;)Ljava/util/List;
    .locals 0

    if-nez p0, :cond_0

    .line 197
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->policyExistsLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "SdpServiceKeeper"

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addPolicy :: error, policy["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] already exists!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit v0

    const/4 p0, -0x4

    return p0

    .line 148
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 153
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, -0x7

    return p0

    .line 156
    :cond_1
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getDefaultEngineOwner(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpDomain;

    move-result-object p1

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 160
    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    new-instance p2, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    invoke-direct {p2, p4, p1, p5}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;-><init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;Ljava/util/List;)V

    .line 168
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 169
    :try_start_1
    iget-object p3, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {p3, p4, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->-$$Nest$mputPolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result p3

    .line 170
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_3

    .line 173
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 174
    :try_start_2
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return p3

    :catchall_1
    move-exception p0

    .line 170
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_4
    const/16 p0, -0x63

    return p0

    :catchall_2
    move-exception p0

    .line 148
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public addPrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I
    .locals 0

    .line 252
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 255
    :try_start_0
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 257
    invoke-virtual {p2, p5}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, -0x63

    .line 259
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_2

    .line 261
    invoke-virtual {p0, p4, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result p3

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 259
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const/4 p3, -0x7

    :cond_2
    :goto_1
    return p3
.end method

.method public final checkPermission(Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    .line 367
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->enforceCallingPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final enforceCallingPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    .line 372
    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getDefaultEngineOwner(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .locals 1

    .line 123
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    const-string/jumbo v0, "system_server"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mPM:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 320
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mPM:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public final getPackageName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    .line 304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 306
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mContext:Landroid/content/Context;

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 307
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "SdpServiceKeeper"

    .line 309
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPackageName exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    throw p0
.end method

.method public final getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final initWhitelist()V
    .locals 1

    .line 360
    sget-object p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string v0, "com.samsung.android.email.provider"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string v0, "com.samsung.android.spay"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 2

    .line 468
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_4

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 472
    :cond_0
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    return p3

    .line 477
    :cond_1
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 479
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 480
    :try_start_0
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p0

    .line 481
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    const-string p0, "SdpServiceKeeper"

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can\'t find policy for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 489
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    .line 490
    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_3

    return p2

    :catch_0
    move-exception p0

    .line 493
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 481
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return p3

    :cond_4
    :goto_1
    return p2
.end method

.method public isLicensed(Landroid/content/Context;II)Z
    .locals 3

    .line 438
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 443
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, p2, p3, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Check permission { Package : %s, PID : %d, UID : %d, UserId : %d }"

    .line 441
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "SdpServiceKeeper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isWhitelisted(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const-string p0, "Identified as whitelisted"

    .line 446
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 450
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "Identified as system app"

    .line 451
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 455
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->checkPermission(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p1, "License activation required"

    .line 457
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method public isPrivileged(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 0

    .line 507
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 509
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return p3

    .line 514
    :cond_0
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 516
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p2

    .line 517
    :try_start_0
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p0

    if-nez p0, :cond_1

    .line 519
    monitor-exit p2

    return p3

    .line 520
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->getPrivilegedApps()Ljava/util/List;

    move-result-object p0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    .line 525
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 526
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 527
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 533
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 520
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return p3
.end method

.method public final isSystemApp(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 330
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mPM:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 335
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-string v1, "android"

    invoke-interface {p0, v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 338
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v0

    aget-object p1, p1, v0

    .line 340
    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 343
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v0
.end method

.method public isSystemComponent(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 1

    .line 414
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 417
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

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

.method public final isSystemServer(Landroid/content/Context;II)Z
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->safe(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 184
    iget p3, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne p3, p2, :cond_0

    iget p3, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v0, 0x3e8

    if-ne p3, v0, :cond_0

    .line 185
    iget-object p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string/jumbo p3, "system"

    .line 186
    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWhitelisted(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 351
    sget-object p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public loadPolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {v1, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->-$$Nest$mgetPolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object v1

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const-string v0, "SdpServiceKeeper"

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPolicy :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_1
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p0

    .line 210
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final policyExistsLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 0

    .line 226
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 227
    :try_start_0
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {p2, p4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->-$$Nest$mremovePolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 228
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p2

    .line 231
    :try_start_1
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    monitor-exit p2

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 228
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public removePrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I
    .locals 0

    .line 271
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 274
    :try_start_0
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {p2, p5}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->removePrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, -0x63

    .line 278
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_2

    .line 280
    invoke-virtual {p0, p4, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result p3

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 278
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const/4 p3, -0x7

    :cond_2
    :goto_1
    return p3
.end method

.method public final updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {v1, p1, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->-$$Nest$mputPolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result v1

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_1
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return v1

    :catchall_1
    move-exception p0

    .line 240
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
