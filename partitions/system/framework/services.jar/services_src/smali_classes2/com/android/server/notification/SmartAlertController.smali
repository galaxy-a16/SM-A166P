.class public Lcom/android/server/notification/SmartAlertController;
.super Ljava/lang/Object;
.source "SmartAlertController.java"


# instance fields
.field public filter:Landroid/content/IntentFilter;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mInCall:Z

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mMissedEventExist:Z

.field public mMotionEnabled:Z

.field public mMotionRegistered:Z

.field public final mPM:Landroid/os/PowerManager;

.field public mPickUpVibratePattern:[J

.field public mScreenOn:Z

.field public mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field public mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field public final mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

.field public mVibrator:Landroid/os/Vibrator;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$sBYD0iVhtnFevPv2AKUMSQ2TFTU(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/SmartAlertController;->lambda$unregisterListener$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/SmartAlertController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCall(Lcom/android/server/notification/SmartAlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/notification/SmartAlertController;->mInCall:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMissedEventExist(Lcom/android/server/notification/SmartAlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMotionEnabled(Lcom/android/server/notification/SmartAlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMotionRegistered(Lcom/android/server/notification/SmartAlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPickUpVibratePattern(Lcom/android/server/notification/SmartAlertController;)[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/android/server/notification/SmartAlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSmartAlertMotionListener(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionEventListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSmartAlertMotionManager(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrator(Lcom/android/server/notification/SmartAlertController;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/notification/SmartAlertController;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmInCall(Lcom/android/server/notification/SmartAlertController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mInCall:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMissedEventExist(Lcom/android/server/notification/SmartAlertController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMotionRegistered(Lcom/android/server/notification/SmartAlertController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/notification/SmartAlertController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSmartAlertEnabled(Lcom/android/server/notification/SmartAlertController;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/SmartAlertController;->setSmartAlertEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    new-instance v1, Lcom/android/server/notification/SmartAlertController$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$1;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    new-instance v1, Lcom/android/server/notification/SmartAlertController$4;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$4;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mPM:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "SmartAlert"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;-><init>(Lcom/android/server/notification/SmartAlertController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "motion_pick_up"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v1, v0}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->onChange(Z)V

    return-void

    :array_0
    .array-data 8
        0x0
        0x4b
        0x19
        0x4b
        0x12c
    .end array-data
.end method

.method private synthetic lambda$unregisterListener$0()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    const-string p0, "SmartAlertController"

    const-string v0, "SmartAlert - unregisterListener"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public checkMissedEvent(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/SmartAlertController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/SmartAlertController$2;-><init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener()V
    .locals 1

    new-instance v0, Lcom/android/server/notification/SmartAlertController$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/SmartAlertController$3;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final setSmartAlertEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSmartAlertEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pre:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartAlertController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterListener(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 p1, 0x1f4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
