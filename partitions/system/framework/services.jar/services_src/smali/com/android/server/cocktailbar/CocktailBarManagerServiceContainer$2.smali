.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;
.super Landroid/content/pm/LauncherApps$Callback;
.source "CocktailBarManagerServiceContainer.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    .line 1334
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1359
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1360
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1362
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 1364
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_0

    .line 1366
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageAdded(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1370
    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_2

    .line 1372
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageAdded(Ljava/lang/String;)V

    .line 1375
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1380
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1381
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1383
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 1385
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_0

    .line 1387
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageChanged(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1391
    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_2

    .line 1393
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageChanged(Ljava/lang/String;)V

    .line 1396
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1338
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1339
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1341
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 1343
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_0

    .line 1345
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1349
    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_2

    .line 1351
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;)V

    .line 1354
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public final onPackagesSuspendChanged([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 3

    .line 1421
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1422
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1424
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 1426
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_0

    .line 1428
    invoke-virtual {v2, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackagesSuspendChanged([Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1432
    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmCocktailBarServices(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_2

    .line 1434
    invoke-virtual {p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackagesSuspendChanged([Ljava/lang/String;Z)V

    .line 1437
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1411
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->onPackagesSuspendChanged([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    .line 1416
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->onPackagesSuspendChanged([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method
