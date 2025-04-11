.class public Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;
.super Ljava/lang/Object;
.source "OverlayChangeObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;->this$0:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;->this$0:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    iget-object v0, v0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->overlayLock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout in locale overlay installation.  callback done = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;->this$0:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    iget-boolean v3, v3, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;->this$0:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    iget-boolean v1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    goto :goto_0

    :cond_0
    move v1, v2

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 51
    iget v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mToken:I

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->onChangeCompleted(ZI)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
