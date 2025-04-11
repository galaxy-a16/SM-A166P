.class public final Lcom/android/server/am/OverlayChangeObserverImpl;
.super Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;
.source "OverlayChangeObserverImpl.java"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mCallingAttributionTag:Ljava/lang/String;

.field public final mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/ActivityManagerService;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, p4}, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;-><init>(II)V

    .line 36
    iput-object p1, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 37
    iput-object p2, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingPackage:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingAttributionTag:Ljava/lang/String;

    .line 39
    iput p5, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingPid:I

    .line 40
    iput-object p6, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public onChangeCompleted(ZI)V
    .locals 7

    .line 45
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->overlayLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "ActivityManager"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLocaleOverlaysInstalled. token= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " callback done = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-boolean p2, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    .line 51
    iget-object v0, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingAttributionTag:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mUserId:I

    iget v5, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingPid:I

    iget-object v6, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->overlaysInstallComplete(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Runnable;)V

    .line 53
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
