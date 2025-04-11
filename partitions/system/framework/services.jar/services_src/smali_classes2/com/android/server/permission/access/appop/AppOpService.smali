.class public final Lcom/android/server/permission/access/appop/AppOpService;
.super Ljava/lang/Object;
.source "AppOpService.kt"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# static fields
.field public static final Companion:Lcom/android/server/permission/access/appop/AppOpService$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;

.field public handler:Landroid/os/Handler;

.field public lock:Ljava/lang/Object;

.field public final opModeWatchers:Landroid/util/SparseArray;

.field public final packageModeWatchers:Landroid/util/ArrayMap;

.field public final packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

.field public final service:Lcom/android/server/permission/access/AccessCheckingService;

.field public switchedOps:Landroid/util/SparseArray;

.field public final uidPolicy:Lcom/android/server/permission/access/appop/UidAppOpPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/appop/AppOpService$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/appop/AppOpService;->Companion:Lcom/android/server/permission/access/appop/AppOpService$Companion;

    .line 483
    const-class v0, Lcom/android/server/permission/access/appop/AppOpService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/appop/AppOpService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    const-string/jumbo v0, "package"

    const-string v1, "app-op"

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.appop.PackageAppOpPolicy"

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    const-string/jumbo v0, "uid"

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.appop.UidAppOpPolicy"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/appop/UidAppOpPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->uidPolicy:Lcom/android/server/permission/access/appop/UidAppOpPolicy;

    .line 52
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->context:Landroid/content/Context;

    .line 188
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->opModeWatchers:Landroid/util/SparseArray;

    .line 191
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->packageModeWatchers:Landroid/util/ArrayMap;

    return-void
.end method

.method public static final synthetic access$getPackagePolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/PackageAppOpPolicy;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    return-object p0
.end method

.method public static final synthetic access$getUidPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/UidAppOpPolicy;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->uidPolicy:Lcom/android/server/permission/access/appop/UidAppOpPolicy;

    return-object p0
.end method

.method public static final notifyOpChangedForAllPkgsInUid$associateListenerWithPackageNames(ZLandroid/util/ArrayMap;Lcom/android/server/appop/OnOpModeChangedListener;[Ljava/lang/String;)V
    .locals 2

    .line 318
    invoke-virtual {p2}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 81
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :goto_0
    check-cast p0, Landroid/util/ArraySet;

    .line 323
    invoke-static {p0, p3}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public clearAllModes()V
    .locals 0

    .line 0
    return-void
.end method

.method public dumpListeners(IILjava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 420
    iget-object v4, v0, Lcom/android/server/permission/access/appop/AppOpService;->opModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-string v5, ": "

    const-string v6, "      #"

    const-string v7, ":"

    if-lez v4, :cond_6

    .line 422
    iget-object v4, v0, Lcom/android/server/permission/access/appop/AppOpService;->opModeWatchers:Landroid/util/SparseArray;

    .line 164
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v11, v10, :cond_7

    .line 57
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    if-ltz v1, :cond_1

    if-eq v1, v14, :cond_1

    :cond_0
    move/from16 v8, p2

    move-object/from16 v19, v4

    goto :goto_3

    .line 426
    :cond_1
    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v14

    .line 48
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v8

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v9, v8, :cond_0

    .line 45
    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    .line 49
    check-cast v17, Lcom/android/server/appop/OnOpModeChangedListener;

    if-eqz v2, :cond_2

    .line 431
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v18

    move-object/from16 v19, v4

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move/from16 v18, v8

    move/from16 v8, p2

    if-eq v8, v4, :cond_3

    goto :goto_2

    :cond_2
    move-object/from16 v19, v4

    move/from16 v18, v8

    move/from16 v8, p2

    :cond_3
    if-nez v13, :cond_4

    const-string v4, "  Op mode watchers:"

    .line 436
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x1

    :cond_4
    if-nez v16, :cond_5

    const-string v4, "    Op "

    .line 440
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    .line 445
    :cond_5
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 447
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/OnOpModeChangedListener;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x1

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v18

    move-object/from16 v4, v19

    goto :goto_1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v19

    goto :goto_0

    :cond_6
    const/4 v12, 0x0

    .line 455
    :cond_7
    iget-object v4, v0, Lcom/android/server/permission/access/appop/AppOpService;->packageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_b

    if-gez v1, :cond_b

    .line 457
    iget-object v0, v0, Lcom/android/server/permission/access/appop/AppOpService;->packageModeWatchers:Landroid/util/ArrayMap;

    .line 56
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_4
    if-ge v4, v1, :cond_b

    .line 57
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    check-cast v9, Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 459
    invoke-static {v2, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_6

    :cond_8
    if-nez v8, :cond_9

    const-string v8, "  Package mode watchers:"

    .line 464
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    :cond_9
    const-string v11, "    Pkg "

    .line 467
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v9, :cond_a

    .line 45
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 49
    check-cast v12, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 471
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 473
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v12}, Lcom/android/server/appop/OnOpModeChangedListener;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    const/4 v12, 0x1

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    return v12
.end method

.method public final evalForegroundOps(Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 5

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 57
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    if-nez p2, :cond_0

    .line 396
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 398
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/android/server/permission/access/appop/AppOpService;->evalForegroundWatchers(Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public evalForegroundPackageOps(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)Landroid/util/SparseBooleanArray;
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->lock:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "lock"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_0
    monitor-enter v0

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 264
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 383
    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageModes(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object p1

    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->evalForegroundOps(Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public evalForegroundUidOps(ILandroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->lock:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "lock"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_0
    monitor-enter v0

    .line 372
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModes(I)Landroid/util/ArrayMap;

    move-result-object p1

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->evalForegroundOps(Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final evalForegroundWatchers(Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .locals 5

    .line 405
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    .line 406
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->opModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 407
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 45
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 408
    invoke-virtual {v4}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v4

    invoke-static {v4, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    .line 410
    :cond_3
    :goto_2
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public getNonDefaultPackageModes(Ljava/lang/String;I)Landroid/util/SparseIntArray;
    .locals 0

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageModes(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/appop/AppOpService;->opNameMapToOpIntMap(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method public getNonDefaultUidModes(I)Landroid/util/SparseIntArray;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModes(I)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/appop/AppOpService;->opNameMapToOpIntMap(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method public getOpModeChangedListeners(I)Landroid/util/ArraySet;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->lock:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "lock"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_0
    monitor-enter v0

    .line 223
    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->opModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_1

    .line 225
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    goto :goto_0

    .line 227
    :cond_1
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, p1

    .line 224
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public getPackageMode(Ljava/lang/String;II)I
    .locals 2

    .line 126
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object p2

    .line 127
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 264
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 128
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPackageModeChangedListeners(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->lock:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "lock"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_0
    monitor-enter v0

    .line 236
    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_1

    .line 238
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    goto :goto_0

    .line 240
    :cond_1
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, p1

    .line 237
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getPackageModes(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 264
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 136
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .locals 0

    .line 361
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getUidMode(II)I
    .locals 3

    .line 98
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 99
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 100
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object p2

    .line 101
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 264
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 102
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->uidPolicy:Lcom/android/server/permission/access/appop/UidAppOpPolicy;

    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/android/server/permission/access/appop/UidAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getUidModes(I)Landroid/util/ArrayMap;
    .locals 3

    .line 107
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 108
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 109
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 264
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 110
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->uidPolicy:Lcom/android/server/permission/access/appop/UidAppOpPolicy;

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/permission/access/appop/UidAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;II)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final initialize()V
    .locals 6

    .line 59
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->lock:Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->switchedOps:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x88

    if-ge v0, v1, :cond_2

    .line 65
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->switchedOps:Landroid/util/SparseArray;

    const/4 v3, 0x0

    const-string/jumbo v4, "switchedOps"

    if-nez v2, :cond_0

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    .line 67
    :cond_0
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->switchedOps:Landroid/util/SparseArray;

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 66
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;)V
    .locals 6

    const/4 v0, -0x2

    if-eq p3, v0, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v1

    if-ltz v1, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v1

    if-eq v1, p3, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchedOpCode()I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 269
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchedOpCode()I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    goto :goto_0

    .line 268
    :cond_1
    filled-new-array {p2}, [I

    move-result-object p2

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->switchedOps:Landroid/util/SparseArray;

    if-nez v0, :cond_3

    const-string/jumbo v0, "switchedOps"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 272
    :goto_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    aget v2, p2, v1

    .line 276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 278
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lcom/android/server/permission/access/appop/AppOpService;->shouldIgnoreCallback(ILcom/android/server/appop/OnOpModeChangedListener;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 279
    invoke-virtual {p1, v2, p3, p4}, Lcom/android/server/appop/OnOpModeChangedListener;->onOpModeChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 284
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    :cond_4
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public notifyOpChangedForAllPkgsInUid(IIZLcom/android/server/appop/OnOpModeChangedListener;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v7, p2

    move-object/from16 v2, p4

    .line 310
    invoke-virtual {v0, v7}, Lcom/android/server/permission/access/appop/AppOpService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 311
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 326
    iget-object v4, v0, Lcom/android/server/permission/access/appop/AppOpService;->lock:Ljava/lang/Object;

    if-nez v4, :cond_0

    const-string v4, "lock"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_0
    monitor-enter v4

    .line 328
    :try_start_0
    iget-object v5, v0, Lcom/android/server/permission/access/appop/AppOpService;->opModeWatchers:Landroid/util/SparseArray;

    move/from16 v9, p1

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-eqz v5, :cond_1

    .line 48
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v6, :cond_1

    .line 45
    invoke-virtual {v5, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 49
    check-cast v12, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 330
    invoke-static {v1, v8, v12, v3}, Lcom/android/server/permission/access/appop/AppOpService;->notifyOpChangedForAllPkgsInUid$associateListenerWithPackageNames(ZLandroid/util/ArrayMap;Lcom/android/server/appop/OnOpModeChangedListener;[Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 610
    :cond_1
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v11, v3, v6

    .line 333
    iget-object v12, v0, Lcom/android/server/permission/access/appop/AppOpService;->packageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    if-eqz v12, :cond_2

    .line 48
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_2

    .line 45
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    .line 49
    check-cast v15, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 335
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v8, v15, v10}, Lcom/android/server/permission/access/appop/AppOpService;->notifyOpChangedForAllPkgsInUid$associateListenerWithPackageNames(ZLandroid/util/ArrayMap;Lcom/android/server/appop/OnOpModeChangedListener;[Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 340
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_4
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit v4

    .line 56
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_7

    .line 57
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/util/ArraySet;

    move-object v13, v1

    check-cast v13, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 48
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_6

    .line 45
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 49
    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 347
    iget-object v1, v0, Lcom/android/server/permission/access/appop/AppOpService;->handler:Landroid/os/Handler;

    if-nez v1, :cond_5

    const-string v1, "handler"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_5
    move-object v5, v1

    .line 349
    sget-object v1, Lcom/android/server/permission/access/appop/AppOpService$notifyOpChangedForAllPkgsInUid$2$1$1;->INSTANCE:Lcom/android/server/permission/access/appop/AppOpService$notifyOpChangedForAllPkgsInUid$2$1$1;

    .line 350
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v0, v5

    move-object/from16 v5, v16

    .line 348
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 326
    monitor-exit v4

    throw v0
.end method

.method public notifyWatchersOfChange(II)V
    .locals 5

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/appop/AppOpService;->getOpModeChangedListeners(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 45
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/server/appop/OnOpModeChangedListener;

    const/4 v4, 0x0

    .line 248
    invoke-virtual {p0, v3, p1, p2, v4}, Lcom/android/server/permission/access/appop/AppOpService;->notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final opNameMapToOpIntMap(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;
    .locals 4

    if-nez p1, :cond_0

    .line 163
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    goto :goto_1

    .line 165
    :cond_0
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 56
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 57
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v2, Ljava/lang/String;

    .line 167
    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public readState()V
    .locals 0

    .line 0
    return-void
.end method

.method public removeListener(Lcom/android/server/appop/OnOpModeChangedListener;)V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->lock:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "lock"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_0
    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->opModeWatchers:Landroid/util/SparseArray;

    .line 164
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_2

    .line 69
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 144
    check-cast v3, Landroid/util/ArraySet;

    .line 68
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 214
    :cond_2
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packageModeWatchers:Landroid/util/ArrayMap;

    .line 92
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ge v3, v1, :cond_4

    .line 69
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 132
    check-cast v4, Landroid/util/ArraySet;

    check-cast v2, Ljava/lang/String;

    .line 68
    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 209
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public removePackage(Ljava/lang/String;I)Z
    .locals 6

    .line 154
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 270
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 271
    :try_start_0
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 272
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->copy()Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    .line 273
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v3, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/AccessState;)V

    .line 156
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getPackagePolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    move-result-object p0

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->removeAppOpModes(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 274
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 275
    invoke-static {v1, v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 276
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 277
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit v2

    .line 158
    iget-boolean p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0

    :catchall_0
    move-exception p0

    .line 270
    monitor-exit v2

    throw p0
.end method

.method public removeUid(I)V
    .locals 6

    .line 146
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 147
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 148
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 270
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 271
    :try_start_0
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 272
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->copy()Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    .line 273
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v3, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/AccessState;)V

    .line 149
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getUidPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/UidAppOpPolicy;

    move-result-object p0

    invoke-virtual {p0, v5, v0, p1}, Lcom/android/server/permission/access/appop/UidAppOpPolicy;->removeAppOpModes(Lcom/android/server/permission/access/MutateStateScope;II)Z

    .line 274
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 275
    invoke-static {v1, v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 276
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 277
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public setPackageMode(Ljava/lang/String;III)V
    .locals 8

    .line 139
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 270
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 271
    :try_start_0
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 272
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->copy()Lcom/android/server/permission/access/AccessState;

    move-result-object v7

    .line 273
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v0, v7}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/AccessState;)V

    .line 141
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getPackagePolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    move-result-object v0

    move-object v2, p1

    move v3, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 274
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 275
    invoke-static {p2, v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 276
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v7}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 277
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v6

    throw p0
.end method

.method public setUidMode(III)Z
    .locals 8

    .line 115
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 116
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 117
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    new-instance p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 119
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 270
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 271
    :try_start_0
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 272
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->copy()Lcom/android/server/permission/access/AccessState;

    move-result-object v7

    .line 273
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v0, v7}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/AccessState;)V

    .line 120
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getUidPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/UidAppOpPolicy;

    move-result-object v0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/UidAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 274
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 275
    invoke-static {p2, v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 276
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p2, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p2, v7}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 277
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit v6

    .line 122
    iget-boolean p0, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0

    :catchall_0
    move-exception p0

    .line 270
    monitor-exit v6

    throw p0
.end method

.method public final shouldIgnoreCallback(ILcom/android/server/appop/OnOpModeChangedListener;)Z
    .locals 1

    .line 292
    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->context:Landroid/content/Context;

    .line 294
    invoke-virtual {p2}, Lcom/android/server/appop/OnOpModeChangedListener;->getCallingPid()I

    move-result p1

    .line 295
    invoke-virtual {p2}, Lcom/android/server/appop/OnOpModeChangedListener;->getCallingUid()I

    move-result p2

    const-string v0, "android.permission.MANAGE_APPOPS"

    .line 292
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shutdown()V
    .locals 0

    .line 0
    return-void
.end method

.method public startWatchingOpModeChanged(Lcom/android/server/appop/OnOpModeChangedListener;I)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->lock:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "lock"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_0
    monitor-enter v0

    .line 195
    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->opModeWatchers:Landroid/util/SparseArray;

    .line 80
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 81
    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    check-cast v1, Landroid/util/ArraySet;

    .line 86
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public startWatchingPackageModeChanged(Lcom/android/server/appop/OnOpModeChangedListener;Ljava/lang/String;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->lock:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "lock"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_0
    monitor-enter v0

    .line 204
    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packageModeWatchers:Landroid/util/ArrayMap;

    .line 80
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 81
    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v1, Landroid/util/ArraySet;

    .line 86
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public systemReady()V
    .locals 0

    .line 0
    return-void
.end method

.method public writeState()V
    .locals 0

    .line 0
    return-void
.end method
