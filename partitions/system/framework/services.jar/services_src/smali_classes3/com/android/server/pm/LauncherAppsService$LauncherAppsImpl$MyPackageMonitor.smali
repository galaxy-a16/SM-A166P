.class public Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public static synthetic $r8$lambda$8mFu6OWxFR6G5ogG5Wju9c-1m48(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->lambda$onShortcutChanged$0(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0

    .line 1883
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method

.method private synthetic lambda$onShortcutChanged$0(Ljava/lang/String;I)V
    .locals 0

    .line 2114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onShortcutChangedInner(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 12

    .line 1889
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1890
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling onPackageAdded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LauncherAppsService"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1896
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/pm/IOnAppsChangedListener;

    .line 1897
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1898
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v8, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v9, "onPackageAdded"

    invoke-static {v7, v8, v0, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, ")"

    const-string v9, ", "

    const-string v10, "("

    const-string v11, ", listener: "

    if-nez v7, :cond_0

    .line 1900
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip onPackageAdded(not enabled): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1906
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7, p1, v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misPackageVisibleToListener(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1908
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip onPackageAdded(not visible): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1916
    :cond_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    invoke-interface {v5, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_3
    const-string v6, "Callback failed "

    .line 1922
    invoke-static {v4, v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 1926
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1927
    throw p1

    .line 1926
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1928
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 1929
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p2

    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1931
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 1929
    invoke-virtual {p2, p1, v1, p0}, Landroid/content/pm/PackageManagerInternal;->registerInstalledLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;I)Z

    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;)V
    .locals 2

    .line 1941
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1943
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7

    .line 1948
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1951
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    .line 1952
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1953
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v5, v3, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v6, "onPackageModified"

    invoke-static {v4, v5, p2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1956
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4, p1, v3, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misPackageVisibleToListener(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    goto :goto_1

    .line 1960
    :cond_1
    :try_start_1
    invoke-interface {v2, p2, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "LauncherAppsService"

    const-string v4, "Callback failed "

    .line 1962
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1966
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1967
    throw p1

    .line 1966
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 1936
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    .line 1937
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageStateChanged(Ljava/lang/String;I)V
    .locals 0

    .line 2170
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    .line 2171
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 8

    .line 1972
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1973
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1976
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1977
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1978
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesAvailable"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 1981
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 1982
    invoke-static {v5, p1, v4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)[Ljava/lang/String;

    move-result-object v4

    .line 1984
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1988
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v5

    invoke-interface {v3, v0, v4, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "LauncherAppsService"

    const-string v5, "Callback failed "

    .line 1990
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1994
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1995
    throw p1

    .line 1994
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1997
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .locals 11

    .line 2032
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2033
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2034
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2035
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p1, v5

    .line 2036
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    .line 2038
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 2037
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManagerInternal;->getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2040
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2042
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2046
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 2045
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 2047
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    move v3, v4

    :goto_2
    if-ge v3, v2, :cond_6

    .line 2050
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/pm/IOnAppsChangedListener;

    .line 2051
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 2052
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v8, v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v9, "onPackagesSuspended"

    invoke-static {v7, v8, v0, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_5

    .line 2055
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2056
    invoke-static {v7, p1, v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)[Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    :try_start_1
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    .line 2059
    invoke-interface {v5, v0, v7, v8}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    move v7, v4

    .line 2062
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 2063
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 2064
    iget-object v9, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-static {v9, v10, v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misPackageVisibleToListener(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    .line 2068
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    aput-object v10, v9, v4

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-interface {v5, v0, v9, v8}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    .line 2073
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2077
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2078
    throw p1

    .line 2077
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 8

    .line 2002
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2003
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2006
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 2007
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 2008
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesUnavailable"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 2011
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2012
    invoke-static {v5, p1, v4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)[Ljava/lang/String;

    move-result-object v4

    .line 2014
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2018
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v5

    invoke-interface {v3, v0, v4, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "LauncherAppsService"

    const-string v5, "Callback failed "

    .line 2020
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2024
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2025
    throw p1

    .line 2024
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2027
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 8

    .line 2083
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2084
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2087
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 2088
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 2089
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesUnsuspended"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 2092
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2093
    invoke-static {v5, p1, v4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)[Ljava/lang/String;

    move-result-object v4

    .line 2095
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2099
    :cond_1
    :try_start_1
    invoke-interface {v3, v0, v4}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "LauncherAppsService"

    const-string v5, "Callback failed "

    .line 2101
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2105
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2106
    throw p1

    .line 2105
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2108
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    return-void
.end method

.method public onShortcutChanged(Ljava/lang/String;I)V
    .locals 2

    .line 2114
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->postToPackageMonitorHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onShortcutChangedInner(Ljava/lang/String;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const-string v14, "LauncherAppsService"

    .line 2119
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    .line 2121
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v13, :cond_3

    .line 2124
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    .line 2125
    iget-object v2, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 2126
    iget-object v3, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v4, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v5, "onShortcutChanged"

    invoke-static {v3, v4, v12, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move/from16 v17, v11

    move-object v2, v12

    move/from16 v16, v13

    move-object v1, v14

    goto/16 :goto_3

    .line 2129
    :cond_0
    iget-object v3, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3, v15, v2, v12}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misPackageVisibleToListener(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 2132
    :cond_1
    iget-object v3, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 2135
    iget-object v4, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmShortcutServiceInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v7, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 2144
    :cond_2
    iget-object v4, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmShortcutServiceInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x41f

    move/from16 v17, v11

    iget v11, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v2, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move-object/from16 v7, p1

    move/from16 v19, v11

    move/from16 v11, v16

    move-object/from16 v20, v12

    move/from16 v12, p2

    move/from16 v16, v13

    move/from16 v13, v19

    move-object v1, v14

    move/from16 v14, v18

    .line 2145
    :try_start_2
    invoke-virtual/range {v2 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2153
    :try_start_3
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v2, v20

    :try_start_4
    invoke-interface {v0, v2, v15, v3}, Landroid/content/pm/IOnAppsChangedListener;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v2, v20

    :goto_2
    :try_start_5
    const-string v3, "Callback failed "

    .line 2156
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    add-int/lit8 v11, v17, 0x1

    move-object v14, v1

    move-object v12, v2

    move/from16 v13, v16

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object/from16 v1, p0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    .line 2164
    :cond_3
    :goto_4
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    :goto_5
    move-object v2, v14

    .line 2162
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :goto_7
    return-void

    .line 2164
    :goto_8
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2165
    throw v0
.end method
