.class public Lcom/android/server/enterprise/plm/common/HandlerObserver;
.super Ljava/lang/Object;
.source "HandlerObserver.java"


# instance fields
.field public final handler:Ljava/lang/ref/WeakReference;

.field public final what:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->handler:Ljava/lang/ref/WeakReference;

    .line 16
    iput p2, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public notifyMessage(Ljava/lang/Object;)V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget p0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget p0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyMessage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 42
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 44
    :cond_0
    iget v1, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyMessage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 48
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    .line 50
    :cond_0
    iget v1, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v7, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
