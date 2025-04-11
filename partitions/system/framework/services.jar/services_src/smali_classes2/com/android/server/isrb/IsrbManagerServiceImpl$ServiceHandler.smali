.class public final Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;
.super Landroid/os/Handler;
.source "IsrbManagerServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;Landroid/os/Looper;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 89
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, "IsrbManagerServiceImpl"

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    const-string v3, "Set ISRB Disabled"

    if-eq p1, v2, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "SetupwizardFinished, show ISRB alert."

    .line 115
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->showSystemErrDialog()V

    .line 117
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->initBroadcastReceiver()V

    goto/16 :goto_0

    :cond_1
    const-string p1, "Timer is running, waiting for SetupwizardFinished."

    .line 108
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->isSetupwizardFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    move-result-object p0

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 112
    :cond_2
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    move-result-object p0

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 104
    :cond_3
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->rebootExitisrbInternal()V

    goto :goto_0

    .line 98
    :cond_4
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "sys.isrblevel.callreboot"

    .line 99
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_6

    const-string/jumbo p0, "persist.sys.enable_isrb"

    .line 101
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "Fake time Check it in Handler thread"

    .line 91
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    const-string/jumbo v1, "ro.build.date.utc"

    const-wide/32 v2, 0x5e0b7080

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fputmBuildtime(Lcom/android/server/isrb/IsrbManagerServiceImpl;J)V

    .line 93
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmBuildtime(Lcom/android/server/isrb/IsrbManagerServiceImpl;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 94
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "auto_time"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "auto_time_zone"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_0
    return-void
.end method
