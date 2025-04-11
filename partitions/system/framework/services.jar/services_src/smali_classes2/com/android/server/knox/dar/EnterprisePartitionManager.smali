.class public Lcom/android/server/knox/dar/EnterprisePartitionManager;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final isKnoxBuildEnabled:Z

.field public static mInstallLock:Ljava/lang/Object;

.field public static final mKnoxInfo:Landroid/os/Bundle;

.field public static final mKnoxVersion:Ljava/lang/String;

.field public static mPackageTasker:Lcom/android/server/pm/Installer;

.field public static sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

.field public mSessionIdDstPath:Ljava/util/Hashtable;

.field public notAppliedPaths:Ljava/util/List;

.field public storage:Landroid/os/storage/StorageManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 98
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "version"

    .line 99
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "v00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    .line 132
    sput-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 142
    new-instance v0, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;-><init>(Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    .line 35
    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    .line 363
    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    .line 147
    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    .line 148
    invoke-virtual {p1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    .line 150
    sget-boolean p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz p1, :cond_0

    .line 151
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    goto :goto_0

    :cond_0
    const-string p0, "Knox is not supported on this device.."

    .line 153
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;
    .locals 2

    const-class v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 138
    :cond_0
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static setInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 1

    .line 118
    sget-boolean v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_0

    .line 119
    sput-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 120
    sput-object p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 122
    sput-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelCopyChunks(J)V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 549
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 553
    :cond_0
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    :try_start_0
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/server/pm/Installer;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 559
    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 625
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;II)I
    .locals 7

    .line 641
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_0

    const/16 p0, -0x13

    return p0

    :cond_0
    const/4 v0, -0x2

    if-eqz p1, :cond_5

    .line 648
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_5

    .line 652
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 655
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    .line 659
    :cond_3
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, -0x1

    .line 661
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result p1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 670
    :catch_0
    :cond_4
    :goto_0
    :try_start_1
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_2
    return v0
.end method

.method public copyChunks(Ljava/lang/String;ILjava/lang/String;IJIJZ)I
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move-object/from16 v2, p3

    move/from16 v5, p4

    .line 570
    sget-object v4, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v4, :cond_0

    const/16 v0, -0x13

    return v0

    :cond_0
    const/4 v4, -0x2

    if-eqz v1, :cond_a

    .line 576
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_5

    :cond_1
    if-eqz v2, :cond_a

    .line 580
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_5

    .line 583
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0, v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz v3, :cond_4

    const-string v4, "/storage/emulated"

    .line 587
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "/storage"

    .line 588
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mnt/user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "EnterprisePartitionManager"

    .line 589
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "srcRealPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v4, v1

    if-eqz v5, :cond_5

    const-string v1, "/storage/emulated"

    .line 592
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "/storage"

    .line 593
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mnt/user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterprisePartitionManager"

    .line 594
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dstRealPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v1

    goto :goto_0

    :cond_5
    move-object v6, v2

    .line 596
    :goto_0
    iget-object v1, v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 597
    iget-object v1, v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p10, :cond_7

    const/16 v1, 0x24

    goto :goto_1

    :cond_7
    const/16 v1, 0x20

    :goto_1
    move v7, v1

    .line 602
    sget-object v13, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v13

    .line 604
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move/from16 v2, p7

    int-to-long v9, v2

    move-object v2, v4

    move/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p4

    move v6, v7

    move-wide/from16 v7, p5

    move-wide/from16 v11, p8

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/Installer;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v1

    const/16 v2, 0xc9

    const/4 v3, 0x0

    if-ne v1, v2, :cond_8

    :goto_2
    move v1, v3

    goto :goto_3

    :cond_8
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9

    .line 610
    iget-object v0, v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    const/4 v1, -0x1

    .line 618
    :cond_9
    :goto_3
    :try_start_1
    monitor-exit v13

    return v1

    :goto_4
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_5
    return v4
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 1

    .line 455
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 456
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 458
    :cond_0
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 460
    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 464
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return p2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return p2
.end method

.method public getDualDARLockstate()Z
    .locals 1

    const-string p0, "EnterprisePartitionManager"

    const-string v0, "getDualDARLockstate"

    .line 403
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 406
    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->getDualDARLockstate()Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 408
    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 410
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 10

    .line 498
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 501
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 502
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "/storage/emulated"

    .line 509
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/storage"

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EnterprisePartitionManager"

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileInfo - realath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    sget-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 517
    :try_start_0
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v1

    .line 518
    aget-wide v2, v1, v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    const/4 p1, -0x1

    .line 522
    :goto_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    const/4 p2, 0x1

    .line 528
    aget-wide v2, v1, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v4, 0x2

    .line 530
    aget-wide v4, v1, v4

    const/4 v6, 0x3

    .line 531
    aget-wide v6, v1, v6

    const-wide/16 v8, 0x1

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    move v0, p2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_3
    :goto_1
    const-string/jumbo p2, "result"

    .line 534
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "last_modified_date"

    .line 535
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "file_size"

    .line 536
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "is_dir"

    .line 537
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    .line 522
    :goto_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_3
    const/4 p1, -0x2

    const-string/jumbo p2, "result"

    .line 504
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4

    .line 476
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 479
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 482
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 484
    :try_start_0
    sget-object v3, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v3, p1, v0, v1, p0}, Lcom/android/server/pm/Installer;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 488
    :goto_0
    :try_start_1
    monitor-exit v2

    if-eqz p1, :cond_1

    move-object p2, p0

    :cond_1
    return-object p2

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-object p2
.end method

.method public hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5

    const-string v0, "EnterprisePartitionManager"

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasDualDARPolicyRecursively(path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    goto :goto_0

    .line 377
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    :goto_0
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_1
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    iget-object v2, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/Installer;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :try_start_2
    iget-object v1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "EnterprisePartitionManager"

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policy not applied paths : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    :cond_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 388
    iget-object v1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 389
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "EnterprisePartitionManager"

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policy not applied paths : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 394
    :cond_2
    throw p1

    .line 388
    :catch_1
    iget-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 389
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "EnterprisePartitionManager"

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy not applied paths : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 392
    :cond_3
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception p0

    .line 395
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 3

    .line 428
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "/storage/emulated"

    .line 432
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/storage"

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p0, "EnterprisePartitionManager"

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileInfo - realath : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 438
    :try_start_0
    sget-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object p1

    .line 439
    aget-wide p1, p1, v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 443
    :catch_0
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return v0
.end method

.method public final isUserUnlocked(I)Z
    .locals 6

    const-string v0, "EnterprisePartitionManager"

    .line 718
    iget-object v1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 720
    :try_start_0
    iget-object v4, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 721
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not unlocked"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 725
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check user state... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return v3

    :catchall_1
    move-exception p1

    .line 727
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderRestoreCallingIdentity(J)V

    .line 728
    throw p1
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6

    const/16 v5, 0x24

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 631
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->move(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;II)I
    .locals 6

    .line 681
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_0

    const/16 p0, -0x13

    return p0

    :cond_0
    or-int/lit8 v5, p5, 0x4

    const/4 p5, -0x2

    if-eqz p1, :cond_5

    .line 690
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_5

    .line 694
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 697
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    .line 701
    :cond_3
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 p5, -0x1

    .line 703
    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result p1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    move p5, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 712
    :catch_0
    :cond_4
    :goto_0
    :try_start_1
    monitor-exit p0

    return p5

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_2
    return p5
.end method

.method public setDualDARPolicy(II)Z
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {v2, p1, p2}, Landroid/os/storage/StorageManager;->setDualDARPolicy(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderRestoreCallingIdentity(J)V

    return p1

    :cond_0
    :try_start_1
    const-string p1, "EnterprisePartitionManager"

    const-string p2, "StorageManager instance is NULL"

    .line 309
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderRestoreCallingIdentity(J)V

    .line 312
    throw p1
.end method

.method public setDualDARPolicyDir(IILjava/lang/String;)Z
    .locals 2

    const-string p0, "EnterprisePartitionManager"

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDualDARPolicyDir(user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 325
    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 327
    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 329
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDualDARPolicyDirRecursively(IILjava/lang/String;)Z
    .locals 2

    const-string p0, "EnterprisePartitionManager"

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDualDARPolicyDirRecursively(user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 340
    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 342
    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 344
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEviction(IZ)Z
    .locals 2

    const-string p0, "EnterprisePartitionManager"

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEviction(user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evict:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 294
    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Installer;->setEviction(IZ)Z

    move-result p1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 296
    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 298
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSdpPolicyToPath(ILjava/lang/String;)Z
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->setSdpPolicyToPath(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "EnterprisePartitionManager"

    const-string p1, "StorageManager instance is NULL"

    .line 282
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setTestInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 0

    .line 128
    sput-object p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 129
    sput-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    return-void
.end method
