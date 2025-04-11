.class public final Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;
.super Landroid/os/Handler;
.source "SluggishDetector.java"


# static fields
.field public static ENABLE_HANDLER:Z

.field public static final TAG:Ljava/lang/String;

.field public static sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

.field public static sHandlerThread:Lcom/android/server/ServiceThread;


# direct methods
.method public static bridge synthetic -$$Nest$sminit()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendDataToHandler(ILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendMessageToHandlerDelayed(IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 162
    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 163
    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    const/4 v0, 0x0

    .line 165
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 280
    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public static check()Z
    .locals 1

    .line 187
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static init()V
    .locals 4

    .line 169
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 175
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 176
    new-instance v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    sget-object v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    .line 178
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setEnableWithDelay()V

    :cond_0
    return-void
.end method

.method public static sendDataToHandler(ILjava/lang/Object;)V
    .locals 1

    .line 214
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_3

    .line 216
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 235
    :cond_1
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    .line 238
    :cond_2
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 240
    sget-object p1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public static sendMessageToHandlerDelayed(IJ)V
    .locals 1

    .line 192
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1

    .line 200
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    .line 203
    :cond_0
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public static setEnable()V
    .locals 1

    const/4 v0, 0x1

    .line 397
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method public static setEnableWithDelay()V
    .locals 3

    const/4 v0, 0x1

    const-wide/32 v1, 0x493e0

    .line 405
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 299
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 317
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    new-instance v0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->checkTime()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 321
    invoke-virtual {v0}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->updateLCD()V

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendToInfoForLockContention(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->storeOLOGNow()V

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->storeOLOGDay()V

    goto :goto_0

    .line 301
    :cond_3
    sget-object p0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string p1, "case MSG_ENABLE_HANDLER"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setEnable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final sendToInfoForLockContention(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V
    .locals 0

    .line 352
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->-$$Nest$mLockInfo_Logging(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V

    return-void
.end method

.method public final storeOLOGDay()V
    .locals 1

    const/16 v0, 0x15

    .line 384
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string p0, "/data/log/remaining_olog"

    .line 385
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$smstoreOLOG(Ljava/lang/String;)Z

    return-void
.end method

.method public final storeOLOGNow()V
    .locals 1

    const/16 v0, 0x16

    .line 391
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string p0, "/data/log/remaining_olog_now"

    .line 392
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$smstoreOLOG(Ljava/lang/String;)Z

    return-void
.end method
