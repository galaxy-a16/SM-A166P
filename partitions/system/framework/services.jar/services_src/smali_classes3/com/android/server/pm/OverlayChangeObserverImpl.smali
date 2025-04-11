.class public final Lcom/android/server/pm/OverlayChangeObserverImpl;
.super Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;
.source "OverlayChangeObserverImpl.java"


# instance fields
.field public callbackCompleted:Z

.field public final mDidLaunch:I

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mTargetPackage:Ljava/lang/String;

.field public final mType:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

.field public final overlayLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;-><init>(II)V

    .line 29
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->overlayLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->callbackCompleted:Z

    .line 36
    iput p2, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mDidLaunch:I

    .line 37
    iput-object p3, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mType:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 38
    iput-object p5, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mTargetPackage:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public onChangeCompleted(ZI)V
    .locals 8

    .line 44
    iget-object p1, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->overlayLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "PackageManager"

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLocaleOverlaysInstalled. token= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callback done = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->callbackCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-boolean v0, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->callbackCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->callbackCompleted:Z

    .line 50
    iget-object v1, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v3, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mDidLaunch:I

    iget-object v4, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mType:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    iget v5, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mUserId:I

    iget-object v6, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mTargetPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mTimeoutRunnable:Ljava/lang/Runnable;

    move v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
