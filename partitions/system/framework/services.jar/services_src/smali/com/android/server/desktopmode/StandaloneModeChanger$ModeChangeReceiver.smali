.class public Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StandaloneModeChanger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;


# direct methods
.method public static bridge synthetic -$$Nest$mregister(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->register()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregister(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->unregister()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive(), action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$fputmWallpaperShown(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-static {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$mscheduleStopLoadingScreenIfPossible(Lcom/android/server/desktopmode/StandaloneModeChanger;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide p1

    const-wide/32 v0, 0x19000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Low memory warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0x100000

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const p1, 0x1040437

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final register()V
    .locals 6

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
