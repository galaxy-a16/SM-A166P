.class public final Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;
.super Landroid/os/Handler;
.source "StandaloneModeChanger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-static {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$fgetmStandaloneModeEnabled(Lcom/android/server/desktopmode/StandaloneModeChanger;)Z

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$mhandleStopLoadingScreen(Lcom/android/server/desktopmode/StandaloneModeChanger;ZI)V

    goto/16 :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$mhandleStartLoadingScreen(Lcom/android/server/desktopmode/StandaloneModeChanger;ZI)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge p1, v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v4, v4, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->goodToChangeMode(II)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->goodToChangeMode(II)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_1
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not all activities are stopped! retryCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", waiting more "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    add-int/2addr p1, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_6
    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not all activities are stopped! timeout!! retryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$msetDesktopModeInternal(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    :goto_2
    return-void
.end method
