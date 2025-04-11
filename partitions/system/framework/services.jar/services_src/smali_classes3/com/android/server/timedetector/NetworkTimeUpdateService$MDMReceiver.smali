.class public Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive + intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkTimeUpdateService"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    .line 342
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 343
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-static {p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$fgetmEngine(Lcom/android/server/timedetector/NetworkTimeUpdateService;)Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-static {p2}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$fgetmContext(Lcom/android/server/timedetector/NetworkTimeUpdateService;)Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;->updateNTPParametersMDM(Landroid/content/Context;)V

    .line 344
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-static {p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$fgetmHandler(Lcom/android/server/timedetector/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "android.intent.action.BOOT_COMPLETED"

    .line 345
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 346
    invoke-static {p0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$sfputmBootCompleted(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 352
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    const-string v0, "NTP_PARAMETERS_UPDATED"

    invoke-static {p0, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V

    return-void
.end method
