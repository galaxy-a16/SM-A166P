.class public final Lcom/android/server/uri/UriGrantsManagerService$LocalService;
.super Ljava/lang/Object;
.source "UriGrantsManagerService.java"

# interfaces
.implements Lcom/android/server/uri/UriGrantsManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0

    .line 1438
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$LocalService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    return-void
.end method


# virtual methods
.method public checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 1

    .line 1525
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1526
    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1528
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 8

    .line 1464
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const-string v1, "checkGrantUriPermission"

    invoke-static {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$menforceNotIsolatedCaller(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V

    .line 1465
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mcheckGrantUriPermissionUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I

    move-result p0

    return p0
.end method

.method public checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;
    .locals 8

    if-eqz p1, :cond_0

    .line 1472
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 1473
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mcheckGrantUriPermissionFromIntentUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object p0

    return-object p0
.end method

.method public checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1456
    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mcheckUriPermissionLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1458
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 8

    .line 1533
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1536
    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v1}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_7

    if-eqz p3, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    iget-object v1, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0x400000

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, -0x2

    :goto_0
    move v1, v2

    move v3, v1

    move v4, v3

    .line 1543
    :goto_1
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v5}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 1544
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v5}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    const/4 v6, -0x1

    if-lt p3, v6, :cond_1

    .line 1545
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v6, p3, :cond_1

    goto :goto_3

    .line 1548
    :cond_1
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v6}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v6

    .line 1549
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    .line 1551
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    const-string v1, "  Granted Uri Permissions:"

    .line 1553
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    move v1, v3

    move v4, v1

    :cond_3
    const-string v7, "  * UID "

    .line 1557
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " holds:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    const-string v7, "    "

    .line 1559
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    const-string v7, "      "

    .line 1561
    invoke-virtual {v6, p1, v7}, Lcom/android/server/uri/UriPermission;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v1

    :cond_7
    if-nez v2, :cond_8

    const-string p0, "  (nothing)"

    .line 1568
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 0

    .line 1480
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mgrantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .line 1492
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const-string/jumbo v1, "newUriPermissionOwner"

    invoke-static {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$menforceNotIsolatedCaller(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V

    .line 1493
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    invoke-direct {v0, p0, p1}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    .line 1494
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public onSystemReady()V
    .locals 1

    .line 1485
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1486
    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mreadGrantedUriPermissionsLocked(Lcom/android/server/uri/UriGrantsManagerService;)V

    .line 1487
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1442
    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mremoveUriPermissionIfNeededLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V

    .line 1443
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V
    .locals 1

    .line 1500
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1501
    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mremoveUriPermissionsForPackageLocked(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V

    .line 1503
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 0

    .line 1449
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mrevokeUriPermission(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1508
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V

    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V
    .locals 0

    .line 1514
    invoke-static {p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1518
    :cond_0
    new-instance p1, Lcom/android/server/uri/GrantUri;

    invoke-direct {p1, p4, p2, p3}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 1519
    :goto_0
    invoke-virtual {p0, p1, p3, p5, p6}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;ILjava/lang/String;I)V

    return-void

    .line 1516
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown owner: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
