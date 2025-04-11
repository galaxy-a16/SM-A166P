.class public Lcom/android/server/sepunion/BRReceiverAgentService;
.super Lcom/samsung/android/sepunion/IBRReceiverAgent$Stub;
.source "BRReceiverAgentService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final mStartingServiceSync:Ljava/lang/Object;


# instance fields
.field public mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$mcheckIsPossibleToSendIntent(Lcom/android/server/sepunion/BRReceiverAgentService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/BRReceiverAgentService;->checkIsPossibleToSendIntent(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/BRReceiverAgentService;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IBRReceiverAgent$Stub;-><init>()V

    .line 69
    new-instance v0, Lcom/android/server/sepunion/BRReceiverAgentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/BRReceiverAgentService$1;-><init>(Lcom/android/server/sepunion/BRReceiverAgentService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final checkIsPossibleToSendIntent(I)V
    .locals 3

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/DrmEventService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 86
    sget-object v1, Lcom/android/server/sepunion/BRReceiverAgentService;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, -0x77000000

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    iget-object p0, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_0
    move-exception p0

    .line 89
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 7

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 61
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 62
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 p1, -0x3e8

    .line 63
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 64
    iget-object v1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method
