.class public final Lcom/android/server/sepunion/cover/StateNotifier$H;
.super Landroid/os/Handler;
.source "StateNotifier.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/Looper;)V
    .locals 1

    .line 95
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p0, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$mhandleSendCoverAttachState(Lcom/android/server/sepunion/cover/StateNotifier;Z)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-static {p0, v0, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$mhandleSendCoverSwitchState(Lcom/android/server/sepunion/cover/StateNotifier;Lcom/samsung/android/cover/CoverState;Z)V

    :goto_0
    return-void
.end method
