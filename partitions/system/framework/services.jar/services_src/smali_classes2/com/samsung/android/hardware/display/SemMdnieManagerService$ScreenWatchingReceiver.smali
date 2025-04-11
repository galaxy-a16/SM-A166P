.class public final Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemMdnieManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 367
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 368
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmAutoModeEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    .line 369
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "screen_mode_setting"

    const/4 v2, -0x2

    invoke-static {p2, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V

    .line 370
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmAutoModeEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 371
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V

    :cond_1
    const-string p1, "SemMdnieManagerService"

    .line 373
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BOOT_ON - mScreenMode : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , mAutoModeEnabled - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmAutoModeEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmSupportScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmSupportScreeenReadingMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 375
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$mcheckScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 376
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmLock(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "/sys/class/mdnie/mdnie/mode"

    .line 377
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p0

    invoke-static {p2, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$smsysfsWrite(Ljava/lang/String;I)Z

    .line 378
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 382
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 383
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    .line 384
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmMdnieWorkingCondition(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    return-void

    :cond_5
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 386
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 387
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    .line 388
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmMdnieWorkingCondition(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    :cond_6
    return-void
.end method
