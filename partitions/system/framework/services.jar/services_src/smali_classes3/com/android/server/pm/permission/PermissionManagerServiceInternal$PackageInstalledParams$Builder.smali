.class public final Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;
.super Ljava/lang/Object;
.source "PermissionManagerServiceInternal.java"


# instance fields
.field public mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public mAutoRevokePermissionsMode:I

.field public mPermissionStates:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mPermissionStates:Landroid/util/ArrayMap;

    .line 417
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 v0, 0x3

    .line 418
    iput v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAutoRevokePermissionsMode:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
    .locals 4

    .line 474
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    .line 475
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mPermissionStates:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAutoRevokePermissionsMode:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;-><init>(Landroid/util/ArrayMap;Ljava/util/List;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams-IA;)V

    return-object v0
.end method

.method public setAllowlistedRestrictedPermissions(Ljava/util/List;)V
    .locals 1

    .line 445
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    return-void
.end method

.method public setAutoRevokePermissionsMode(I)V
    .locals 0

    .line 464
    iput p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAutoRevokePermissionsMode:I

    return-void
.end method

.method public setPermissionStates(Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;
    .locals 0

    .line 428
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mPermissionStates:Landroid/util/ArrayMap;

    return-object p0
.end method
