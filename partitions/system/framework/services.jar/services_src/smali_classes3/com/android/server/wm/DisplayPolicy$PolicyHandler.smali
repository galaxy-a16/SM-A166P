.class public Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
.super Landroid/os/Handler;
.source "DisplayPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 498
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 503
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->disableTouchListener()V

    .line 520
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_1

    .line 521
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v4}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mstartEnableTouchEvent(Lcom/android/server/wm/DisplayPolicy;Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_6

    .line 523
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mstartEnableTouchEvent(Lcom/android/server/wm/DisplayPolicy;Z)V

    goto :goto_0

    .line 512
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_3

    .line 513
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$menableTouchListener(Lcom/android/server/wm/DisplayPolicy;Z)V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_6

    .line 515
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$menableTouchListener(Lcom/android/server/wm/DisplayPolicy;Z)V

    goto :goto_0

    .line 508
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mdisablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V

    goto :goto_0

    .line 505
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$menablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V

    :cond_6
    :goto_0
    return-void
.end method
