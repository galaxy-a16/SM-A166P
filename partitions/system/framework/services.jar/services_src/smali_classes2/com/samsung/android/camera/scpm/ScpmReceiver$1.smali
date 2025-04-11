.class public Lcom/samsung/android/camera/scpm/ScpmReceiver$1;
.super Ljava/lang/Object;
.source "ScpmReceiver.java"

# interfaces
.implements Lcom/samsung/android/camera/scpm/ScpmHelper$scpmCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/scpm/ScpmReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListReceived(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-static {p1}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/scpm/ScpmReceiver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/scpm/ScpmReceiver;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRegistered(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    const-string v0, "CameraService/ScpmReceiver"

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const-string/jumbo p0, "onRegistered - not acceptable result."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "MSG_REGISTER_FAILED - retry after 1 hour"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-static {p1}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/scpm/ScpmReceiver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/scpm/ScpmReceiver;)Landroid/os/Handler;

    move-result-object p0

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string p1, "MSG_SCPM_UNAVAILABLE - retry after 5 min"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-static {p1}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/scpm/ScpmReceiver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/scpm/ScpmReceiver;)Landroid/os/Handler;

    move-result-object p0

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/scpm/ScpmReceiver;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
