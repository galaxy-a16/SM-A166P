.class public final Lcom/android/server/wm/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 781
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 786
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 791
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$mhandleHide(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    goto :goto_0

    .line 788
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$mhandleShow(Lcom/android/server/wm/ImmersiveModeConfirmation;I)V

    :goto_0
    return-void
.end method
