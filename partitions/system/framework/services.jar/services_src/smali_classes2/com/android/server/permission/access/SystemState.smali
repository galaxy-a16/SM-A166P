.class public final Lcom/android/server/permission/access/SystemState;
.super Lcom/android/server/permission/access/WritableState;
.source "AccessState.kt"


# instance fields
.field public final appIds:Landroid/util/SparseArray;

.field public configPermissions:Ljava/util/Map;

.field public deviceAndProfileOwners:Landroid/util/SparseArray;

.field public disabledSystemPackageStates:Ljava/util/Map;

.field public implicitToSourcePermissions:Landroid/util/ArrayMap;

.field public isLeanback:Z

.field public isSystemReady:Z

.field public knownPackages:Landroid/util/SparseArray;

.field public packageStates:Ljava/util/Map;

.field public permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

.field public final permissionGroups:Landroid/util/ArrayMap;

.field public final permissionTrees:Landroid/util/ArrayMap;

.field public final permissions:Landroid/util/ArrayMap;

.field public privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/collection/IndexedListSet;

.field public final userIds:Lcom/android/server/permission/access/collection/IntSet;


# direct methods
.method public constructor <init>()V
    .locals 16

    .line 62
    new-instance v1, Lcom/android/server/permission/access/collection/IntSet;

    invoke-direct {v1}, Lcom/android/server/permission/access/collection/IntSet;-><init>()V

    .line 63
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 64
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 65
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 66
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    const/4 v6, 0x0

    .line 68
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 69
    new-instance v8, Lcom/android/server/permission/access/collection/IndexedListSet;

    invoke-direct {v8}, Lcom/android/server/permission/access/collection/IndexedListSet;-><init>()V

    .line 70
    new-instance v9, Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-direct {v9}, Lcom/android/server/pm/permission/PermissionAllowlist;-><init>()V

    .line 71
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    const/4 v11, 0x0

    .line 73
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 74
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 75
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 76
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    .line 61
    invoke-direct/range {v0 .. v15}, Lcom/android/server/permission/access/SystemState;-><init>(Lcom/android/server/permission/access/collection/IntSet;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Landroid/util/SparseArray;ZLjava/util/Map;Lcom/android/server/permission/access/collection/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Landroid/util/ArrayMap;ZLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/collection/IntSet;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Landroid/util/SparseArray;ZLjava/util/Map;Lcom/android/server/permission/access/collection/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Landroid/util/ArrayMap;ZLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/server/permission/access/WritableState;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/permission/access/SystemState;->userIds:Lcom/android/server/permission/access/collection/IntSet;

    .line 43
    iput-object p2, p0, Lcom/android/server/permission/access/SystemState;->packageStates:Ljava/util/Map;

    .line 44
    iput-object p3, p0, Lcom/android/server/permission/access/SystemState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 45
    iput-object p4, p0, Lcom/android/server/permission/access/SystemState;->appIds:Landroid/util/SparseArray;

    .line 47
    iput-object p5, p0, Lcom/android/server/permission/access/SystemState;->knownPackages:Landroid/util/SparseArray;

    .line 48
    iput-boolean p6, p0, Lcom/android/server/permission/access/SystemState;->isLeanback:Z

    .line 49
    iput-object p7, p0, Lcom/android/server/permission/access/SystemState;->configPermissions:Ljava/util/Map;

    .line 50
    iput-object p8, p0, Lcom/android/server/permission/access/SystemState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 51
    iput-object p9, p0, Lcom/android/server/permission/access/SystemState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 52
    iput-object p10, p0, Lcom/android/server/permission/access/SystemState;->implicitToSourcePermissions:Landroid/util/ArrayMap;

    .line 53
    iput-boolean p11, p0, Lcom/android/server/permission/access/SystemState;->isSystemReady:Z

    .line 56
    iput-object p12, p0, Lcom/android/server/permission/access/SystemState;->deviceAndProfileOwners:Landroid/util/SparseArray;

    .line 57
    iput-object p13, p0, Lcom/android/server/permission/access/SystemState;->permissionGroups:Landroid/util/ArrayMap;

    .line 58
    iput-object p14, p0, Lcom/android/server/permission/access/SystemState;->permissionTrees:Landroid/util/ArrayMap;

    .line 59
    iput-object p15, p0, Lcom/android/server/permission/access/SystemState;->permissions:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final copy()Lcom/android/server/permission/access/SystemState;
    .locals 20

    move-object/from16 v0, p0

    .line 81
    iget-object v1, v0, Lcom/android/server/permission/access/SystemState;->userIds:Lcom/android/server/permission/access/collection/IntSet;

    invoke-virtual {v1}, Lcom/android/server/permission/access/collection/IntSet;->copy()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v3

    .line 82
    iget-object v4, v0, Lcom/android/server/permission/access/SystemState;->packageStates:Ljava/util/Map;

    .line 83
    iget-object v5, v0, Lcom/android/server/permission/access/SystemState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 84
    iget-object v1, v0, Lcom/android/server/permission/access/SystemState;->appIds:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v6

    .line 164
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_0

    .line 75
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 44
    check-cast v8, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 84
    invoke-virtual {v8}, Lcom/android/server/permission/access/collection/IndexedListSet;->copy()Lcom/android/server/permission/access/collection/IndexedListSet;

    move-result-object v8

    .line 44
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v7, v0, Lcom/android/server/permission/access/SystemState;->knownPackages:Landroid/util/SparseArray;

    .line 86
    iget-boolean v8, v0, Lcom/android/server/permission/access/SystemState;->isLeanback:Z

    .line 87
    iget-object v9, v0, Lcom/android/server/permission/access/SystemState;->configPermissions:Ljava/util/Map;

    .line 88
    iget-object v10, v0, Lcom/android/server/permission/access/SystemState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 89
    iget-object v11, v0, Lcom/android/server/permission/access/SystemState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 90
    iget-object v12, v0, Lcom/android/server/permission/access/SystemState;->implicitToSourcePermissions:Landroid/util/ArrayMap;

    .line 91
    iget-boolean v13, v0, Lcom/android/server/permission/access/SystemState;->isSystemReady:Z

    .line 92
    iget-object v14, v0, Lcom/android/server/permission/access/SystemState;->deviceAndProfileOwners:Landroid/util/SparseArray;

    .line 93
    iget-object v1, v0, Lcom/android/server/permission/access/SystemState;->permissionGroups:Landroid/util/ArrayMap;

    .line 42
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 74
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 75
    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v1

    .line 44
    move-object/from16 v1, v17

    check-cast v1, Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {v15, v2, v1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v18

    goto :goto_1

    .line 94
    :cond_1
    iget-object v1, v0, Lcom/android/server/permission/access/SystemState;->permissionTrees:Landroid/util/ArrayMap;

    .line 42
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 74
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move-object/from16 v17, v15

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v1, :cond_2

    .line 75
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v1

    .line 44
    move-object/from16 v1, v18

    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    invoke-virtual {v2, v15, v1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v19

    goto :goto_2

    .line 95
    :cond_2
    iget-object v0, v0, Lcom/android/server/permission/access/SystemState;->permissions:Landroid/util/ArrayMap;

    .line 42
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 74
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v0, :cond_3

    .line 75
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p0, v0

    .line 44
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    invoke-virtual {v1, v15, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p0

    goto :goto_3

    .line 80
    :cond_3
    new-instance v0, Lcom/android/server/permission/access/SystemState;

    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v15, v17

    move-object/from16 v17, v1

    invoke-direct/range {v2 .. v17}, Lcom/android/server/permission/access/SystemState;-><init>(Lcom/android/server/permission/access/collection/IntSet;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Landroid/util/SparseArray;ZLjava/util/Map;Lcom/android/server/permission/access/collection/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Landroid/util/ArrayMap;ZLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public final getAppIds()Landroid/util/SparseArray;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->appIds:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getConfigPermissions()Ljava/util/Map;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->configPermissions:Ljava/util/Map;

    return-object p0
.end method

.method public final getDeviceAndProfileOwners()Landroid/util/SparseArray;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->deviceAndProfileOwners:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getDisabledSystemPackageStates()Ljava/util/Map;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->disabledSystemPackageStates:Ljava/util/Map;

    return-object p0
.end method

.method public final getImplicitToSourcePermissions()Landroid/util/ArrayMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->implicitToSourcePermissions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getKnownPackages()Landroid/util/SparseArray;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->knownPackages:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getPackageStates()Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->packageStates:Ljava/util/Map;

    return-object p0
.end method

.method public final getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    return-object p0
.end method

.method public final getPermissionGroups()Landroid/util/ArrayMap;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionGroups:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getPermissionTrees()Landroid/util/ArrayMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionTrees:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getPermissions()Landroid/util/ArrayMap;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getPrivilegedPermissionAllowlistPackages()Lcom/android/server/permission/access/collection/IndexedListSet;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/collection/IndexedListSet;

    return-object p0
.end method

.method public final getUserIds()Lcom/android/server/permission/access/collection/IntSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->userIds:Lcom/android/server/permission/access/collection/IntSet;

    return-object p0
.end method

.method public final isLeanback()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/server/permission/access/SystemState;->isLeanback:Z

    return p0
.end method

.method public final isSystemReady()Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/server/permission/access/SystemState;->isSystemReady:Z

    return p0
.end method

.method public final setConfigPermissions(Ljava/util/Map;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/server/permission/access/SystemState;->configPermissions:Ljava/util/Map;

    return-void
.end method

.method public final setDisabledSystemPackageStates(Ljava/util/Map;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/server/permission/access/SystemState;->disabledSystemPackageStates:Ljava/util/Map;

    return-void
.end method

.method public final setImplicitToSourcePermissions(Landroid/util/ArrayMap;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/server/permission/access/SystemState;->implicitToSourcePermissions:Landroid/util/ArrayMap;

    return-void
.end method

.method public final setKnownPackages(Landroid/util/SparseArray;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/server/permission/access/SystemState;->knownPackages:Landroid/util/SparseArray;

    return-void
.end method

.method public final setLeanback(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/server/permission/access/SystemState;->isLeanback:Z

    return-void
.end method

.method public final setPackageStates(Ljava/util/Map;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/server/permission/access/SystemState;->packageStates:Ljava/util/Map;

    return-void
.end method

.method public final setPermissionAllowlist(Lcom/android/server/pm/permission/PermissionAllowlist;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/server/permission/access/SystemState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    return-void
.end method

.method public final setPrivilegedPermissionAllowlistPackages(Lcom/android/server/permission/access/collection/IndexedListSet;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/server/permission/access/SystemState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/collection/IndexedListSet;

    return-void
.end method

.method public final setSystemReady(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/server/permission/access/SystemState;->isSystemReady:Z

    return-void
.end method
