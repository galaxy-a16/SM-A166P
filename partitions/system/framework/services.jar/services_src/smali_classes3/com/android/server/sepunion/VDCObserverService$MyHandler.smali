.class public Lcom/android/server/sepunion/VDCObserverService$MyHandler;
.super Landroid/os/Handler;
.source "VDCObserverService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VDC thread msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VDCObserverService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 p1, 0x1e

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-static {p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$munregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V

    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-static {p0}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$monUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$monFgServiceStateChanged(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
