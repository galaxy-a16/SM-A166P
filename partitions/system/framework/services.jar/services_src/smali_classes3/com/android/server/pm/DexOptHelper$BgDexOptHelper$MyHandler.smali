.class public final Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;
.super Landroid/os/Handler;
.source "DexOptHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;Landroid/os/Handler;)V
    .locals 0

    .line 1526
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    .line 1527
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1532
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    invoke-static {p1}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->-$$Nest$mreachedToThermalThrottleLevel(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    const-string v0, "Canceling bg dexopt by thermal throttling"

    .line 1533
    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1534
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    invoke-static {p1}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->-$$Nest$mcancelBackgroundDexoptJob(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;)V

    .line 1535
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->stopObserveThermal()V

    return-void

    .line 1539
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    invoke-static {p1}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->-$$Nest$fgetmObserveStarted(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1540
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->-$$Nest$mscheduleObserveThermal(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;)V

    :cond_1
    return-void
.end method
