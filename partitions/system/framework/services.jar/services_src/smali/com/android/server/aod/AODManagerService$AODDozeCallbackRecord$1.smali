.class public Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;
.super Landroid/os/Handler;
.source "AODManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/aod/AODToast;

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-$$Nest$mhandleAODToastRequested(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Lcom/samsung/android/aod/AODToast;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-$$Nest$mhandleAODDozeReleased(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-$$Nest$mhandleAODDozeAcquired(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    :goto_0
    return-void
.end method
