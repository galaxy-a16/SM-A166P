.class public final Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;
.super Landroid/permission/IPermissionChecker$Stub;
.source "PermissionManagerService.java"


# static fields
.field public static final sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method public static bridge synthetic -$$Nest$smfinishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1130
    invoke-direct {p0}, Landroid/permission/IPermissionChecker$Stub;-><init>()V

    .line 1131
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 1132
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1133
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1134
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-void
.end method

.method public static checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 24

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 1308
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v16

    const/4 v11, 0x2

    if-gez v16, :cond_0

    .line 1310
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with no app op defined!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    const/4 v0, 0x0

    move-object v3, v12

    :goto_0
    const/16 v17, 0x0

    const/4 v10, 0x1

    if-nez p6, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v18, v17

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v18, v10

    .line 1320
    :goto_2
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v19

    if-eqz p6, :cond_3

    .line 1324
    invoke-virtual {v3, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-eqz v19, :cond_4

    .line 1325
    invoke-virtual {v3, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    return v11

    :cond_4
    if-eqz p6, :cond_5

    .line 1333
    invoke-virtual {v3, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v19, :cond_5

    .line 1334
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_5

    move v9, v10

    goto :goto_3

    :cond_5
    move/from16 v9, v17

    :goto_3
    if-nez v9, :cond_7

    if-nez v19, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v8, v17

    goto :goto_5

    :cond_7
    :goto_4
    move v8, v10

    .line 1337
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v6, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    move-object/from16 v3, p2

    goto :goto_6

    :cond_8
    if-nez v18, :cond_9

    .line 1351
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1352
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v3, p2

    .line 1350
    invoke-static {v14, v15, v3, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_9
    move-object/from16 v3, p2

    :cond_a
    if-eqz v19, :cond_b

    .line 1356
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 1355
    invoke-static {v14, v15, v3, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    :cond_b
    :goto_6
    if-eqz v19, :cond_d

    .line 1362
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    move-object/from16 v12, p3

    move v11, v1

    move-object v13, v3

    move-object/from16 v0, v19

    move-object v3, v0

    goto/16 :goto_0

    :cond_d
    :goto_7
    return v17

    :cond_e
    const/4 v1, 0x2

    :cond_f
    return v1
.end method

.method public static checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 24

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    const/4 v13, 0x2

    if-ltz p1, :cond_10

    .line 1566
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    move/from16 v12, p6

    .line 1571
    invoke-static {v12, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v11

    const/4 v0, -0x1

    const/4 v10, 0x1

    const/16 v16, 0x0

    if-eq v11, v0, :cond_1

    move/from16 v17, v10

    goto :goto_0

    :cond_1
    move/from16 v17, v16

    :goto_0
    if-eqz v17, :cond_3

    .line 1580
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1581
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    move-object/from16 v3, p2

    .line 1579
    invoke-static {v14, v3, v2, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v18, v16

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v18, v10

    :goto_2
    const/4 v0, 0x0

    move-object v6, v15

    :goto_3
    if-eqz v0, :cond_4

    move v7, v10

    goto :goto_4

    :cond_4
    move/from16 v7, v16

    .line 1585
    :goto_4
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1589
    invoke-virtual {v6, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    return v13

    :cond_5
    if-nez v9, :cond_6

    move v8, v10

    goto :goto_5

    :cond_6
    move/from16 v8, v16

    :goto_5
    if-eqz v18, :cond_9

    .line 1596
    invoke-virtual {v6, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v6, v15}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    if-eqz v9, :cond_8

    .line 1597
    invoke-virtual {v9, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move/from16 v19, v10

    goto :goto_6

    :cond_9
    move/from16 v19, v16

    :goto_6
    if-nez v7, :cond_a

    if-eqz v17, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object v1, v6

    move/from16 v3, p6

    move v4, v8

    move/from16 v5, v19

    .line 1600
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move/from16 v20, v0

    goto :goto_7

    :cond_a
    move/from16 v20, v16

    :goto_7
    if-eqz v17, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object v1, v9

    move/from16 v3, p6

    move v4, v8

    move/from16 v5, v19

    .line 1603
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move/from16 v19, v0

    goto :goto_8

    :cond_b
    move/from16 v19, v16

    .line 1607
    :goto_8
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object v3, v6

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v23, v9

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v21, v11

    move/from16 v11, v20

    move/from16 v12, v19

    move v14, v13

    move/from16 v13, v21

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    if-eq v0, v14, :cond_e

    if-eqz v23, :cond_d

    .line 1621
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v12, p6

    move v10, v1

    move v13, v14

    move/from16 v11, v21

    move-object/from16 v0, v23

    move-object v6, v0

    move-object/from16 v14, p0

    goto/16 :goto_3

    :cond_d
    :goto_9
    return v16

    :cond_e
    return v14

    :cond_f
    return v1

    :cond_10
    :goto_a
    move v14, v13

    return v14
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 9

    move-object v0, p0

    move-object v2, p2

    .line 1262
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 1266
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    const-string v6, "android"

    .line 1267
    iget-object v7, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1268
    invoke-static {p0, p2}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1271
    :cond_0
    invoke-virtual {v1, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v4

    .line 1278
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    .line 1279
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    return v0

    .line 1282
    :cond_2
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1283
    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    :cond_3
    if-nez p7, :cond_4

    .line 1289
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 1290
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v3

    move-object v6, p1

    .line 1288
    invoke-static {p0, p1, p2, v1, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_5

    return v4

    :cond_4
    move-object v6, p1

    .line 1294
    :cond_5
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1296
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v8, p8

    .line 1295
    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    :cond_6
    return v5
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z
    .locals 5

    const/4 v0, -0x1

    .line 1475
    invoke-virtual {p0, p2, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 1484
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "android.permission.RECORD_AUDIO"

    .line 1485
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.permission.CAPTURE_AUDIO_OUTPUT"

    .line 1486
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.permission.CAMERA"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1488
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1490
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result p1

    if-ne p3, p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    .line 1493
    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.permission.RENOUNCE_PERMISSIONS"

    .line 1494
    invoke-virtual {p0, p1, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_4

    return v3

    .line 1500
    :cond_4
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_PREL:Z

    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    const-string p0, "android.permission.BLUETOOTH"

    .line 1501
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1502
    const-class p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    .line 1503
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    if-eqz p0, :cond_5

    .line 1504
    invoke-virtual {p0, p3}, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->isAppPrelaunched(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "App tries to use BT"

    .line 1505
    invoke-virtual {p0, p3, p1}, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->stopPrelaunch(ILjava/lang/String;)V

    return v3

    :cond_5
    return v1
.end method

.method public static checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 27

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move/from16 v11, p6

    move/from16 v10, p7

    .line 1376
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    .line 1378
    invoke-static {v11, v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v8

    const/4 v0, -0x1

    const/4 v7, 0x1

    const/16 v16, 0x0

    if-eq v8, v0, :cond_0

    move/from16 v17, v7

    goto :goto_0

    :cond_0
    move/from16 v17, v16

    :goto_0
    if-eqz v17, :cond_2

    .line 1385
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1386
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1384
    invoke-static {v14, v15, v2, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v18, v16

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v18, v7

    :goto_2
    const/4 v0, 0x0

    move-object v6, v12

    :goto_3
    if-nez v10, :cond_4

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v19, v16

    goto :goto_5

    :cond_4
    :goto_4
    move/from16 v19, v7

    .line 1390
    :goto_5
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    const/4 v4, 0x2

    if-eqz v10, :cond_5

    .line 1394
    invoke-virtual {v6, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-eqz v5, :cond_6

    .line 1395
    invoke-virtual {v6, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    return v4

    :cond_6
    if-nez v19, :cond_7

    .line 1401
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 1400
    invoke-static {v14, v15, v13, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_7

    return v4

    :cond_7
    if-eqz v5, :cond_8

    .line 1406
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 1405
    invoke-static {v14, v15, v13, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_8

    return v4

    :cond_8
    if-gez v9, :cond_b

    .line 1412
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1413
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 1414
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1415
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform runtime permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with no app op defined!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v5, :cond_a

    return v16

    :cond_a
    move-object/from16 v23, v5

    move v15, v7

    move/from16 v19, v8

    move v2, v9

    move v1, v10

    goto/16 :goto_d

    :cond_b
    if-eqz v10, :cond_c

    .line 1429
    invoke-virtual {v6, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v5, :cond_c

    .line 1430
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_c

    move/from16 v20, v7

    goto :goto_6

    :cond_c
    move/from16 v20, v16

    :goto_6
    if-nez v20, :cond_e

    if-nez v5, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v21, v16

    goto :goto_8

    :cond_e
    :goto_7
    move/from16 v21, v7

    :goto_8
    if-eqz v18, :cond_11

    .line 1433
    invoke-virtual {v6, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v6, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    if-eqz v5, :cond_10

    .line 1434
    invoke-virtual {v5, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move/from16 v22, v7

    goto :goto_9

    :cond_11
    move/from16 v22, v16

    :goto_9
    if-nez v19, :cond_12

    if-eqz v17, :cond_12

    move-object/from16 v0, p3

    move-object v1, v6

    move/from16 v2, p7

    move/from16 v3, p6

    move v15, v4

    move/from16 v4, v21

    move-object/from16 v23, v5

    move/from16 v5, v22

    .line 1437
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move/from16 v24, v0

    goto :goto_a

    :cond_12
    move v15, v4

    move-object/from16 v23, v5

    move/from16 v24, v16

    :goto_a
    if-eqz v17, :cond_13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move/from16 v2, p7

    move/from16 v3, p6

    move/from16 v4, v21

    move/from16 v5, v22

    .line 1440
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move/from16 v22, v0

    goto :goto_b

    :cond_13
    move/from16 v22, v16

    .line 1444
    :goto_b
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object/from16 v0, p0

    move v2, v9

    move-object v3, v6

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v25, v6

    move/from16 v6, p6

    move v15, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v21

    move/from16 v26, v9

    move/from16 v9, v20

    move/from16 v10, p8

    move/from16 v11, v24

    move/from16 v12, v22

    move/from16 v13, v19

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    if-eq v0, v15, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    if-eqz p6, :cond_14

    .line 1459
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    move/from16 v1, p7

    move-object/from16 v12, v25

    move/from16 v2, v26

    invoke-direct {v0, v14, v2, v12, v1}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;-><init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    .line 1461
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v12}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_14
    move/from16 v1, p7

    move/from16 v2, v26

    :goto_c
    if-eqz v23, :cond_16

    .line 1464
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_e

    :cond_15
    :goto_d
    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move/from16 v11, p6

    move v10, v1

    move v9, v2

    move v7, v15

    move/from16 v8, v19

    move-object/from16 v0, v23

    move-object v6, v0

    move-object/from16 v15, p1

    goto/16 :goto_3

    :cond_16
    :goto_e
    return v16

    :cond_17
    move v0, v1

    return v0

    :cond_18
    return v15
.end method

.method public static finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .locals 9

    .line 1172
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 1179
    :cond_0
    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    const/4 v2, 0x0

    move-object v7, v1

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    .line 1185
    :goto_2
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    if-eqz p3, :cond_3

    .line 1189
    invoke-virtual {v7}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v4

    if-eq v4, p2, :cond_4

    :cond_3
    if-eqz v8, :cond_4

    .line 1190
    invoke-virtual {v7, p0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    if-eqz p3, :cond_5

    .line 1198
    invoke-virtual {v7}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v4

    if-ne v4, p2, :cond_5

    if-eqz v8, :cond_5

    .line 1199
    invoke-virtual {v8}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-nez v4, :cond_6

    if-nez v8, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    if-nez v4, :cond_8

    move-object v3, v7

    goto :goto_4

    :cond_8
    move-object v3, v8

    :goto_4
    if-eqz v1, :cond_a

    .line 1206
    invoke-static {p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    return-void

    .line 1210
    :cond_9
    iget-object v2, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 1211
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    .line 1212
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move v3, p1

    .line 1210
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1215
    :cond_a
    invoke-static {p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 1216
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    return-void

    .line 1219
    :cond_b
    iget-object v3, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 1220
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 1219
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 1223
    :goto_5
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 1224
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz v1, :cond_c

    .line 1226
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_c
    if-eqz v8, :cond_e

    .line 1229
    invoke-virtual {v8}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    move-object v2, v8

    move-object v7, v2

    goto/16 :goto_0

    :cond_e
    :goto_6
    if-eqz v8, :cond_f

    .line 1231
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {v8}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz p0, :cond_f

    .line 1233
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_f
    return-void
.end method

.method public static getAttributionChainId(ZLandroid/content/AttributionSource;)I
    .locals 0

    if-eqz p1, :cond_2

    .line 1795
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p1

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 1798
    :cond_0
    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1803
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v14, p4

    move/from16 v15, p7

    move/from16 v2, p10

    .line 1641
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/app/AppOpsManager;

    if-nez p9, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 1643
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    :goto_0
    const/4 v5, 0x2

    if-nez p5, :cond_4

    .line 1645
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v5

    .line 1651
    :cond_1
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 1650
    invoke-virtual {v13, v1, v3, v2}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 1652
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-nez p8, :cond_3

    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 1654
    invoke-static {v0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v5

    .line 1658
    :cond_2
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v13, v1, v2, v0}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_3
    return v2

    :cond_4
    const-string v12, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v11, " while not having "

    const-string v10, " protecting data with platform defined runtime permission "

    const-string v9, "Datasource "

    const-string v8, " with source "

    const-string v7, "Security exception for op "

    const/16 v16, 0x0

    const-string v6, ", "

    const-string v5, ":"

    if-eqz p6, :cond_a

    .line 1663
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1665
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v4, 0x2

    return v4

    :cond_5
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    if-eq v2, v1, :cond_7

    .line 1683
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    move-object/from16 p5, v5

    .line 1684
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1682
    invoke-virtual {v13, v1, v4, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    return v4

    :cond_6
    move v5, v2

    goto :goto_1

    :cond_7
    move-object/from16 p5, v5

    move v5, v1

    move/from16 v4, v16

    :goto_1
    if-eqz p8, :cond_8

    .line 1694
    :try_start_0
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v7

    .line 1695
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    .line 1697
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v4

    move-object v4, v13

    move/from16 p0, v5

    move-object/from16 v5, p1

    move/from16 v17, v6

    move/from16 v6, p0

    move-object v14, v9

    move/from16 v9, v16

    move-object/from16 v18, v10

    move-object v10, v0

    move-object v0, v11

    move-object/from16 v11, p4

    move-object/from16 v19, v12

    move/from16 v12, p11

    move-object/from16 p6, v13

    move/from16 v13, p13

    .line 1692
    :try_start_1
    invoke-virtual/range {v4 .. v13}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_0
    move/from16 v17, v4

    move-object v14, v9

    move-object/from16 v18, v10

    move-object v0, v11

    move-object/from16 v19, v12

    move-object/from16 p6, v13

    .line 1700
    :catch_1
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v19

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1700
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move/from16 v2, p10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    .line 1704
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    goto :goto_2

    :cond_8
    move/from16 v17, v4

    move/from16 p0, v5

    move-object/from16 p6, v13

    move-object/from16 v4, p6

    move-object/from16 v13, p5

    move-object/from16 v5, p1

    move-object v1, v6

    move/from16 v6, p0

    move-object v2, v7

    move-object v7, v0

    move-object v14, v8

    move-object/from16 v8, p4

    move/from16 v9, p7

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 1710
    :try_start_2
    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move/from16 v4, v17

    .line 1727
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :catch_2
    move-exception v0

    move-object v4, v0

    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1720
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1721
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    .line 1722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1724
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object v14, v9

    move-object/from16 p6, v13

    move-object v13, v5

    move-object v9, v7

    move-object v5, v11

    move-object v7, v12

    move-object/from16 v20, v10

    move-object v10, v6

    move-object/from16 v6, v20

    .line 1729
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1731
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    const/4 v4, 0x2

    return v4

    :cond_b
    const/4 v4, 0x2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    if-eq v2, v1, :cond_d

    .line 1744
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v11

    .line 1745
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v2, p6

    .line 1743
    invoke-virtual {v2, v1, v11, v12}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-ne v11, v4, :cond_c

    return v11

    :cond_c
    move/from16 v4, p10

    goto :goto_3

    :cond_d
    move-object/from16 v2, p6

    move v4, v1

    move/from16 v11, v16

    :goto_3
    if-eqz p8, :cond_e

    .line 1759
    :try_start_3
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v8

    .line 1760
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1761
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p8, v2

    move/from16 p9, v4

    move/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v0

    move-object/from16 p13, p4

    .line 1758
    invoke-virtual/range {p8 .. p13}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 1764
    :catch_3
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1764
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p4

    .line 1768
    invoke-virtual {v2, v4, v3, v1, v15}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_4

    :cond_e
    move-object/from16 v1, p4

    .line 1773
    :try_start_4
    invoke-virtual {v2, v4, v0, v1, v15}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1789
    :goto_4
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1783
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    .line 1784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1786
    :cond_f
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    const/16 p3, 0x8

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-eqz p6, :cond_3

    if-eqz p4, :cond_2

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_2
    if-nez p2, :cond_6

    .line 1544
    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_3
    if-eqz p4, :cond_4

    or-int/lit8 p0, p3, 0x4

    return p0

    :cond_4
    if-eqz p2, :cond_5

    .line 1550
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    or-int/lit8 p0, p3, 0x1

    return p0

    .line 1552
    :cond_5
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p4

    if-nez p4, :cond_6

    or-int/lit8 p0, p3, 0x4

    return p0

    :cond_6
    if-eqz p2, :cond_7

    .line 1556
    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    or-int/lit8 p0, p3, 0x2

    return p0

    :cond_8
    :goto_1
    return v0
.end method

.method public static resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .locals 1

    .line 1827
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1830
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method public static resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;
    .locals 1

    .line 1810
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1811
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1813
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1814
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1813
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 1818
    aget-object p0, p0, p1

    return-object p0

    .line 1821
    :cond_1
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    .line 1822
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1821
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1527
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result p0

    return p0
.end method

.method public static resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1519
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .locals 7

    .line 1246
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    move v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1251
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_0
    return p3
.end method

.method public checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .locals 13

    move-object v0, p0

    move/from16 v10, p6

    move/from16 v11, p7

    .line 1143
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    new-instance v12, Landroid/content/AttributionSource;

    move-object v1, p2

    invoke-direct {v12, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 1147
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-object v3, p1

    move-object v4, v12

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    if-eqz p5, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v11, v2, :cond_0

    .line 1154
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 1155
    invoke-virtual {v12}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 1154
    invoke-virtual {p0, v2, v3, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    goto :goto_0

    .line 1157
    :cond_0
    invoke-virtual {v12}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    invoke-virtual {p0, v11, v2, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_1
    :goto_0
    return v1
.end method

.method public finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .locals 0

    .line 1166
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method
