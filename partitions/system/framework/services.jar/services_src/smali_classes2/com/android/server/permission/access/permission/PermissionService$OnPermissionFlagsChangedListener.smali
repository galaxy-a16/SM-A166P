.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
.super Lcom/android/server/permission/access/permission/UidPermissionPolicy$OnPermissionFlagsChangedListener;
.source "PermissionService.kt"


# instance fields
.field public final gidsChangedUids:Lcom/android/server/permission/access/collection/IntSet;

.field public isKillRuntimePermissionRevokedUidsSkipped:Z

.field public isPermissionFlagsChanged:Z

.field public final killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

.field public final runtimePermissionChangedUids:Lcom/android/server/permission/access/collection/IntSet;

.field public final runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;)V
    .locals 0

    .line 2128
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 2129
    invoke-direct {p0}, Lcom/android/server/permission/access/permission/UidPermissionPolicy$OnPermissionFlagsChangedListener;-><init>()V

    .line 2132
    new-instance p1, Lcom/android/server/permission/access/collection/IntSet;

    invoke-direct {p1}, Lcom/android/server/permission/access/collection/IntSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUids:Lcom/android/server/permission/access/collection/IntSet;

    .line 2134
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2135
    new-instance p1, Lcom/android/server/permission/access/collection/IntSet;

    invoke-direct {p1}, Lcom/android/server/permission/access/collection/IntSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/collection/IntSet;

    .line 2138
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    return-void
.end method

.method public static final synthetic access$isAppBackupAndRestoreRunning(Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;I)Z
    .locals 0

    .line 2128
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isAppBackupAndRestoreRunning(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addKillRuntimePermissionRevokedUidsReason(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V
    .locals 0

    .line 2145
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    .line 86
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isAppBackupAndRestoreRunning(I)Z
    .locals 4

    .line 2223
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    const-string v1, "android.permission.BACKUP"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/permission/access/permission/PermissionService;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2228
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getContext$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2229
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string/jumbo v0, "user_setup_complete"

    .line 2230
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string/jumbo v3, "user_setup_personalization_state"

    .line 2233
    invoke-static {p0, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v2, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2238
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getLOG_TAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check if the user is in restore: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return v1
.end method

.method public onPermissionFlagsChanged(IILjava/lang/String;II)V
    .locals 4

    const/4 v0, 0x1

    .line 2155
    iput-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 2157
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 2158
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-static {p2}, Lcom/android/server/permission/access/permission/PermissionService;->access$getService$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/AccessCheckingService;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 264
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    if-nez p2, :cond_0

    const-string/jumbo p2, "state"

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-direct {v2, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2159
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/UidPermissionPolicy;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/permission/Permission;

    if-nez p2, :cond_1

    return-void

    .line 2161
    :cond_1
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, p4}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p4

    .line 2162
    invoke-virtual {v1, p5}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p5

    .line 50
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 2169
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUids:Lcom/android/server/permission/access/collection/IntSet;

    .line 111
    invoke-virtual {v1, p1}, Lcom/android/server/permission/access/collection/IntSet;->add(I)V

    if-eqz p4, :cond_5

    if-nez p5, :cond_5

    .line 2171
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2172
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getNOTIFICATIONS_PERMISSIONS$cp()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 2173
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    if-nez p3, :cond_3

    move p3, v0

    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p3

    :goto_1
    if-eqz p3, :cond_4

    move p3, v0

    goto :goto_2

    :cond_4
    move p3, v2

    .line 167
    :goto_2
    invoke-virtual {v1, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 154
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_6

    move v2, v0

    :cond_6
    xor-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_7

    if-nez p4, :cond_7

    if-eqz p5, :cond_7

    .line 2178
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/collection/IntSet;

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/collection/IntSet;->add(I)V

    :cond_7
    return-void
.end method

.method public onStateMutated()V
    .locals 19

    move-object/from16 v6, p0

    .line 2183
    iget-boolean v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 2184
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 2185
    iput-boolean v7, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 2188
    :cond_0
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUids:Lcom/android/server/permission/access/collection/IntSet;

    iget-object v1, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 75
    invoke-virtual {v0}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result v2

    move v3, v7

    :goto_0
    if-ge v3, v2, :cond_2

    .line 76
    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v4

    .line 2189
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getOnPermissionsChangeListeners$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "onPermissionsChangeListeners"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move-object v8, v5

    :goto_1
    invoke-virtual {v8, v4}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->onPermissionsChanged(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2191
    :cond_2
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUids:Lcom/android/server/permission/access/collection/IntSet;

    invoke-virtual {v0}, Lcom/android/server/permission/access/collection/IntSet;->clear()V

    .line 2193
    iget-boolean v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    const-string v9, "handler"

    if-nez v0, :cond_5

    .line 2194
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2195
    iget-object v10, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    const-string v11, ", "

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "permissions revoked"

    :goto_2
    move-object v10, v0

    .line 2199
    iget-object v11, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    iget-object v12, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 171
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    move v14, v7

    :goto_3
    if-ge v14, v13, :cond_5

    .line 53
    invoke-virtual {v11, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v11, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    .line 2201
    invoke-static {v12}, Lcom/android/server/permission/access/permission/PermissionService;->access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    move-object v15, v0

    :goto_4
    new-instance v5, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;

    move-object v0, v5

    move-object/from16 v2, p0

    move-object v4, v12

    move-object v8, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;-><init>(ZLcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;ILcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2211
    :cond_5
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2213
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/collection/IntSet;

    iget-object v1, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 75
    invoke-virtual {v0}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result v2

    move v3, v7

    :goto_5
    if-ge v3, v2, :cond_7

    .line 76
    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v4

    .line 2214
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_6
    new-instance v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;

    invoke-direct {v8, v1, v4}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2216
    :cond_7
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/collection/IntSet;

    invoke-virtual {v0}, Lcom/android/server/permission/access/collection/IntSet;->clear()V

    .line 2218
    iput-boolean v7, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    .line 2219
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public final skipKillRuntimePermissionRevokedUids(Lcom/android/server/permission/access/MutateStateScope;)V
    .locals 0

    const/4 p1, 0x1

    .line 2141
    iput-boolean p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    return-void
.end method
