.class public Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibratorManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public static synthetic $r8$lambda$gVLXrD90bGXLLH-Q4SLCStRWR4k(Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->lambda$recoverService$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    return-void
.end method

.method private synthetic lambda$recoverService$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->cancelCurrentVibration(Lcom/android/server/vibrator/Vibration$Status;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmGoodCatchManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/samsung/android/server/audio/GoodCatchManager;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance p2, Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmContext(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "VibratorService"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmGoodCatchManager(Lcom/android/server/vibrator/VibratorManagerService;Lcom/samsung/android/server/audio/GoodCatchManager;)V

    goto :goto_1

    :cond_0
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmContext(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmHqmHelper(Lcom/android/server/vibrator/VibratorManagerService;Lcom/samsung/android/server/vibrator/VibratorHqmHelper;)V

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmHqmHelper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmContext(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->startLogging(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.sec.media.action.VIBRTOR_LOGGING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "com.android.launcher3.quickstep.closeall"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->recoverService()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$msendDataToHqm(Lcom/android/server/vibrator/VibratorManagerService;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public recoverService()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
