.class public final Lcom/android/server/pm/SuspendPackageHelper;
.super Ljava/lang/Object;
.source "SuspendPackageHelper.java"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public static synthetic $r8$lambda$43Fm1w88azFYVcLmkv8CjXbZsvE(I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$getUnsuspendablePackages$5(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$56lMTTmdwpGLgie--3DUwPSUIRI(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$removeSuspensionsBySuspendingPackage$1(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Kxd-gW5jekFOZ4D96-ZUPhmY6k(Lcom/android/server/pm/SuspendPackageHelper;ZI[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$sendMyPackageSuspendedOrUnsuspended$6(ZI[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MeRzSYumIRSeE5t27JoC2o33WL0(Lcom/android/server/pm/SuspendPackageHelper;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$sendPackagesSuspendedForUser$2(Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RhuT44KN1uB2kUzyFk_wMzIf39I(I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$setPackagesSuspendedByAdmin$4(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T5cvpD5mEWJK08R6EajVRBrFICM(Lcom/android/server/pm/SuspendPackageHelper;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$sendPackagesSuspendedForUser$3(Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q8yyKm6etC93i5lkgJcTbAozJFk(Landroid/util/ArraySet;IZLjava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$setPackagesSuspended$0(Landroid/util/ArraySet;IZLjava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 89
    iput-object p3, p0, Lcom/android/server/pm/SuspendPackageHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 90
    iput-object p2, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 91
    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 92
    iput-object p5, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    return-void
.end method

.method public static synthetic lambda$getUnsuspendablePackages$5(I)[Ljava/lang/String;
    .locals 0

    .line 688
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$removeSuspensionsBySuspendingPackage$1(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 343
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 344
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 346
    invoke-virtual {p2, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v2

    move v4, v0

    .line 347
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 348
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$sendMyPackageSuspendedOrUnsuspended$6(ZI[Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 769
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IActivityManager null. Cannot send MY_PACKAGE_ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "UN"

    .line 772
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SUSPENDED broadcasts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    .line 771
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 775
    :cond_1
    filled-new-array/range {p2 .. p2}, [I

    move-result-object v14

    .line 776
    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v15

    .line 777
    array-length v13, v1

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v13, :cond_4

    aget-object v7, v1, v12

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/16 v3, 0x3e8

    move/from16 v11, p2

    .line 779
    invoke-virtual {v0, v15, v7, v11, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_2

    :cond_2
    move/from16 v11, p2

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_3

    .line 783
    new-instance v2, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

    .line 784
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    move-object v5, v2

    .line 788
    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v4, 0x0

    const/high16 v6, 0x1000000

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p4

    move-object v9, v14

    move-object/from16 v11, v16

    move/from16 v16, v12

    move-object/from16 v12, v17

    move/from16 v17, v13

    move-object/from16 v13, v18

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    add-int/lit8 v12, v16, 0x1

    move/from16 v13, v17

    goto :goto_1

    :cond_4
    return-void
.end method

.method private synthetic lambda$sendPackagesSuspendedForUser$2(Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 642
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 641
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Lcom/android/server/pm/Computer;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendPackagesSuspendedForUser$3(Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/Bundle;)V
    .locals 12

    move-object v0, p0

    .line 638
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v2, 0x0

    const/high16 v4, 0x50000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    filled-new-array {p3}, [I

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/SuspendPackageHelper;)V

    move-object v0, v1

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v11, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$setPackagesSuspended$0(Landroid/util/ArraySet;IZLjava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 3

    .line 199
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 201
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    invoke-virtual {p5, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    .line 203
    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 205
    invoke-interface {v2, p3, p4}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->putSuspendParams(Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    goto :goto_1

    .line 207
    :cond_0
    invoke-interface {v2, p3}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$setPackagesSuspendedByAdmin$4(I)[Ljava/lang/String;
    .locals 0

    .line 683
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 500
    array-length v4, v2

    new-array v4, v4, [Z

    move/from16 v5, p4

    .line 501
    invoke-virtual {v0, v1, v3, v5}, Lcom/android/server/pm/SuspendPackageHelper;->isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z

    move-result v5

    .line 502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 504
    :try_start_0
    iget-object v8, v0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v8

    .line 505
    invoke-virtual {v8, v3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v9

    .line 506
    invoke-virtual {v8, v3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultDialer(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    .line 508
    invoke-virtual {v0, v1, v10, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    .line 510
    invoke-virtual {v0, v1, v11, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    .line 512
    invoke-virtual {v0, v1, v12, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x7

    .line 514
    invoke-virtual {v0, v1, v13, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v13

    .line 516
    iget-object v14, v0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v15, Landroid/app/AppOpsManager;

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager;

    const-string/jumbo v15, "package_manager_service"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v16, v6

    :try_start_1
    const-string/jumbo v6, "system_exempt_from_suspension"

    const/4 v7, 0x1

    .line 517
    invoke-static {v15, v6, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    const/4 v7, 0x0

    .line 520
    :goto_0
    array-length v15, v2

    if-ge v7, v15, :cond_f

    const/4 v15, 0x0

    .line 521
    aput-boolean v15, v4, v7

    .line 522
    aget-object v15, v2, v7

    .line 524
    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v15, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v4

    const-string v4, "Cannot suspend package \""

    move/from16 v19, v7

    const-string v7, "PackageManager"

    if-eqz v2, :cond_0

    .line 525
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": has an active device admin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 529
    :cond_0
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": contains the active launcher"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 534
    :cond_1
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": required for package installation"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 539
    :cond_2
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": required for package uninstallation"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 544
    :cond_3
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": required for package verification"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 549
    :cond_4
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": is the default dialer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 554
    :cond_5
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": required for permissions management"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 559
    :cond_6
    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v2, v3, v15}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": protected package"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    if-nez v5, :cond_8

    .line 564
    invoke-interface {v1, v3, v15}, Lcom/android/server/pm/Computer;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": blocked by admin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 569
    :cond_8
    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 570
    invoke-virtual {v2, v1, v15, v3}, Lcom/android/server/pm/PackageManagerService;->isRequiredSystemPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": required system package"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 579
    :cond_9
    invoke-interface {v1, v15}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_a

    const/16 v20, 0x0

    goto :goto_2

    .line 580
    :cond_a
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v20

    :goto_2
    if-eqz v20, :cond_d

    .line 582
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-static {v3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 584
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "Cannot suspend package: "

    if-eqz v21, :cond_b

    .line 585
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providing SDK library: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 593
    :cond_b
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providing static shared library: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    if-eqz v6, :cond_d

    const/16 v0, 0x7c

    .line 599
    invoke-virtual {v14, v0, v2, v15}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": has OP_SYSTEM_EXEMPT_FROM_SUSPENSION set"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    const-string v0, "android"

    .line 607
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot suspend the platform package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x1

    .line 611
    aput-boolean v0, v18, v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    goto/16 :goto_0

    :cond_f
    move-object/from16 v18, v4

    .line 614
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v18

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v6

    :goto_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 615
    throw v0
.end method

.method public final getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;
    .locals 0

    .line 744
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 745
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object p0

    .line 746
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSuspendedDialogInfo(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/SuspendDialogInfo;
    .locals 0

    .line 453
    invoke-interface {p1, p2, p5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 459
    :cond_0
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 460
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    .line 465
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    if-nez p0, :cond_2

    return-object p1

    .line 470
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz p0, :cond_3

    .line 471
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/SuspendParams;->getDialogInfo()Landroid/content/pm/SuspendDialogInfo;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 1

    .line 275
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 279
    :cond_0
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 280
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 281
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 282
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 283
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz p4, :cond_1

    .line 284
    invoke-virtual {p4}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p4}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result p0

    if-lez p0, :cond_3

    move-object p1, p2

    :cond_3
    return-object p1
.end method

.method public getSuspendedPackageLauncherExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 1

    .line 375
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 379
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 380
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 381
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 382
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 383
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz p4, :cond_1

    .line 384
    invoke-virtual {p4}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p4}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result p0

    if-lez p0, :cond_3

    move-object p1, p2

    :cond_3
    return-object p1
.end method

.method public getSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 419
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 425
    :cond_0
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 426
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    const/4 p2, 0x0

    .line 431
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 432
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "android"

    .line 433
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-object p1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final getUnsuspendablePackages(Lcom/android/server/pm/Computer;ILjava/util/Set;)Ljava/util/List;
    .locals 1

    .line 688
    new-instance v0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 690
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object p0

    .line 691
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 692
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_1

    .line 693
    aget-boolean v0, p0, p2

    if-nez v0, :cond_0

    .line 694
    aget-object v0, p3, p2

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getUnsuspendablePackagesForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Ljava/lang/String;
    .locals 5

    .line 241
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v0

    const-string v1, "PackageManager"

    if-nez v0, :cond_0

    .line 242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot suspend due to restrictions on user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 245
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 246
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object p0

    const/4 v2, 0x0

    .line 248
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_3

    .line 249
    aget-boolean v3, p0, v2

    if-nez v3, :cond_1

    .line 250
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_1
    aget-object v3, p2, v2

    .line 254
    invoke-interface {p1, v3, p4, p3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_2

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find package setting for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z
    .locals 8

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    return v1

    .line 754
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v3

    const/4 p0, 0x0

    if-eqz v3, :cond_2

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v6, p2

    move v7, p3

    .line 756
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p1

    if-ne p3, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    return v1

    :cond_2
    return p0
.end method

.method public isPackageSuspended(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Z
    .locals 0

    .line 403
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 404
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 405
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 483
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/SuspendPackageHelper;->isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "no_control_apps"

    .line 484
    invoke-virtual {v0, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "no_uninstall_apps"

    .line 485
    invoke-virtual {v0, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public final packagesToSuspendInQuietMode(Lcom/android/server/pm/Computer;I)Ljava/util/Set;
    .locals 2

    const-wide/32 v0, 0xc0000

    .line 729
    invoke-interface {p1, v0, v1, p2}, Lcom/android/server/pm/Computer;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 730
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 731
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 732
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 733
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->getDevicePolicyManagementRoleHolderPackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    .line 306
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 307
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    .line 308
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 309
    array-length v6, v1

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    if-ge v8, v6, :cond_7

    aget-object v10, v1, v8

    move-object/from16 v11, p1

    .line 311
    invoke-interface {v11, v10}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    if-nez v12, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    invoke-interface {v12, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_5

    .line 314
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_4

    .line 319
    :cond_1
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 321
    :goto_2
    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v15

    if-ge v13, v15, :cond_4

    .line 322
    invoke-virtual {v9, v13}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v7, p3

    .line 323
    invoke-interface {v7, v15}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 325
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    if-nez v16, :cond_2

    .line 327
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 328
    invoke-virtual {v5, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    move-object/from16 v1, v16

    .line 330
    :goto_3
    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p2

    goto :goto_2

    :cond_4
    move-object/from16 v7, p3

    .line 336
    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ne v14, v1, :cond_6

    .line 337
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v2, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_5

    :cond_5
    :goto_4
    move-object/from16 v7, p3

    :cond_6
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p2

    goto :goto_0

    .line 342
    :cond_7
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v6, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5, v2}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;I)V

    invoke-virtual {v1, v9, v6}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 353
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 354
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 356
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 355
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 357
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/pm/SuspendPackageHelper;->sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZI)V

    const-string v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 359
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    .line 358
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/server/pm/SuspendPackageHelper;->sendPackagesSuspendedForUser(Ljava/lang/String;[Ljava/lang/String;[II)V

    :cond_8
    return-void
.end method

.method public final sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZI)V
    .locals 8

    .line 764
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "android.intent.action.MY_PACKAGE_SUSPENDED"

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    :goto_0
    move-object v7, v1

    .line 768
    new-instance v1, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda4;

    move-object v2, v1

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/SuspendPackageHelper;ZI[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendPackagesSuspendedForUser(Ljava/lang/String;[Ljava/lang/String;[II)V
    .locals 7

    .line 630
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 631
    new-instance v4, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "android.intent.extra.changed_package_list"

    .line 632
    invoke-virtual {v4, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p2, "android.intent.extra.changed_uid_list"

    .line 633
    invoke-virtual {v4, p2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 635
    new-instance p2, Landroid/app/BroadcastOptions;

    invoke-direct {p2}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 p3, 0x2

    .line 636
    invoke-virtual {p2, p3}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p2

    .line 637
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 638
    new-instance p2, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/SuspendPackageHelper;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/Bundle;)V

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;IIZ)[Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p3

    move-object/from16 v5, p7

    move/from16 v8, p8

    move/from16 v3, p9

    .line 121
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    :cond_0
    const-string v4, "PackageManager"

    if-eqz v7, :cond_1

    if-nez p10, :cond_1

    .line 124
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot suspend due to restrictions on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 129
    :cond_1
    new-instance v6, Lcom/android/server/pm/pkg/SuspendParams;

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct {v6, v11, v9, v10}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    .line 132
    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v2

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v2

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    new-instance v11, Landroid/util/IntArray;

    array-length v12, v2

    invoke-direct {v11, v12}, Landroid/util/IntArray;-><init>(I)V

    .line 136
    new-instance v12, Landroid/util/ArraySet;

    array-length v13, v2

    invoke-direct {v12, v13}, Landroid/util/ArraySet;-><init>(I)V

    .line 137
    new-instance v13, Landroid/util/IntArray;

    array-length v14, v2

    invoke-direct {v13, v14}, Landroid/util/IntArray;-><init>(I)V

    if-eqz v7, :cond_2

    if-nez p10, :cond_2

    .line 140
    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object v15

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    :goto_0
    const/4 v14, 0x0

    .line 142
    :goto_1
    array-length v0, v2

    if-ge v14, v0, :cond_e

    .line 143
    aget-object v0, v2, v14

    .line 144
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p6, v13

    const-string v13, "Calling package: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " trying to "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_3

    const-string v13, ""

    goto :goto_2

    :cond_3
    const-string/jumbo v13, "un"

    .line 146
    :goto_2
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "suspend itself. Ignoring"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v16, v6

    move-object/from16 p10, v15

    move-object/from16 v15, p6

    goto/16 :goto_7

    :cond_4
    move-object/from16 p6, v13

    .line 150
    invoke-interface {v1, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    const-string v13, ". Skipping suspending/un-suspending."

    if-eqz v2, :cond_d

    .line 151
    invoke-interface {v2, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 152
    invoke-interface {v1, v2, v3, v8}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v16

    if-eqz v16, :cond_5

    goto/16 :goto_6

    :cond_5
    if-eqz v15, :cond_6

    .line 158
    aget-boolean v16, v15, v14

    if-nez v16, :cond_6

    .line 159
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 164
    :cond_6
    invoke-interface {v2, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v3, 0x0

    goto :goto_4

    .line 167
    :cond_7
    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/pkg/SuspendParams;

    move-object/from16 v3, v16

    .line 168
    :goto_4
    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 p10, v15

    const/4 v15, 0x1

    xor-int/2addr v3, v15

    if-eqz v7, :cond_8

    if-nez v3, :cond_8

    .line 172
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 173
    invoke-virtual {v11, v0}, Landroid/util/IntArray;->add(I)V

    move-object/from16 v15, p6

    move-object/from16 v16, v6

    goto/16 :goto_7

    :cond_8
    move-object/from16 v16, v6

    if-nez v7, :cond_9

    .line 181
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v6

    if-ne v6, v15, :cond_9

    .line 182
    invoke-virtual {v1, v5}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    :goto_5
    if-nez v7, :cond_a

    if-eqz v15, :cond_b

    .line 185
    :cond_a
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v8, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/util/IntArray;->add(I)V

    :cond_b
    if-eqz v3, :cond_c

    .line 190
    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move-object/from16 v15, p6

    invoke-virtual {v15, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_7

    :cond_c
    move-object/from16 v15, p6

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No change is needed for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    :goto_6
    move-object/from16 v16, v6

    move-object/from16 p10, v15

    move-object/from16 v15, p6

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find package setting for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p9

    move-object v13, v15

    move-object/from16 v6, v16

    move-object/from16 v15, p10

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v16, v6

    move-object v15, v13

    .line 198
    iget-object v13, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v14, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;

    move-object v1, v14

    move-object v2, v12

    move/from16 v3, p8

    move/from16 v4, p3

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArraySet;IZLjava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v14}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 212
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 214
    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v7, :cond_f

    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    goto :goto_8

    :cond_f
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 218
    :goto_8
    invoke-virtual {v11}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    .line 215
    invoke-virtual {v0, v2, v1, v3, v8}, Lcom/android/server/pm/SuspendPackageHelper;->sendPackagesSuspendedForUser(Ljava/lang/String;[Ljava/lang/String;[II)V

    .line 219
    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/pm/SuspendPackageHelper;->sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZI)V

    .line 220
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 223
    :cond_10
    invoke-virtual {v12}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 225
    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v15}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    .line 224
    invoke-virtual {v0, v4, v2, v3, v8}, Lcom/android/server/pm/SuspendPackageHelper;->sendPackagesSuspendedForUser(Ljava/lang/String;[Ljava/lang/String;[II)V

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_9
    new-array v0, v1, [Ljava/lang/String;

    .line 227
    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setPackagesSuspendedByAdmin(Lcom/android/server/pm/Computer;I[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 13

    move-object v0, p0

    move v8, p2

    .line 654
    new-instance v1, Landroid/util/ArraySet;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 655
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 657
    iget-object v3, v0, Lcom/android/server/pm/SuspendPackageHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/UserManagerService;->isQuietModeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 660
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/SuspendPackageHelper;->packagesToSuspendInQuietMode(Lcom/android/server/pm/Computer;I)Ljava/util/Set;

    move-result-object v3

    .line 661
    invoke-interface {v3, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 662
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring quiet packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-static {v5, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p4, :cond_1

    move-object v4, p1

    .line 672
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getUnsuspendablePackages(Lcom/android/server/pm/Computer;ILjava/util/Set;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v4, p1

    :goto_0
    move-object v11, v2

    .line 675
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 678
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "android"

    const/16 v10, 0x3e8

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move v8, p2

    move v9, v10

    move v10, v12

    .line 677
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/SuspendPackageHelper;->setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;IIZ)[Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 683
    :cond_2
    new-instance v0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v11, v0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setPackagesSuspendedForQuietMode(Lcom/android/server/pm/Computer;IZ)V
    .locals 12

    .line 706
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/SuspendPackageHelper;->packagesToSuspendInQuietMode(Lcom/android/server/pm/Computer;I)Ljava/util/Set;

    move-result-object v0

    if-nez p3, :cond_1

    .line 708
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 709
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getPackagesSuspendedByAdmin(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const-string v1, "PackageManager"

    const-string v2, "DevicePolicyManager unavailable while suspending apps for quiet mode"

    .line 713
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 722
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "android"

    const/16 v10, 0x3e8

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v9, p2

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/SuspendPackageHelper;->setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;IIZ)[Ljava/lang/String;

    return-void
.end method
