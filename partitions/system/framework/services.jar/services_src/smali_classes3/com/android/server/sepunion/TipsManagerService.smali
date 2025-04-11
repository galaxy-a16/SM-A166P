.class public Lcom/android/server/sepunion/TipsManagerService;
.super Lcom/samsung/android/sepunion/ITipsManager$Stub;
.source "TipsManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mLastDeviceConnectMsgTime:Ljava/lang/Long;


# instance fields
.field public mBootupCompleted:Z

.field public mContext:Landroid/content/Context;

.field public mDialCount:I

.field public mHUNDisplayCount:I

.field public final mPackageReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

.field public final mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

.field public mTipsHUNAlreadyShown:Z

.field public mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

.field public mTipsNetworkGranted:Z

.field public mTipsOnBoot:Z

.field public mTipsPackageExist:Z

.field public mTipsServiceThread:Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;

.field public mWaitingCallEnd:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBootupCompleted(Lcom/android/server/sepunion/TipsManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDialCount(Lcom/android/server/sepunion/TipsManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHUNDisplayCount(Lcom/android/server/sepunion/TipsManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipReceiver(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsHUNAlreadyShown(Lcom/android/server/sepunion/TipsManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsHandler(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsOnBoot(Lcom/android/server/sepunion/TipsManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsPackageExist(Lcom/android/server/sepunion/TipsManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWaitingCallEnd(Lcom/android/server/sepunion/TipsManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDialCount(Lcom/android/server/sepunion/TipsManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHUNDisplayCount(Lcom/android/server/sepunion/TipsManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipsHUNAlreadyShown(Lcom/android/server/sepunion/TipsManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipsHandler(Lcom/android/server/sepunion/TipsManagerService;Lcom/android/server/sepunion/TipsManagerService$TipsHandler;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipsOnBoot(Lcom/android/server/sepunion/TipsManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipsPackageExist(Lcom/android/server/sepunion/TipsManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWaitingCallEnd(Lcom/android/server/sepunion/TipsManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/server/sepunion/TipsManagerService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 71
    const-class v0, Lcom/android/server/sepunion/TipsManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/sepunion/ITipsManager$Stub;-><init>()V

    .line 68
    new-instance v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    iput-object v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    .line 69
    new-instance v0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mPackageReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

    const/4 v0, 0x1

    .line 99
    iput v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    const/4 v6, 0x0

    .line 100
    iput v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    .line 101
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    .line 102
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 103
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 108
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    .line 267
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 268
    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    const-string v2, "[GalaxyTips] TipsManagerService"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :try_start_0
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "com.samsung.android.app.tips"

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 274
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 276
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "tips_trigger_count"

    const/4 v4, -0x2

    invoke-static {p1, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    .line 279
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "gtips_network_granted"

    invoke-static {p1, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 282
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    :cond_1
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    .line 285
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "samsung.galaxy.tips.application.terminated"

    .line 286
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 287
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.sec.android.app.secsetupwizard.FOTA_SUW_COMPLETE"

    .line 288
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    if-nez p1, :cond_2

    const-string/jumbo p1, "samsung.galaxy.tips.network_granted"

    .line 291
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    if-nez p1, :cond_3

    const-string p1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 294
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PHONE_STATE"

    .line 295
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 300
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    .line 302
    :goto_0
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGE_INSTALL"

    .line 304
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 305
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 306
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    .line 307
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 308
    iget-object v7, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/sepunion/TipsManagerService;->mPackageReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 311
    new-instance p1, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsServiceThread:Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;

    .line 312
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4

    if-nez p2, :cond_0

    .line 507
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 508
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 511
    :cond_1
    :goto_0
    sget-object p2, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter p2

    .line 512
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    .line 513
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 514
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    if-eqz p3, :cond_d

    .line 370
    array-length p1, p3

    if-lez p1, :cond_d

    const/4 p1, 0x0

    .line 371
    aget-object p1, p3, p1

    const-string/jumbo v0, "welcome"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string/jumbo v2, "tips_extras"

    const-string v3, "com.samsung.android.app.tips.TipsIntentService"

    const-string v4, "com.samsung.android.app.tips"

    if-eqz v0, :cond_0

    .line 374
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 376
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const-string v0, "clearall"

    .line 381
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 382
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 384
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_1
    const-string/jumbo v0, "showbasic"

    .line 389
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x3

    if-eqz v0, :cond_2

    .line 390
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 392
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_2
    const-string v0, "getcustom"

    .line 398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.MAIN"

    .line 401
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x18000000

    .line 402
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "com.samsung.android.app.tips.TipsSmartItemDetailActivity"

    .line 403
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "custom_inventory"

    .line 404
    aget-object p3, p3, v5

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    const-string v0, "fotadone"

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x5

    if-eqz v0, :cond_4

    .line 409
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 411
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_4
    const-string/jumbo v0, "showrecent"

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x6

    if-eqz v0, :cond_5

    .line 417
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 419
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_5
    const-string/jumbo v0, "showcontent"

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v9, "tips_extras2"

    if-eqz v0, :cond_6

    .line 425
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 427
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x7

    .line 428
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    aget-object p2, p3, v5

    invoke-virtual {p1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_6
    const-string/jumbo v0, "showjit"

    .line 433
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_c

    .line 434
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 436
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x8

    .line 437
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    aget-object p2, p3, v5

    invoke-virtual {p1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    array-length p2, p3

    const-string/jumbo v0, "tips_extras6"

    const-string/jumbo v2, "tips_extras5"

    const-string/jumbo v3, "tips_extras3"

    const-string/jumbo v4, "tips_extras4"

    const-string v5, ""

    if-ne p2, v1, :cond_7

    .line 441
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 445
    :cond_7
    array-length p2, p3

    if-ne p2, v6, :cond_8

    .line 446
    aget-object p2, p3, v1

    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 450
    :cond_8
    array-length p2, p3

    if-ne p2, v10, :cond_9

    .line 451
    aget-object p2, p3, v1

    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    aget-object p2, p3, v6

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 455
    :cond_9
    array-length p2, p3

    if-ne p2, v7, :cond_a

    .line 456
    aget-object p2, p3, v1

    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    aget-object p2, p3, v6

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    aget-object p2, p3, v10

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 460
    :cond_a
    array-length p2, p3

    if-ne p2, v8, :cond_b

    .line 461
    aget-object p2, p3, v1

    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    aget-object p2, p3, v6

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    aget-object p2, p3, v10

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    aget-object p2, p3, v7

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    :cond_b
    :goto_0
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_c
    const-string/jumbo v0, "showtip"

    .line 469
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 470
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 472
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x9

    .line 473
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p2, "tips_id"

    .line 474
    aget-object v0, p3, v5

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "tips_title"

    .line 475
    aget-object v0, p3, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "tips_text"

    .line 476
    aget-object v0, p3, v6

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    aget-object p2, p3, v10

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo p3, "tips_condition"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_d
    const-string p1, "\n\n"

    .line 487
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "[Galaxy Tips]"

    .line 488
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    iget-boolean p3, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    if-nez p3, :cond_e

    const-string p0, "Galaxy Tips is not exist this device"

    .line 491
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 495
    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "ETC Values"

    .line 496
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "=========================================================================="

    .line 497
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "mTipsNetworkGranted = "

    .line 498
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "mTipsHUNAlreadyShown = "

    .line 499
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "mDialCount = "

    .line 500
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method
