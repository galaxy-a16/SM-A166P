.class public final Lcom/android/server/power/ScreenCurtainController$ScreenCurtainHandler;
.super Landroid/os/Handler;
.source "ScreenCurtainController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$ScreenCurtainHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$ScreenCurtainHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p0}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$mhandleAutoEnableScreenCurtain(Lcom/android/server/power/ScreenCurtainController;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$ScreenCurtainHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$mhandleDisableScreenCurtain(Lcom/android/server/power/ScreenCurtainController;I)V

    :goto_0
    return-void
.end method
