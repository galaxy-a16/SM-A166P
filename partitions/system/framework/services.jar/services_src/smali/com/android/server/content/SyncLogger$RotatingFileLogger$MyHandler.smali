.class public Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;
.super Landroid/os/Handler;
.source "SyncLogger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncLogger$RotatingFileLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncLogger$RotatingFileLogger;Landroid/os/Looper;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;->this$0:Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 296
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 306
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;->this$0:Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->logInner(J[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public log(J[Ljava/lang/Object;)V
    .locals 1

    .line 300
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 301
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
