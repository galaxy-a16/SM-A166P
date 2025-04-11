.class public Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;
.super Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;
.source "OmcPermissionPolicy.java"


# direct methods
.method public static synthetic $r8$lambda$jwi3ICYSb6ljcXfzTbRPCiaElaE(I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 479
    invoke-direct {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;
    .locals 0

    .line 660
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addAllowlistedRestrictedPermissionProxy(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    const-string/jumbo p0, "permissionmgr"

    .line 484
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 483
    invoke-static {p0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object p0

    .line 486
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/permission/IPermissionManager;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 489
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 785
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getInstalledPackagesProxy(II)Ljava/util/List;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 608
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0x2800b000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 611
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OmcPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getPackageInfoProxy(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 583
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 818
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 820
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission not found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OmcPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getPermissionInfoProxy(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 1

    .line 496
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 498
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission not found: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OmcPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 597
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemPropertyProxy(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 591
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 809
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    .line 619
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to grant for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OmcPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 632
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    const-string v3, "OmcPermissionPolicy"

    if-nez v1, :cond_0

    const-string/jumbo v0, "pkg is null"

    .line 634
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 637
    :cond_0
    iget-object v4, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 638
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 639
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .line 645
    :cond_1
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_2

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 651
    :cond_2
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 652
    array-length v5, v4

    const/4 v10, 0x0

    move v6, v10

    :goto_0
    if-ge v6, v5, :cond_4

    .line 654
    aget-object v7, v4, v6

    invoke-static {v3, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    .line 656
    aput-object v7, v4, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 659
    :cond_4
    new-instance v3, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, [Ljava/lang/String;

    .line 662
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 663
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p3, :cond_5

    const/16 v4, 0x30

    goto :goto_1

    :cond_5
    const/16 v4, 0x20

    .line 671
    :goto_1
    iget-object v5, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    const-class v6, Landroid/permission/PermissionManager;

    .line 672
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/permission/PermissionManager;

    invoke-virtual {v5}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v5

    .line 673
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v10

    :goto_2
    if-ge v7, v6, :cond_7

    .line 676
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionManager$SplitPermissionInfo;

    if-eqz v3, :cond_6

    .line 678
    iget v14, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 679
    invoke-virtual {v13}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 680
    invoke-virtual {v13}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 681
    invoke-virtual {v13}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 685
    :cond_7
    array-length v13, v11

    .line 690
    new-array v2, v13, [Ljava/lang/String;

    move v3, v10

    move v5, v3

    move v6, v5

    :goto_3
    if-ge v3, v13, :cond_9

    .line 694
    aget-object v7, v11, v3

    .line 695
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 696
    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v14, v13, -0x1

    sub-int/2addr v14, v5

    .line 699
    aput-object v7, v2, v14

    add-int/lit8 v5, v5, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    move v14, v10

    :goto_5
    if-ge v14, v13, :cond_13

    .line 707
    aget-object v15, v11, v14

    .line 709
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 710
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v15, v2, v8}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v7

    if-eqz p3, :cond_a

    and-int/lit8 v2, v7, 0x10

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    move/from16 v16, v2

    goto :goto_6

    :cond_a
    move/from16 v16, v10

    .line 724
    :goto_6
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->isFixedOrUserSet(I)Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez p4, :cond_c

    if-eqz v16, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v17, v4

    move/from16 v18, v7

    goto :goto_9

    :cond_c
    :goto_7
    and-int/lit8 v2, v7, 0x4

    if-eqz v2, :cond_d

    goto/16 :goto_a

    :cond_d
    and-int/lit16 v2, v7, 0x3800

    or-int v17, v4, v2

    if-eqz p5, :cond_e

    .line 740
    invoke-virtual {v0, v15}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->isPermissionRestricted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 741
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x1000

    const/16 v6, 0x1000

    move-object v2, v9

    move-object v3, v15

    move/from16 v18, v7

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_8

    :cond_e
    move/from16 v18, v7

    :goto_8
    if-eqz v16, :cond_f

    .line 749
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    and-int/lit8 v6, v18, -0x11

    move-object v2, v9

    move-object v3, v15

    move/from16 v5, v18

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 753
    :cond_f
    invoke-virtual {v0, v15, v1, v8}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 754
    invoke-virtual {v0, v15, v1, v8}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    :cond_10
    or-int/lit8 v5, v17, 0x40

    .line 759
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v2, v9

    move-object v3, v15

    move/from16 v6, v17

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :goto_9
    and-int/lit8 v2, v18, 0x20

    if-eqz v2, :cond_11

    and-int/lit8 v2, v18, 0x10

    if-eqz v2, :cond_11

    if-nez p3, :cond_11

    .line 772
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, v15

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :cond_11
    move/from16 v4, v17

    :cond_12
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    :cond_13
    return-void
.end method

.method public grantRuntimePermissionsProxy(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .locals 0

    .line 571
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    return-void
.end method

.method public final isFixedOrUserSet(I)Z
    .locals 0

    .line 0
    and-int/lit8 p0, p1, 0x17

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z
    .locals 1

    .line 790
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 791
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isPermissionRestricted(Ljava/lang/String;)Z
    .locals 0

    .line 796
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 801
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result p0

    return p0
.end method

.method public revokeRuntimePermissionsProxy(Ljava/lang/String;Ljava/util/Set;ZI)V
    .locals 8

    .line 520
    iget-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 521
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 522
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 525
    :cond_0
    new-instance v7, Landroid/util/ArraySet;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 526
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v7, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 528
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 530
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 534
    :cond_1
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 535
    invoke-virtual {v0, v2, p1, v6}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p2

    and-int/lit8 v1, p2, 0x20

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    goto :goto_0

    .line 552
    :cond_4
    invoke-virtual {v0, p1, v2, v6}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 563
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public updatePermissionFlagsProxy(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6

    and-int/lit8 v3, p3, -0x5

    .line 510
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 511
    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    .line 510
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OmcPermissionPolicy"

    const-string p1, "Can\'t override a permission flag with POLICY_FIXED"

    .line 513
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
