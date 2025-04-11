.class public final Lcom/android/server/permission/access/permission/UidPermissionPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "UidPermissionPolicy.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/UidPermissionPolicy$Companion;

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final NEARBY_DEVICES_PERMISSIONS:Landroid/util/ArraySet;

.field public static final NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

.field public static final RETAIN_IMPLICIT_FLAGS_PERMISSIONS:Landroid/util/ArraySet;

.field public static final STORAGE_AND_MEDIA_PERMISSIONS:Landroid/util/ArraySet;


# instance fields
.field public volatile onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/collection/IndexedListSet;

.field public final onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

.field public final persistence:Lcom/android/server/permission/access/permission/UidPermissionPersistence;

.field public final privilegedPermissionAllowlistViolations:Landroid/util/ArraySet;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/permission/access/permission/UidPermissionPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/UidPermissionPolicy$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->Companion:Lcom/android/server/permission/access/permission/UidPermissionPolicy$Companion;

    .line 1389
    const-class v0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    const-string v2, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string v3, "android.permission.ACTIVITY_RECOGNITION"

    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    .line 1399
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1394
    sput-object v1, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->RETAIN_IMPLICIT_FLAGS_PERMISSIONS:Landroid/util/ArraySet;

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    const-string v2, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    .line 1406
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1402
    sput-object v1, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Landroid/util/ArraySet;

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 1410
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1409
    sput-object v1, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    const-string v5, "android.permission.READ_MEDIA_VIDEO"

    const-string v6, "android.permission.READ_MEDIA_IMAGES"

    const-string v7, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string v8, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 1420
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1413
    sput-object v1, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->STORAGE_AND_MEDIA_PERMISSIONS:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/server/permission/access/SchemePolicy;-><init>()V

    .line 49
    new-instance v0, Lcom/android/server/permission/access/permission/UidPermissionPersistence;

    invoke-direct {v0}, Lcom/android/server/permission/access/permission/UidPermissionPersistence;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/UidPermissionPersistence;

    .line 53
    new-instance v0, Lcom/android/server/permission/access/collection/IndexedListSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/collection/IndexedListSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->privilegedPermissionAllowlistViolations:Landroid/util/ArraySet;

    return-void
.end method

.method public static synthetic getAppIdTargetSdkVersion$default(Lcom/android/server/permission/access/permission/UidPermissionPolicy;Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 1044
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p4

    .line 1041
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/UidPermissionPolicy$OnPermissionFlagsChangedListener;)V
    .locals 2

    .line 1377
    iget-object v0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1378
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 125
    invoke-virtual {v1}, Lcom/android/server/permission/access/collection/IndexedListSet;->copy()Lcom/android/server/permission/access/collection/IndexedListSet;

    move-result-object v1

    .line 129
    invoke-virtual {v1, p1}, Lcom/android/server/permission/access/collection/IndexedListSet;->add(Ljava/lang/Object;)Z

    .line 1378
    iput-object v1, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 1379
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final addPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;Z)V
    .locals 1

    .line 1306
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object p0

    .line 34
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 178
    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/WritableState;->requestWrite(Z)V

    return-void
.end method

.method public final addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 11

    .line 317
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 57
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/server/pm/pkg/PackageUserState;

    .line 317
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    if-nez v4, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_1
    if-eqz p0, :cond_2

    .line 320
    sget-object p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 321
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring permission groups declared in package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": instant apps cannot declare permission groups"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 325
    :cond_2
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_7

    .line 39
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    const-wide/16 v5, 0x80

    .line 326
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    .line 328
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 330
    iget-object v5, v4, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/SystemState;->getPermissionGroups()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionGroupInfo;

    if-eqz v6, :cond_6

    .line 333
    iget-object v7, v4, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 334
    iget-object v7, v4, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 335
    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 340
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v8

    const-string v9, "Ignoring permission group "

    if-nez v8, :cond_3

    .line 342
    sget-object v4, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 344
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " declared in package "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": already declared in another package "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 348
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v8

    if-ne v8, v3, :cond_4

    move v8, v3

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    if-eqz v8, :cond_5

    .line 350
    sget-object v4, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 352
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " declared in system package "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": already declared in another system package "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 349
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 357
    :cond_5
    sget-object v8, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 359
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Overriding permission group "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " with new declaration in system package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": originally declared in another package "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/SystemState;->getPermissionGroups()Landroid/util/ArrayMap;

    move-result-object v6

    .line 178
    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_7
    return-void
.end method

.method public final addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Landroid/util/ArraySet;)V
    .locals 26

    .line 370
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_17

    .line 39
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermission;

    const-wide/16 v5, 0x80

    .line 379
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v8

    .line 381
    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    .line 384
    iget-object v6, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 385
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 386
    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    goto :goto_1

    .line 388
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    :goto_1
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 393
    invoke-virtual {v15, v14, v6}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v9

    .line 394
    iget-object v10, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string v11, " declared in package "

    const-string v12, "Ignoring permission "

    if-eqz v9, :cond_1

    .line 37
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 395
    invoke-static {v10, v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 397
    sget-object v4, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 34
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": base permission tree "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is declared in another package "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v18, v0

    move/from16 v19, v1

    const/4 v2, 0x0

    move-object/from16 v0, p3

    goto/16 :goto_11

    :cond_1
    const/4 v13, 0x1

    if-eqz v7, :cond_8

    .line 37
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 404
    invoke-static {v10, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 37
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 407
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v16

    if-nez v16, :cond_2

    .line 409
    sget-object v4, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": already declared in another package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 408
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 415
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v11

    if-ne v11, v13, :cond_3

    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->isReconciled()Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 419
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x34

    const/16 v18, 0x0

    move v2, v13

    move/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v15, v18

    .line 417
    invoke-static/range {v7 .. v15}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v7

    :goto_3
    move-object/from16 v18, v0

    move/from16 v19, v1

    goto/16 :goto_f

    :cond_3
    move v2, v13

    .line 421
    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v11, :cond_4

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    if-ne v11, v2, :cond_4

    move v13, v2

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    if-nez v13, :cond_7

    .line 423
    sget-object v11, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 425
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Overriding permission "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " with new declaration in system package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": originally declared in another package "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 422
    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getUserIds()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v15

    .line 75
    invoke-virtual {v15}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result v14

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v14, :cond_6

    .line 76
    invoke-virtual {v15, v13}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v16

    .line 429
    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v12

    .line 164
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v11, :cond_5

    .line 63
    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v9, p0

    move/from16 v19, v10

    move-object/from16 v10, p1

    move/from16 v20, v11

    move/from16 v11, v17

    move-object/from16 v17, v12

    move/from16 v12, v16

    move/from16 v21, v13

    move-object v13, v6

    move/from16 v22, v14

    move/from16 v14, v18

    .line 430
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    add-int/lit8 v10, v19, 0x1

    move-object/from16 v12, v17

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v14, v22

    goto :goto_6

    :cond_5
    move/from16 v21, v13

    move/from16 v22, v14

    add-int/lit8 v13, v21, 0x1

    goto :goto_5

    .line 436
    :cond_6
    new-instance v14, Lcom/android/server/permission/access/permission/Permission;

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 437
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    .line 438
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v12

    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getAreGidsPerUser()Z

    move-result v13

    move-object v7, v14

    .line 436
    invoke-direct/range {v7 .. v13}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    goto/16 :goto_3

    .line 442
    :cond_7
    sget-object v2, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " declared in system package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": already declared in another system package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    move v2, v13

    if-eqz v7, :cond_14

    .line 450
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 451
    iget-object v9, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 40
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    move v15, v2

    goto :goto_7

    :cond_9
    const/4 v15, 0x0

    .line 453
    :goto_7
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v9

    if-eq v9, v2, :cond_f

    .line 454
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 50
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v9

    if-ne v9, v2, :cond_a

    move v13, v2

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    if-eqz v13, :cond_e

    .line 25
    :cond_b
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_c

    move v13, v2

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    :goto_9
    if-eqz v13, :cond_f

    .line 50
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v9

    if-ne v9, v10, :cond_d

    move v13, v2

    goto :goto_a

    :cond_d
    const/4 v13, 0x0

    :goto_a
    if-nez v13, :cond_f

    :cond_e
    move/from16 v16, v2

    goto :goto_b

    :cond_f
    const/16 v16, 0x0

    :goto_b
    if-nez v15, :cond_10

    if-eqz v16, :cond_14

    .line 458
    :cond_10
    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getUserIds()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v14

    .line 75
    invoke-virtual {v14}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result v13

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v13, :cond_14

    .line 76
    invoke-virtual {v14, v12}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v11

    .line 459
    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v10

    .line 164
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v9, :cond_13

    move-object/from16 v18, v0

    .line 63
    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    move/from16 v19, v1

    const-string v1, " and userId "

    move/from16 v20, v9

    const-string v9, " for appId "

    move-object/from16 v21, v10

    if-eqz v15, :cond_11

    .line 466
    sget-object v10, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    move/from16 v22, v12

    .line 40
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move/from16 v23, v13

    .line 469
    iget-object v13, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v24, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v15

    const-string v15, "Revoking runtime permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " as the permission group changed from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 465
    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_11
    move/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v24, v14

    move/from16 v25, v15

    :goto_e
    if-eqz v16, :cond_12

    .line 474
    sget-object v10, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 475
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Revoking permission "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as the permission type changed."

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v14, 0x0

    move/from16 v1, v20

    move-object/from16 v9, p0

    move-object/from16 v15, v21

    move-object/from16 v10, p1

    move/from16 v20, v11

    move v11, v0

    move/from16 v0, v22

    move/from16 v12, v20

    move/from16 v21, v23

    move-object v13, v6

    move-object/from16 v22, v24

    .line 479
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    add-int/lit8 v2, v2, 0x1

    move v12, v0

    move v9, v1

    move-object v10, v15

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v11, v20

    move/from16 v13, v21

    move-object/from16 v14, v22

    move/from16 v15, v25

    goto/16 :goto_d

    :cond_13
    move-object/from16 v18, v0

    move/from16 v19, v1

    move v0, v12

    move/from16 v21, v13

    move-object/from16 v22, v14

    move/from16 v25, v15

    add-int/lit8 v12, v0, 0x1

    move-object/from16 v0, v18

    const/4 v2, 0x1

    goto/16 :goto_c

    :cond_14
    move-object/from16 v18, v0

    move/from16 v19, v1

    if-eqz v7, :cond_15

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 492
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x34

    const/4 v15, 0x0

    .line 490
    invoke-static/range {v7 .. v15}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v7

    goto :goto_f

    .line 495
    :cond_15
    new-instance v0, Lcom/android/server/permission/access/permission/Permission;

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 496
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x30

    const/4 v15, 0x0

    move-object v7, v0

    .line 495
    invoke-direct/range {v7 .. v15}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 501
    :goto_f
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 502
    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Landroid/util/ArrayMap;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 504
    :cond_16
    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 506
    invoke-static {v5, v2, v1, v0}, Lcom/android/server/permission/access/WritableState;->requestWrite$default(Lcom/android/server/permission/access/WritableState;ZILjava/lang/Object;)V

    move-object/from16 v0, p3

    .line 86
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_11
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    goto/16 :goto_0

    :cond_17
    return-void
.end method

.method public final adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Landroid/util/ArraySet;)V
    .locals 24

    .line 258
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 259
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 39
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 260
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 261
    invoke-virtual {v7, v8, v6, v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->canAdoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move-object/from16 v3, p3

    const/4 v15, 0x0

    goto :goto_3

    .line 264
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v9

    .line 265
    invoke-virtual {v9}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v10

    .line 56
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    .line 57
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/android/server/permission/access/permission/Permission;

    check-cast v13, Ljava/lang/String;

    .line 37
    invoke-virtual {v15}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 268
    invoke-static {v14, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v3, p3

    const/4 v15, 0x0

    goto :goto_2

    .line 272
    :cond_2
    new-instance v14, Landroid/content/pm/PermissionInfo;

    invoke-direct {v14}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 273
    invoke-virtual {v15}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v3, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 274
    iput-object v6, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 275
    invoke-virtual {v15}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v3, v14, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x34

    const/16 v23, 0x0

    move-object/from16 v16, v14

    .line 280
    invoke-static/range {v15 .. v23}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v3

    .line 283
    invoke-virtual {v10, v12, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 284
    invoke-static {v9, v15, v14, v3}, Lcom/android/server/permission/access/WritableState;->requestWrite$default(Lcom/android/server/permission/access/WritableState;ZILjava/lang/Object;)V

    move-object/from16 v3, p3

    .line 86
    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final canAdoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 294
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageState;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 296
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    const-string v1, " to "

    const-string v2, "Unable to adopt permissions from "

    if-nez v0, :cond_1

    .line 298
    sget-object p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": original package not in system partition"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 297
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 303
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 305
    sget-object p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": original package still exists"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 304
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final checkPrivilegedPermissionAllowlist(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .locals 6

    .line 959
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 962
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 965
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 968
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getPrivilegedPermissionAllowlistPackages()Lcom/android/server/permission/access/collection/IndexedListSet;

    move-result-object v0

    .line 37
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 968
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/collection/IndexedListSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 34
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 971
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getPrivilegedPermissionAllowlistState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 973
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 976
    :cond_4
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 980
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/SystemState;->isSystemReady()Z

    move-result p1

    if-nez p1, :cond_6

    .line 982
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isApkInUpdatedApex()Z

    move-result p1

    if-nez p1, :cond_6

    .line 984
    sget-object p1, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 985
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Privileged permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for package "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") not in privileged permission allowlist"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 983
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    sget-boolean p1, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz p1, :cond_6

    .line 989
    iget-object p0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->privilegedPermissionAllowlistViolations:Landroid/util/ArraySet;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 990
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object p2

    .line 34
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_6
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/2addr p0, v1

    return p0

    :cond_7
    :goto_0
    return v1
.end method

.method public final evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 4

    .line 660
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getUserIds()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v3

    .line 661
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V
    .locals 10

    .line 672
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 674
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    move-object v4, p0

    move-object v5, p1

    move v7, p3

    move-object v9, p4

    .line 673
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    .line 685
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v0}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v13, 0x1

    if-ge v2, v1, :cond_2

    .line 92
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 83
    check-cast v3, Ljava/lang/String;

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v13

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    move v1, v13

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 689
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v0

    if-ne v0, v13, :cond_3

    if-eqz v1, :cond_3

    return-void

    .line 693
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/permission/access/permission/Permission;

    .line 694
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    if-nez v14, :cond_5

    if-nez v0, :cond_4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 700
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_4
    return-void

    .line 50
    :cond_5
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    if-nez v2, :cond_6

    move v2, v13

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x2

    if-eqz v2, :cond_10

    .line 705
    invoke-static {v0, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_43

    .line 707
    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz p5, :cond_7

    .line 709
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v13

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 1056
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    .line 1059
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v4}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_a

    .line 92
    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    .line 83
    check-cast v14, Ljava/lang/String;

    .line 1061
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v14, Lcom/android/server/pm/pkg/PackageState;

    .line 1062
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 1063
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 711
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v14

    if-eqz v14, :cond_8

    move v14, v13

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_9

    move v2, v13

    goto :goto_7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    .line 1056
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    .line 1059
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v5}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v6

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v6, :cond_d

    .line 92
    invoke-virtual {v5, v14}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    .line 83
    check-cast v15, Ljava/lang/String;

    .line 1061
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 1062
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 1063
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 713
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v12, v11}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->isCompatibilityPermissionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    move v12, v13

    goto :goto_9

    :cond_b
    const/4 v12, 0x0

    :goto_9
    if-eqz v12, :cond_c

    move v12, v13

    goto :goto_a

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_d
    const/4 v12, 0x0

    :goto_a
    if-eqz v0, :cond_f

    if-nez v1, :cond_f

    if-nez v2, :cond_f

    if-eqz v12, :cond_e

    goto :goto_b

    :cond_e
    move v5, v3

    goto :goto_c

    :cond_f
    :goto_b
    move v5, v13

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 724
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    goto/16 :goto_34

    .line 50
    :cond_10
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    if-ne v2, v3, :cond_11

    move v2, v13

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    :goto_d
    const/4 v12, 0x4

    if-nez v2, :cond_30

    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    if-ne v2, v12, :cond_12

    move v2, v13

    goto :goto_e

    :cond_12
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_13

    move v2, v12

    move v12, v13

    goto/16 :goto_24

    .line 50
    :cond_13
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    if-ne v1, v13, :cond_14

    move v1, v13

    goto :goto_f

    :cond_14
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_2f

    const v1, 0xfffff8

    and-int v15, v0, v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    .line 769
    invoke-static/range {v0 .. v6}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getAppIdTargetSdkVersion$default(Lcom/android/server/permission/access/permission/UidPermissionPolicy;Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;ILjava/lang/Object;)I

    move-result v0

    const/16 v1, 0x17

    const v2, 0x38000

    const/16 v3, 0x400

    if-ge v0, v1, :cond_18

    .line 65
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/16 v1, 0x2000

    .line 119
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_16

    and-int v0, v15, v2

    :cond_15
    :goto_10
    move v1, v2

    move v12, v13

    goto/16 :goto_1f

    :cond_16
    or-int/lit16 v0, v15, 0x400

    .line 781
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getOldStatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17

    move v1, v13

    goto :goto_11

    :cond_17
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_15

    or-int/lit16 v0, v0, 0x1000

    goto :goto_10

    .line 787
    :cond_18
    invoke-static {v15, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    .line 788
    invoke-static {v15, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v1

    const/16 v3, 0x800

    .line 789
    invoke-static {v1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    .line 790
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->isLeanback()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 791
    sget-object v5, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    invoke-virtual {v5, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    move v5, v13

    goto :goto_12

    :cond_19
    const/4 v5, 0x0

    .line 1056
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    .line 1059
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v15}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v12

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v12, :cond_1c

    .line 92
    invoke-virtual {v15, v2}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    .line 83
    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    .line 1061
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    .line 1062
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-eqz v13, :cond_1a

    .line 1063
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 793
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_14

    :cond_1a
    const/4 v3, 0x0

    :goto_14
    if-eqz v3, :cond_1b

    const/4 v2, 0x1

    goto :goto_15

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x800

    const/4 v13, 0x1

    goto :goto_13

    :cond_1c
    const/4 v2, 0x0

    .line 795
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v3

    .line 796
    invoke-virtual {v3}, Lcom/android/server/permission/access/SystemState;->getImplicitToSourcePermissions()Landroid/util/ArrayMap;

    move-result-object v3

    .line 795
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/collection/IndexedListSet;

    if-eqz v3, :cond_21

    .line 1997
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v3, 0x0

    const/4 v12, 0x1

    goto :goto_17

    .line 1998
    :cond_1d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 798
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v12, :cond_20

    .line 50
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_1f

    move v6, v12

    goto :goto_16

    :cond_1f
    const/4 v6, 0x0

    :goto_16
    xor-int/2addr v6, v12

    if-eqz v6, :cond_1e

    move v3, v12

    goto :goto_17

    .line 800
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown source permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in split permissions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    const/4 v12, 0x1

    const/4 v3, 0x0

    :goto_17
    if-nez v5, :cond_23

    if-eqz v2, :cond_22

    if-eqz v3, :cond_22

    goto :goto_18

    :cond_22
    const/4 v3, 0x0

    goto :goto_19

    :cond_23
    :goto_18
    move v3, v12

    :goto_19
    if-eqz v3, :cond_24

    const/16 v5, 0x800

    or-int/2addr v1, v5

    goto :goto_1a

    :cond_24
    const/16 v5, 0x800

    .line 809
    invoke-static {v1, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v1

    :goto_1a
    if-nez v0, :cond_25

    if-eqz v4, :cond_26

    :cond_25
    if-nez v3, :cond_26

    const/high16 v0, 0x100000

    .line 817
    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    goto :goto_1b

    :cond_26
    move v0, v1

    :goto_1b
    const/16 v1, 0x1000

    .line 819
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-nez v2, :cond_2a

    if-eqz v3, :cond_2a

    .line 821
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    .line 823
    sget-object v2, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Landroid/util/ArraySet;

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 824
    invoke-virtual {v7, v8, v9, v10, v2}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v2

    .line 828
    sget-object v3, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v3, v2}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 829
    invoke-static {v2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_27

    move v1, v12

    goto :goto_1c

    :cond_27
    const/4 v1, 0x0

    :goto_1c
    const/16 v2, 0x180

    .line 831
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-nez v1, :cond_29

    if-eqz v2, :cond_28

    goto :goto_1d

    :cond_28
    const/16 v1, 0x70

    .line 837
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    goto :goto_1e

    :cond_29
    :goto_1d
    if-eqz v4, :cond_2a

    or-int/lit8 v0, v0, 0x10

    :cond_2a
    :goto_1e
    const v1, 0x38000

    .line 845
    :goto_1f
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v1

    .line 134
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_2b

    if-nez v1, :cond_2b

    move v2, v12

    goto :goto_20

    :cond_2b
    const/4 v2, 0x0

    :goto_20
    const/high16 v3, 0x40000

    if-eqz v2, :cond_2c

    or-int/2addr v0, v3

    goto :goto_21

    .line 850
    :cond_2c
    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    .line 140
    :goto_21
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_2d

    if-nez v1, :cond_2d

    goto :goto_22

    :cond_2d
    const/4 v12, 0x0

    :goto_22
    const/high16 v1, 0x80000

    if-eqz v12, :cond_2e

    or-int/2addr v0, v1

    goto :goto_23

    .line 856
    :cond_2e
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    :goto_23
    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 858
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    goto/16 :goto_34

    .line 860
    :cond_2f
    sget-object v0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 47
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 34
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown protection level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "for permission "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " while evaluating permission statefor appId "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and userId "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 860
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    :cond_30
    move v12, v13

    const/4 v2, 0x4

    .line 727
    :goto_24
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v1, :cond_31

    if-eqz v4, :cond_31

    move v12, v2

    goto/16 :goto_32

    .line 65
    :cond_31
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/16 v4, 0x10

    .line 107
    invoke-static {v1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1056
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    .line 1059
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v4}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_25
    if-ge v6, v5, :cond_34

    .line 92
    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    .line 83
    check-cast v13, Ljava/lang/String;

    .line 1061
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v13, Lcom/android/server/pm/pkg/PackageState;

    .line 1062
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_32

    .line 1063
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_32

    .line 734
    invoke-virtual {v7, v8, v13, v14}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->checkPrivilegedPermissionAllowlist(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v13

    if-eqz v13, :cond_32

    move v13, v12

    goto :goto_26

    :cond_32
    const/4 v13, 0x0

    :goto_26
    if-eqz v13, :cond_33

    move v1, v12

    goto :goto_27

    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_34
    const/4 v1, 0x0

    :goto_27
    if-eqz v1, :cond_35

    goto :goto_28

    :cond_35
    const/4 v1, 0x0

    goto :goto_29

    :cond_36
    :goto_28
    move v1, v12

    .line 50
    :goto_29
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v4

    if-ne v4, v3, :cond_37

    move v3, v12

    goto :goto_2a

    :cond_37
    const/4 v3, 0x0

    :goto_2a
    if-eqz v3, :cond_3b

    .line 1056
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    .line 1059
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v4}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v5, :cond_3a

    .line 92
    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    .line 83
    check-cast v13, Ljava/lang/String;

    .line 1061
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v13, Lcom/android/server/pm/pkg/PackageState;

    .line 1062
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_38

    .line 1063
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_38

    .line 739
    invoke-virtual {v7, v8, v13, v14}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->shouldGrantPermissionBySignature(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v13

    if-eqz v13, :cond_38

    move v13, v12

    goto :goto_2c

    :cond_38
    const/4 v13, 0x0

    :goto_2c
    if-eqz v13, :cond_39

    move v3, v12

    goto :goto_2d

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_3a
    const/4 v3, 0x0

    :goto_2d
    if-eqz v3, :cond_3b

    move v3, v12

    goto :goto_2e

    :cond_3b
    const/4 v3, 0x0

    .line 1056
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    .line 1059
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v5}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v6

    const/4 v13, 0x0

    :goto_2f
    if-ge v13, v6, :cond_3e

    .line 92
    invoke-virtual {v5, v13}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    .line 83
    check-cast v15, Ljava/lang/String;

    .line 1061
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    .line 1062
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_3c

    .line 1063
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3c

    .line 744
    invoke-virtual {v7, v8, v2, v14}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move v2, v12

    goto :goto_30

    :cond_3c
    const/4 v2, 0x0

    :goto_30
    if-eqz v2, :cond_3d

    move v13, v12

    goto :goto_31

    :cond_3d
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x4

    goto :goto_2f

    :cond_3e
    const/4 v13, 0x0

    :goto_31
    if-eqz v1, :cond_40

    if-nez v3, :cond_3f

    if-eqz v13, :cond_40

    :cond_3f
    const/4 v12, 0x4

    goto :goto_32

    :cond_40
    const/4 v12, 0x0

    .line 65
    :goto_32
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/16 v2, 0x20

    .line 80
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_41

    and-int/lit8 v1, v0, 0x10

    or-int/2addr v12, v1

    .line 65
    :cond_41
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/high16 v2, 0x4000000

    .line 116
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_42

    and-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v12

    move v5, v0

    goto :goto_33

    :cond_42
    move v5, v12

    :goto_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 766
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_43
    :goto_34
    return-void
.end method

.method public final evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 16

    .line 644
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getUserIds()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    .line 76
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v11

    .line 646
    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v12

    .line 164
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_5

    .line 63
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1056
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    .line 1059
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v6}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_3

    .line 92
    invoke-virtual {v6, v9}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 83
    check-cast v10, Ljava/lang/String;

    .line 1061
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    .line 1062
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    const/4 v15, 0x1

    if-eqz v10, :cond_0

    .line 1063
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v10

    move-object/from16 v3, p2

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v15

    goto :goto_3

    :cond_0
    move-object/from16 v3, p2

    :cond_1
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v3, p2

    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_4

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move v8, v11

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 650
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v3, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .locals 7

    .line 1277
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Landroid/util/ArrayMap;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p1, :cond_2

    .line 57
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x2

    .line 1279
    invoke-static {p2, v3, v0, v5, v2}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1280
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 1281
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_0

    move-object v2, v4

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public final getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I
    .locals 3

    .line 1088
    invoke-virtual {p4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result p1

    const/16 p2, 0x2710

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1090
    invoke-virtual {p4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 1091
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1092
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result p2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public getDecision(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;)I
    .locals 0

    const-string/jumbo p0, "null cannot be cast to non-null type com.android.server.permission.access.UidUri"

    .line 65
    invoke-static {p2, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const-string/jumbo p0, "null cannot be cast to non-null type com.android.server.permission.access.PermissionUri"

    .line 66
    invoke-static {p3, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 67
    invoke-static {p2}, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getObjectScheme()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "permission"

    return-object p0
.end method

.method public final getOldStatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)I
    .locals 0

    .line 1328
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I
    .locals 0

    .line 1336
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getUidPermissionFlags()Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p0, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_2

    .line 88
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    :cond_2
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I
    .locals 0

    .line 1322
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Landroid/util/ArrayMap;
    .locals 0

    .line 1297
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionGroups()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissionTrees(Lcom/android/server/permission/access/GetStateScope;)Landroid/util/ArrayMap;
    .locals 0

    .line 1274
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissions(Lcom/android/server/permission/access/GetStateScope;)Landroid/util/ArrayMap;
    .locals 0

    .line 1303
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPrivilegedPermissionAllowlistState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 1005
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object p0

    .line 1006
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object p1

    .line 1007
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1009
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getVendorPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    .line 1012
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getProductPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    .line 1015
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1016
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSystemExtPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    .line 1020
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1027
    sget-object v1, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 1029
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is an APK in APEX but has permission allowlist on the system image, please bundle the allowlist in the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " APEX instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1026
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_3
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getApexPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_5

    move-object p0, p2

    goto :goto_0

    .line 1037
    :cond_4
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :cond_5
    :goto_0
    return-object p0
.end method

.method public getSubjectScheme()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "uid"

    return-object p0
.end method

.method public final getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Landroid/util/ArrayMap;
    .locals 0

    .line 1316
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getUidPermissionFlags()Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 867
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1070
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    .line 1073
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v1}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 92
    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1075
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 1076
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 869
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_f

    .line 45
    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 49
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 872
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    const-string v1, " in split permissions"

    if-eqz v0, :cond_e

    .line 50
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    goto/16 :goto_7

    .line 881
    :cond_3
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getOldStatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    goto/16 :goto_7

    .line 885
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getImplicitToSourcePermissions()Landroid/util/ArrayMap;

    move-result-object v0

    .line 885
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/collection/IndexedListSet;

    if-nez v0, :cond_6

    goto/16 :goto_7

    .line 887
    :cond_6
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v3

    .line 91
    invoke-virtual {v0}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v5

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v5, :cond_c

    .line 92
    invoke-virtual {v0, v14}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 889
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v2, :cond_b

    .line 893
    invoke-virtual {v6, v7, v8, v9, v15}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v2

    .line 894
    sget-object v15, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v15, v2}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v11

    .line 895
    invoke-virtual {v15, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v15

    if-eqz v11, :cond_7

    if-nez v15, :cond_7

    const/16 v17, 0x1

    goto :goto_5

    :cond_7
    const/16 v17, 0x0

    :goto_5
    if-eq v11, v15, :cond_8

    if-eqz v17, :cond_a

    :cond_8
    if-eqz v17, :cond_9

    const/4 v3, 0x0

    :cond_9
    const v11, 0xfffff8

    and-int/2addr v2, v11

    or-int/2addr v2, v3

    move v3, v2

    :cond_a
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    goto :goto_4

    .line 891
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown source permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 890
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 904
    :cond_c
    sget-object v0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->RETAIN_IMPLICIT_FLAGS_PERMISSIONS:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x1000

    .line 905
    invoke-static {v3, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    goto :goto_6

    :cond_d
    or-int/lit16 v0, v3, 0x1000

    :goto_6
    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 909
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 874
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown implicit permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    return-void
.end method

.method public final isCompatibilityPermissionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 5

    .line 917
    sget-object p0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 918
    invoke-virtual {v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 919
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v3

    if-ge v4, v3, :cond_0

    .line 921
    sget-object p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 922
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-granting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to old package "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 920
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isDeviceOrProfileOwnerUid(Lcom/android/server/permission/access/MutateStateScope;I)Z
    .locals 2

    .line 1243
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 1244
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getDeviceAndProfileOwners()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1245
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/PackageState;

    if-nez p1, :cond_1

    return v1

    .line 1246
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    if-ne p2, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 5

    .line 126
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 75
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/UserState;

    .line 127
    invoke-virtual {v2}, Lcom/android/server/permission/access/UserState;->getUidPermissionFlags()Landroid/util/SparseArray;

    move-result-object v3

    .line 96
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 128
    invoke-static {v2, v0, v4, v3}, Lcom/android/server/permission/access/WritableState;->requestWrite$default(Lcom/android/server/permission/access/WritableState;ZILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInitialized(Lcom/android/server/permission/access/MutateStateScope;)V
    .locals 13

    .line 85
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getConfigPermissions()Ljava/util/Map;

    move-result-object p0

    .line 1474
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 86
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v2

    .line 87
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v4, :cond_1

    .line 89
    iget-object v9, v0, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v9, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 91
    iget-boolean v10, v0, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    const/16 v11, 0xf

    const/4 v12, 0x0

    .line 90
    invoke-static/range {v4 .. v12}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_1
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 99
    iput-object v1, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v3, "android"

    .line 100
    iput-object v3, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x2

    .line 101
    iput v3, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 103
    iget-object v3, v0, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v3, :cond_2

    .line 104
    new-instance v10, Lcom/android/server/permission/access/permission/Permission;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 105
    iget-object v8, v0, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 106
    iget-boolean v9, v0, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    move-object v3, v10

    .line 104
    invoke-direct/range {v3 .. v9}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    move-object v0, v10

    goto :goto_1

    .line 109
    :cond_2
    new-instance v0, Lcom/android/server/permission/access/permission/Permission;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 178
    :goto_1
    invoke-virtual {v2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 6

    .line 174
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 175
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Landroid/util/ArraySet;)V

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    .line 177
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Landroid/util/ArraySet;)V

    .line 179
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Landroid/util/ArraySet;)V

    .line 180
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 181
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 48
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 45
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    .line 183
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    .line 186
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getUserIds()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    .line 76
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v3

    .line 187
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 3

    .line 193
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 197
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 198
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Landroid/util/ArraySet;)V

    .line 199
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 45
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 194
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reported as removed before disabled system package is enabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 193
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V
    .locals 0

    .line 212
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V

    return-void
.end method

.method public onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    .locals 2

    .line 81
    iget-object p0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/permission/UidPermissionPolicy$OnPermissionFlagsChangedListener;

    .line 81
    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/UidPermissionPolicy$OnPermissionFlagsChangedListener;->onStateMutated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Z)V
    .locals 7

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 138
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    .line 1491
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    .line 139
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 140
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Landroid/util/ArraySet;)V

    .line 144
    invoke-virtual {p0, p1, v2}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    .line 145
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Landroid/util/ArraySet;)V

    .line 146
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Landroid/util/ArraySet;)V

    .line 147
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 148
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-ge v3, v1, :cond_3

    .line 45
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 49
    check-cast v5, Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1, v5, v4}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    .line 1502
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 155
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 156
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    move-object v3, v1

    goto :goto_3

    :cond_6
    move-object v3, v4

    .line 160
    :goto_3
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    goto :goto_2

    .line 162
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object p3

    .line 1504
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    .line 163
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 164
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    .line 167
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getUserIds()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result v3

    move v4, v2

    :goto_5
    if-ge v4, v3, :cond_8

    .line 76
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v5

    .line 168
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-virtual {p0, p1, v6, v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method public onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V
    .locals 2

    .line 1251
    iget-object p1, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->privilegedPermissionAllowlistViolations:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1252
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 1253
    iget-object p0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->privilegedPermissionAllowlistViolations:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature|privileged permissions not in privileged permission allowlist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1252
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 4

    .line 117
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    .line 1478
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 63
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 121
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/AccessState;)V
    .locals 0

    .line 1258
    iget-object p0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/UidPermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/UidPermissionPersistence;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/AccessState;)V

    return-void
.end method

.method public parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/AccessState;I)V
    .locals 0

    .line 1266
    iget-object p0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/UidPermissionPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/UidPermissionPersistence;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/AccessState;I)V

    return-void
.end method

.method public final removePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)V
    .locals 1

    .line 1311
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object p0

    .line 34
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/permission/access/WritableState;->requestWrite$default(Lcom/android/server/permission/access/WritableState;ZILjava/lang/Object;)V

    return-void
.end method

.method public final resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V
    .locals 15

    move-object/from16 v0, p2

    move/from16 v7, p3

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 222
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    .line 38
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_b

    .line 39
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    if-nez v1, :cond_1

    :goto_1
    move-object v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    goto/16 :goto_7

    .line 137
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1056
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    .line 1059
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v2}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v3

    move v4, v10

    :goto_2
    if-ge v4, v3, :cond_5

    .line 92
    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 83
    check-cast v6, Ljava/lang/String;

    .line 1061
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/server/pm/pkg/PackageState;

    .line 1062
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    const/4 v13, 0x1

    if-eqz v12, :cond_3

    .line 1063
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 229
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v13

    if-eqz v6, :cond_3

    move v6, v13

    goto :goto_3

    :cond_3
    move v6, v10

    :goto_3
    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v13, v10

    :goto_4
    if-eqz v13, :cond_6

    goto :goto_1

    :cond_6
    move-object v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    .line 234
    invoke-virtual {p0, v13, v7, v14, v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v1

    const/16 v2, 0x180

    .line 235
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    const/16 v2, 0x8

    .line 240
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    const/16 v2, 0x10

    .line 244
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v1

    goto :goto_6

    :cond_9
    :goto_5
    or-int/lit8 v1, v1, 0x10

    :goto_6
    const v2, 0xf00060

    .line 246
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v1

    const/16 v2, 0x400

    .line 247
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_a

    or-int/lit16 v1, v1, 0x1000

    :cond_a
    move v6, v1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 250
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_8
    return-void
.end method

.method public final revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 609
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v9

    .line 164
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_e

    .line 57
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/UserState;

    .line 610
    invoke-virtual {v0}, Lcom/android/server/permission/access/UserState;->getUidPermissionFlags()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/ArrayMap;

    if-eqz v14, :cond_d

    .line 92
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    move v5, v0

    :goto_1
    const/4 v0, -0x1

    if-ge v0, v5, :cond_d

    .line 69
    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 612
    sget-object v0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->STORAGE_AND_MEDIA_PERMISSIONS:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v1, :cond_0

    goto/16 :goto_b

    .line 615
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v4, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v0

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    invoke-virtual {v6, v7, v8, v4, v2}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v2

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    if-ge v2, v3, :cond_1

    move/from16 v16, v15

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    if-lt v2, v3, :cond_2

    move v0, v15

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 622
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    .line 1059
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v3}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v11

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v11, :cond_5

    .line 92
    invoke-virtual {v3, v15}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v3

    .line 83
    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    .line 1061
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v17

    move-object/from16 v19, v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    .line 1062
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1063
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 623
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_5

    :cond_3
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 625
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    .line 1059
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v11}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v15

    move/from16 v17, v5

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v15, :cond_8

    .line 92
    invoke-virtual {v11, v5}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    .line 83
    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/String;

    .line 1061
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    .line 1062
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1063
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 626
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_8

    :cond_6
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_9

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, p0

    move-object/from16 v3, v19

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_9
    if-nez v0, :cond_9

    if-nez v2, :cond_9

    if-eqz v3, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_a

    if-eqz v16, :cond_b

    :cond_a
    const/16 v0, 0x10

    .line 630
    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0xf00070

    .line 631
    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v13

    move/from16 v6, v17

    .line 634
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    goto :goto_c

    :cond_b
    move/from16 v6, v17

    goto :goto_c

    :cond_c
    :goto_b
    move v6, v5

    :goto_c
    add-int/lit8 v5, v6, -0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p0

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .locals 0

    .line 1262
    iget-object p0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/UidPermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/UidPermissionPersistence;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    return-void
.end method

.method public serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 0

    .line 1270
    iget-object p0, p0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/UidPermissionPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/UidPermissionPersistence;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    return-void
.end method

.method public setDecision(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;I)V
    .locals 0

    const-string/jumbo p0, "null cannot be cast to non-null type com.android.server.permission.access.UidUri"

    .line 75
    invoke-static {p2, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const-string/jumbo p0, "null cannot be cast to non-null type com.android.server.permission.access.PermissionUri"

    .line 76
    invoke-static {p3, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 77
    invoke-static {p2}, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z
    .locals 7

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    .line 1344
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final shouldGrantPermissionByProtectionFlags(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .locals 9

    .line 1102
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1103
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getKnownPackages()Landroid/util/SparseArray;

    move-result-object v1

    .line 1104
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v4, 0x10

    .line 107
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v7, 0x4000

    .line 98
    invoke-static {v3, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1105
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1106
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1109
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v3

    .line 1110
    invoke-virtual {v3}, Lcom/android/server/permission/access/SystemState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1109
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v3, :cond_1

    .line 1111
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    .line 1113
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v7

    .line 34
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1113
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1114
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    .line 1116
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_4

    return v6

    .line 65
    :cond_4
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v7, 0x80

    .line 101
    invoke-static {v3, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1122
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v7, 0x17

    if-ge v3, v7, :cond_5

    return v6

    .line 65
    :cond_5
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v7, 0x100

    .line 86
    invoke-static {v3, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    .line 1129
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x7

    .line 1130
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    return v6

    .line 65
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v7, 0x200

    .line 131
    invoke-static {v3, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x4

    .line 1137
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    return v6

    .line 65
    :cond_8
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v7, 0x400

    .line 104
    invoke-static {v3, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1142
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_9

    return v6

    .line 65
    :cond_9
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/high16 v7, 0x8000000

    .line 92
    invoke-static {v3, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1147
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 151
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 1147
    invoke-virtual {v0, v3}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v6

    .line 65
    :cond_a
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/16 v3, 0x800

    .line 122
    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1153
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v6

    .line 65
    :cond_b
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v3, 0x10000

    .line 125
    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x6

    .line 1159
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v6

    .line 65
    :cond_c
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v3, 0x80000

    .line 77
    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xa

    .line 1164
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v6

    .line 65
    :cond_d
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v3, 0x100000

    .line 83
    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xb

    .line 1169
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v6

    .line 65
    :cond_e
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v3, 0x200000

    .line 71
    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xc

    .line 1175
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v6

    .line 65
    :cond_f
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v3, 0x800000

    .line 74
    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    .line 1180
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v6

    .line 65
    :cond_10
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v3, 0x1000000

    .line 113
    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1185
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1186
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->isDeviceOrProfileOwnerUid(Lcom/android/server/permission/access/MutateStateScope;I)Z

    move-result p0

    if-eqz p0, :cond_11

    return v6

    .line 65
    :cond_11
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x2000000

    .line 110
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x11

    .line 1193
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    return v6

    .line 65
    :cond_12
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x400000

    .line 95
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 1197
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5
.end method

.method public final shouldGrantPermissionBySignature(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .locals 2

    .line 943
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 944
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p2

    .line 945
    invoke-virtual {p2}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object p2

    .line 37
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 944
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    if-eqz p2, :cond_0

    .line 945
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 946
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p1

    .line 947
    invoke-virtual {p1}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object p1

    const-string p3, "android"

    .line 946
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/server/pm/pkg/PackageState;

    .line 947
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    const/4 p3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 948
    invoke-virtual {p2, p0, p3}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p2

    if-ne p2, v0, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-nez p2, :cond_3

    .line 950
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 951
    invoke-virtual {p1, p0, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method

.method public final shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .locals 3

    .line 34
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1209
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/16 v2, 0x10

    .line 107
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1212
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1216
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p1

    const p2, 0x8000

    .line 128
    invoke-static {p1, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1218
    sget-object p1, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 1219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be granted to privileged vendor app "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because it isn\'t a vendorPrivileged permission"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1217
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 65
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p3

    const/16 v1, 0x4000

    .line 98
    invoke-static {p3, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1228
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1229
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/SystemState;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object p1

    .line 1230
    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/permission/PermissionAllowlist;->getOemAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1235
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1233
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OEM permission "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " requested by package "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be explicitly declared granted or not"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1231
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return v2
.end method

.method public final trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 13

    .line 586
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1070
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    .line 1073
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v2}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 92
    invoke-virtual {v2, v5}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1075
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/server/pm/pkg/PackageState;

    .line 1076
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 595
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_1
    if-ge v4, v2, :cond_4

    .line 57
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/UserState;

    .line 598
    invoke-virtual {v5}, Lcom/android/server/permission/access/UserState;->getUidPermissionFlags()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/util/ArrayMap;

    if-eqz v11, :cond_3

    .line 92
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move v12, v5

    :goto_2
    const/4 v5, -0x1

    if-ge v5, v12, :cond_3

    .line 69
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    .line 599
    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, v3

    .line 600
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 21

    move-object/from16 v0, p2

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    .line 516
    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getPackageStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 517
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    if-nez v4, :cond_1

    return-void

    .line 521
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v5, :cond_2

    .line 522
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    .line 525
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Landroid/util/ArrayMap;

    move-result-object v6

    .line 92
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v9, 0x0

    move v10, v9

    :goto_2
    const/4 v11, -0x1

    if-ge v11, v7, :cond_d

    .line 69
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 132
    check-cast v12, Lcom/android/server/permission/access/permission/Permission;

    check-cast v11, Ljava/lang/String;

    .line 37
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 527
    invoke-static {v12, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz v2, :cond_6

    .line 528
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v12

    .line 38
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    move v14, v9

    :goto_3
    if-ge v14, v13, :cond_5

    .line 39
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 51
    check-cast v15, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 529
    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move v15, v8

    goto :goto_4

    :cond_3
    move v15, v9

    :goto_4
    if-eqz v15, :cond_4

    move v12, v9

    goto :goto_5

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    move v12, v8

    :goto_5
    if-eqz v12, :cond_b

    :cond_6
    if-eqz v5, :cond_a

    .line 532
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 38
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    move v14, v9

    :goto_6
    if-ge v14, v13, :cond_9

    .line 39
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 30
    check-cast v15, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 533
    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    move v15, v8

    goto :goto_7

    :cond_7
    move v15, v9

    :goto_7
    if-eqz v15, :cond_8

    move v11, v8

    goto :goto_8

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_9
    move v11, v9

    :goto_8
    if-ne v11, v8, :cond_a

    move v11, v8

    goto :goto_9

    :cond_a
    move v11, v9

    :goto_9
    if-nez v11, :cond_b

    move v11, v8

    goto :goto_a

    :cond_b
    move v11, v9

    :goto_a
    if-eqz v11, :cond_c

    .line 133
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move v10, v8

    :cond_c
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    :cond_d
    if-eqz v10, :cond_e

    .line 538
    invoke-static {v1, v9, v8, v3}, Lcom/android/server/permission/access/WritableState;->requestWrite$default(Lcom/android/server/permission/access/WritableState;ZILjava/lang/Object;)V

    .line 541
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v6

    .line 92
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v8

    :goto_b
    if-ge v11, v7, :cond_1c

    .line 69
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 132
    check-cast v12, Lcom/android/server/permission/access/permission/Permission;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 542
    invoke-virtual {v15, v14, v12}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->updatePermissionIfDynamic(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v12

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/permission/access/SystemState;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13, v7, v12}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 544
    invoke-static {v12, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    if-eqz v2, :cond_12

    .line 545
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v12

    .line 38
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    move v11, v9

    :goto_c
    if-ge v11, v13, :cond_11

    .line 39
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 51
    check-cast v16, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 546
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v17

    if-nez v17, :cond_f

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v8

    goto :goto_d

    :cond_f
    move v3, v9

    :goto_d
    if-eqz v3, :cond_10

    move v3, v9

    goto :goto_e

    :cond_10
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_c

    :cond_11
    move v3, v8

    :goto_e
    if-eqz v3, :cond_19

    :cond_12
    if-eqz v5, :cond_16

    .line 549
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 38
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    move v12, v9

    :goto_f
    if-ge v12, v11, :cond_15

    .line 39
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 30
    check-cast v13, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 550
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v16

    if-nez v16, :cond_13

    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    move v13, v8

    goto :goto_10

    :cond_13
    move v13, v9

    :goto_10
    if-eqz v13, :cond_14

    move v3, v8

    goto :goto_11

    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_15
    move v3, v9

    :goto_11
    if-ne v3, v8, :cond_16

    move v3, v8

    goto :goto_12

    :cond_16
    move v3, v9

    :goto_12
    if-nez v3, :cond_19

    .line 558
    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getUserIds()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result v11

    move v12, v9

    :goto_13
    if-ge v12, v11, :cond_18

    .line 76
    invoke-virtual {v3, v12}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v19

    .line 559
    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v13

    .line 164
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v8

    :goto_14
    if-ge v9, v8, :cond_17

    .line 63
    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    const/16 v18, 0x0

    move-object/from16 v20, v13

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v15, v16

    move/from16 v16, v19

    move-object/from16 v17, v10

    .line 560
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v15, p0

    move-object/from16 v13, v20

    goto :goto_14

    :cond_17
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_13

    :cond_18
    move-object/from16 v8, p3

    .line 86
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 564
    invoke-static {v1, v9, v10, v3}, Lcom/android/server/permission/access/WritableState;->requestWrite$default(Lcom/android/server/permission/access/WritableState;ZILjava/lang/Object;)V

    move v11, v10

    goto :goto_16

    :cond_19
    move v10, v8

    const/4 v3, 0x0

    goto :goto_15

    :cond_1a
    move v10, v8

    :goto_15
    move-object/from16 v8, p3

    move v11, v9

    :goto_16
    if-eqz v11, :cond_1b

    .line 133
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v7, v7, -0x1

    move v8, v10

    const/4 v11, -0x1

    goto/16 :goto_b

    :cond_1c
    return-void
.end method

.method public final updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z
    .locals 15

    move/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v0, p5

    .line 1353
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v1

    move/from16 v8, p3

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/UserState;

    .line 1354
    invoke-virtual {v1}, Lcom/android/server/permission/access/UserState;->getUidPermissionFlags()Landroid/util/SparseArray;

    move-result-object v2

    .line 1355
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    const/4 v4, 0x0

    .line 1356
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v3, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_1

    .line 88
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1

    :cond_1
    :goto_0
    move-object v9, v5

    .line 1356
    :goto_1
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 1357
    invoke-static {v9, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v10

    and-int v0, p6, v0

    or-int/2addr v10, v0

    if-ne v9, v10, :cond_2

    return v4

    :cond_2
    if-nez v3, :cond_3

    .line 1362
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1363
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 1365
    :cond_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_5

    .line 112
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 113
    invoke-static {v0, v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 114
    invoke-static {v0, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 115
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    .line 117
    :cond_4
    invoke-virtual {v3, v11, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 122
    :cond_5
    invoke-static {v0, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 123
    invoke-virtual {v3, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    :cond_6
    :goto_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->remove(I)V

    :cond_7
    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 1369
    invoke-static {v1, v4, v11, v0}, Lcom/android/server/permission/access/WritableState;->requestWrite$default(Lcom/android/server/permission/access/WritableState;ZILjava/lang/Object;)V

    move-object v0, p0

    .line 1370
    iget-object v12, v0, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 91
    invoke-virtual {v12}, Lcom/android/server/permission/access/collection/IndexedListSet;->size()I

    move-result v13

    move v14, v4

    :goto_3
    if-ge v14, v13, :cond_8

    .line 92
    invoke-virtual {v12, v14}, Lcom/android/server/permission/access/collection/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/UidPermissionPolicy$OnPermissionFlagsChangedListener;

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move v4, v9

    move v5, v10

    .line 1371
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/UidPermissionPolicy$OnPermissionFlagsChangedListener;->onPermissionFlagsChanged(IILjava/lang/String;II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_8
    return v11
.end method

.method public final updatePermissionIfDynamic(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/permission/access/permission/Permission;
    .locals 9

    .line 43
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p2

    .line 34
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 576
    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    if-nez p0, :cond_2

    return-object p2

    .line 579
    :cond_2
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 580
    iput-object p1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 581
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x34

    const/4 v8, 0x0

    move-object v0, p2

    .line 578
    invoke-static/range {v0 .. v8}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    return-object p0
.end method
