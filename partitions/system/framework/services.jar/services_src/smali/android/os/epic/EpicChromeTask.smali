.class public final Landroid/os/epic/EpicChromeTask;
.super Ljava/util/TimerTask;
.source "EpicChromeTask.java"


# instance fields
.field public mAcquired:Z

.field public mCancel:Z

.field public mCheckPkgName:Ljava/lang/String;

.field public mDetector:Landroid/os/epic/EpicChromeDetector;

.field public mHandle:Lcom/samsung/epic/Request;

.field public mRequest:Lcom/samsung/epic/Request;


# direct methods
.method public constructor <init>(Landroid/os/epic/EpicChromeDetector;Landroid/os/epic/EpicChromeTask;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    .line 32
    iput-object v0, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    .line 34
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 38
    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mDetector:Landroid/os/epic/EpicChromeDetector;

    .line 39
    new-instance p1, Lcom/samsung/epic/Request;

    const v0, 0x187cc

    invoke-direct {p1, v0}, Lcom/samsung/epic/Request;-><init>(I)V

    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    if-eqz p2, :cond_0

    .line 42
    iget-boolean p1, p2, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    iput-boolean p1, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckPkgName()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mDetector:Landroid/os/epic/EpicChromeDetector;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    iget-object v1, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/epic/EpicChromeDetector;->CheckChromeBrowser(Ljava/lang/String;)Z

    move-result v0

    .line 76
    iget-boolean v1, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    if-eqz v1, :cond_1

    .line 77
    monitor-exit p0

    return-void

    :cond_1
    if-eqz v0, :cond_3

    .line 80
    iget-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    invoke-virtual {v0}, Lcom/samsung/epic/Request;->acquire_lock()Z

    :cond_2
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    goto :goto_0

    .line 86
    :cond_3
    iget-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    invoke-virtual {v0}, Lcom/samsung/epic/Request;->release_lock()Z

    :cond_4
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCancel()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    return-void
.end method

.method public setCheckPkgName(Ljava/lang/String;)V
    .locals 0

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
