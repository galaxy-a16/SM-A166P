.class public final Lcom/android/server/dreams/DreamController$DreamRecord;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mBound:Z

.field public final mCanDoze:Z

.field public mConnected:Z

.field public mDreamStartTime:J

.field public final mDreamingStartedCallback:Landroid/os/IRemoteCallback;

.field public final mIsPreviewMode:Z

.field public final mName:Landroid/content/ComponentName;

.field public final mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

.field public mService:Landroid/service/dreams/IDreamService;

.field public final mStopPreviousDreamsIfNeeded:Ljava/lang/Runnable;

.field public mStopReason:Ljava/lang/String;

.field public final mStopStubbornDreamRunnable:Ljava/lang/Runnable;

.field public final mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

.field public final mToken:Landroid/os/Binder;

.field public final mUserId:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakingGently:Z

.field public final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method public static synthetic $r8$lambda$3mKZO8MS6YXQ4vtUA-BuoIClMcQ(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$EAr8nOLx4gLdCfP8xr5IxxDD_sk(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$binderDied$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$KALGJyRu39gm6Ejo5k1P-BIBGsw(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$sEOBm6IdmuE7Gk5bXHqB2J_5Wgk(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$onServiceConnected$3(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t5L_GmSab7LDKBTV0OrWOUs282E(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$onServiceDisconnected$4()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDreamStartTime(Lcom/android/server/dreams/DreamController$DreamRecord;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmDreamingStartedCallback(Lcom/android/server/dreams/DreamController$DreamRecord;)Landroid/os/IRemoteCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReleaseWakeLockIfNeeded(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopPreviousDreamsIfNeeded(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopPreviousDreamsIfNeeded:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopReason(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopStubbornDreamRunnable(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopUnconnectedDreamRunnable(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDreamStartTime(Lcom/android/server/dreams/DreamController$DreamRecord;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamStartTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStopReason(Lcom/android/server/dreams/DreamController$DreamRecord;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 2

    .line 428
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopPreviousDreamsIfNeeded:Ljava/lang/Runnable;

    .line 403
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    .line 405
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    .line 412
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    .line 418
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    .line 429
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 430
    iput-object p3, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    .line 431
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    .line 432
    iput-boolean p5, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 433
    iput p6, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    .line 434
    iput-object p7, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p7, :cond_0

    .line 438
    invoke-virtual {p7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 440
    :cond_0
    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p1, 0x2710

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$binderDied$2()V
    .locals 2

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 448
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmResetScreenTimeoutOnUnexpectedDreamExit(Lcom/android/server/dreams/DreamController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$mresetScreenTimeout(Lcom/android/server/dreams/DreamController;)V

    .line 452
    :cond_0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v0, 0x1

    const-string v1, "binder died"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 406
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    if-nez v0, :cond_0

    const-string v0, "DreamController"

    const-string v1, "Bound dream did not connect in the time allotted"

    .line 407
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v0, 0x1

    const-string/jumbo v1, "slow to connect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    const-string v0, "DreamController"

    const-string v1, "Stubborn dream did not finish itself in the time allotted"

    .line 413
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v1, 0x1

    const-string/jumbo v2, "slow to finish"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onServiceConnected$3(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    .line 462
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-nez v0, :cond_0

    .line 463
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Landroid/service/dreams/IDreamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$mattach(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$4()V
    .locals 2

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 476
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmResetScreenTimeoutOnUnexpectedDreamExit(Lcom/android/server/dreams/DreamController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$mresetScreenTimeout(Lcom/android/server/dreams/DreamController;)V

    .line 480
    :cond_0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v0, 0x1

    const-string/jumbo v1, "service disconnected"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 460
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 474
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releaseWakeLockIfNeeded()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 494
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 495
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public stopPreviousDreamsIfNeeded()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 487
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p0}, Lcom/android/server/dreams/DreamController;->-$$Nest$mstopPreviousDreams(Lcom/android/server/dreams/DreamController;)V

    :cond_0
    return-void
.end method
