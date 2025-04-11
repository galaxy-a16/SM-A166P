.class public Lcom/android/server/am/BroadcastQueueModernImpl;
.super Lcom/android/server/am/BroadcastQueue;
.source "BroadcastQueueModernImpl.java"


# static fields
.field public static final BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

.field public static final QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;


# instance fields
.field public final mBgConstants:Lcom/android/server/am/BroadcastConstants;

.field final mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field final mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mConstants:Lcom/android/server/am/BroadcastConstants;

.field public final mDelayedBroadcasts:Ljava/util/ArrayList;

.field public final mFgConstants:Lcom/android/server/am/BroadcastConstants;

.field public mLastTestFailureTime:J

.field public final mLocalCallback:Landroid/os/Handler$Callback;

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mProcessQueues:Landroid/util/SparseArray;

.field public final mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

.field public final mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

.field public mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

.field public final mUidForeground:Landroid/util/SparseBooleanArray;

.field public final mWaitingFor:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$14R2t6CNhaw4TXUXx092krgDYT4(Landroid/util/Pair;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$checkAndRemoveWaitingFor$22(Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3zHpS_cF8ltxp7BsUInh3TtcncY(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$onApplicationCleanupLocked$1(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5yWYClNyQD0tdolelMAIepPuG5E(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$cleanupDisabledPackageReceiversLocked$6(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6KVoA5UYVOxtEJRzGIsSjDfwMJs(JLcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$isBeyondBarrierLocked$15(JLcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6xo7shtMAmGXug3NzwUaAcdkDbs(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$new$11(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8uqC8WMGCNpPQAR3bBYh6ild5AI(Lcom/android/server/am/BroadcastQueueModernImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$waitForDispatched$21(Landroid/content/Intent;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EZvetGiyPFSQ7Dv6AGCYMZgLrJo(Lcom/android/server/am/BroadcastQueueModernImpl;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Fh6ecC3XPDac1MGxswoi3I3hMgQ(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$applyDeliveryGroupPolicy$2(Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FzNu6Ikb_hwaj-LWNuVBh52WmLE(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$cleanupDisabledPackageReceiversLocked$7(ILcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IRlx8U14RM9Myi7kHWD15IWF6U8(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$new$13(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1bHbiEYRxzCuRtGyO-m3gNooYE(Ljava/lang/String;Ljava/util/Set;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$cleanupDisabledPackageReceiversLocked$5(Ljava/lang/String;Ljava/util/Set;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NiTzy04OhB0Wpy-vFesL5lyFkIc(Lcom/android/server/am/BroadcastQueueModernImpl;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$waitForIdle$17(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OXSu3lbSLDBIHlDWecNee4JQsmg(Ljava/lang/String;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$forceDelayBroadcastDelivery$23(Ljava/lang/String;Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SxWdPIjblBw9fPfPD1Zroh1SUk8(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$static$9(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TUZjYtYuCVLRx4Yp8cs1dAsJJK4(Landroid/content/Intent;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$isDispatchedLocked$16(Landroid/content/Intent;Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UMJqOuzYr1-egqvRszBZFilzEWQ(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$isIdleLocked$14(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cwKen-Lkri8E8lDrv04XkORyCyQ(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$waitForBarrier$20(Lcom/android/server/am/BroadcastProcessQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f4kxjF16_vPlVrXQXtFm2cIKd0o(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$cleanupDisabledPackageReceiversLocked$4(ILcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fGunIyMCX7pWn6_b_-H_FLz_pEk(Lcom/android/server/am/BroadcastQueueModernImpl;JLjava/io/PrintWriter;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$waitForBarrier$19(JLjava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lLjHwaWOYTCP5fljs8GCh3yqct4(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$new$12(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mgBV84k4hOVghCdcW5dojqX24q8(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$applyDeliveryGroupPolicy$3(Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nUo7pRS4VSDOiB9976W1DOY3sFU(JLcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$forceDelayBroadcastDelivery$24(JLcom/android/server/am/BroadcastProcessQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ppV5lbYbX5bV4Q3f6sHiL_3Bw9Y(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$waitForBarrier$18(Lcom/android/server/am/BroadcastProcessQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qFXHEqvUlbaXMzix6Y2XNPfAE8A(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$new$10(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zdwSfU_eDEKSYPCZ2H3wl2wiTFA(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->lambda$static$8(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidForeground(Lcom/android/server/am/BroadcastQueueModernImpl;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrefreshProcessQueuesLocked(Lcom/android/server/am/BroadcastQueueModernImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->refreshProcessQueuesLocked(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1687
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda14;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueModernImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    .line 1689
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda15;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueModernImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;)V
    .locals 7

    .line 145
    new-instance v5, Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-direct {v5, p1}, Lcom/android/server/am/BroadcastSkipPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    new-instance v6, Lcom/android/server/am/BroadcastHistory;

    invoke-direct {v6, p1, p3}, Lcom/android/server/am/BroadcastHistory;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastConstants;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueueModernImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V
    .locals 6

    const-string/jumbo v3, "modern"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mDelayedBroadcasts:Ljava/util/ArrayList;

    .line 174
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 218
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 225
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 232
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 240
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 252
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 283
    new-instance p1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalCallback:Landroid/os/Handler$Callback;

    .line 1696
    new-instance p5, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda8;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1705
    new-instance p5, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1713
    new-instance p5, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda10;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1719
    new-instance p5, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda11;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 155
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 156
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 157
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 159
    new-instance p4, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 163
    invoke-virtual {p3}, Lcom/android/server/am/BroadcastConstants;->getMaxRunningQueues()I

    move-result p1

    new-array p1, p1, [Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    return-void
.end method

.method private synthetic lambda$applyDeliveryGroupPolicy$2(Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 1

    .line 875
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->mergeExtras(Landroid/content/Intent;Landroid/os/BundleMerger;)V

    .line 876
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-interface {p0, p3, p4}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method private synthetic lambda$applyDeliveryGroupPolicy$3(Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 3

    .line 886
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 890
    :cond_0
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v2, p3, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ne v0, v2, :cond_6

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v2, p3, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v0, v2, :cond_6

    .line 892
    invoke-virtual {p1, p3}, Lcom/android/server/am/BroadcastRecord;->matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 899
    :cond_1
    iget-boolean v0, p3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_5

    iget-boolean v0, p3, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 901
    :cond_2
    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_4

    .line 902
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 903
    iget-object p0, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 904
    :cond_3
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z

    move-result p0

    :goto_0
    return p0

    .line 906
    :cond_4
    iget-object p0, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 900
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z

    move-result p0

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method public static synthetic lambda$checkAndRemoveWaitingFor$22(Landroid/util/Pair;)Z
    .locals 1

    .line 1894
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$cleanupDisabledPackageReceiversLocked$4(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1642
    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$cleanupDisabledPackageReceiversLocked$5(Ljava/lang/String;Ljava/util/Set;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 1

    .line 1649
    iget-object p2, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 1650
    instance-of p3, p2, Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1651
    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1652
    iget-object p3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1653
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static synthetic lambda$cleanupDisabledPackageReceiversLocked$6(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1660
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 1661
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$cleanupDisabledPackageReceiversLocked$7(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1667
    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$forceDelayBroadcastDelivery$23(Ljava/lang/String;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1909
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$forceDelayBroadcastDelivery$24(JLcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 1910
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->forceDelayBroadcastDelivery(J)Z

    return-void
.end method

.method public static synthetic lambda$isBeyondBarrierLocked$15(JLcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1838
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isBeyondBarrierLocked(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$isDispatchedLocked$16(Landroid/content/Intent;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1847
    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatched(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$isIdleLocked$14(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1828
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isIdle()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 3

    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 324
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->refreshProcessQueueLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 320
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->checkPendingColdStartValidity()V

    return v2

    .line 308
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->checkHealth()V

    return v2

    .line 298
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 299
    :try_start_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 300
    iget-object p1, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 301
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 303
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 304
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 294
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->deliveryTimeoutHard(Lcom/android/server/am/BroadcastProcessQueue;)V

    return v2

    .line 290
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->deliveryTimeoutSoft(Lcom/android/server/am/BroadcastProcessQueue;I)V

    return v2

    .line 286
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunningList()V

    return v2

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 314
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->clearDelayedBroadcastLocked()V

    .line 315
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$new$10(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1697
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    const-string/jumbo v7, "mBroadcastConsumerSkip"

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$11(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1706
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    const-string/jumbo v7, "mBroadcastConsumerSkipAndCanceled"

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1708
    iput p0, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    const/4 p0, 0x0

    .line 1709
    iput-object p0, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1710
    iput-object p0, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    return-void
.end method

.method private synthetic lambda$new$12(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1715
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x6

    const-string/jumbo v7, "mBroadcastConsumerDeferApply"

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$13(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1721
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "mBroadcastConsumerDeferClear"

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onApplicationCleanupLocked$1(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/server/am/BroadcastFilter;

    return p0
.end method

.method public static synthetic lambda$static$8(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$static$9(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$waitForBarrier$18(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 1861
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->addPrioritizeEarliestRequest()Z

    return-void
.end method

.method private synthetic lambda$waitForBarrier$19(JLjava/io/PrintWriter;)Z
    .locals 0

    .line 1864
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueModernImpl;->isBeyondBarrierLocked(JLjava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$waitForBarrier$20(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 1868
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->removePrioritizeEarliestRequest()Z

    return-void
.end method

.method private synthetic lambda$waitForDispatched$21(Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 1875
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->isDispatchedLocked(Landroid/content/Intent;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$waitForIdle$17(Ljava/io/PrintWriter;)Z
    .locals 0

    .line 1853
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->isIdleLocked(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyDeliveryGroupPolicy(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5

    .line 851
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->shouldIgnoreDeliveryGroupPolicy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 854
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 880
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown delivery group policy: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    .line 865
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    return-void

    .line 868
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupExtrasMerger()Landroid/os/BundleMerger;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 874
    :cond_3
    new-instance v2, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;)V

    goto :goto_0

    .line 861
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 883
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRecordsLookupCache()Landroid/util/ArrayMap;

    move-result-object v0

    .line 884
    sget-object v3, Lcom/android/server/am/BroadcastQueueModernImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v4, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 909
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 910
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public assertHealthLocked()V
    .locals 10

    .line 1961
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1963
    iget-object v4, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v4, v1, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    const-string/jumbo v5, "runnableAtPrev"

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1964
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRunnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    if-eqz v1, :cond_2

    .line 1966
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRunnableAt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1970
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_0

    .line 1974
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v1, v0

    move v4, v3

    :goto_3
    if-ge v4, v1, :cond_5

    aget-object v5, v0, v4

    if-eqz v5, :cond_4

    .line 1976
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isActive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1981
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_7

    .line 1982
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    if-ltz v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isOrphaned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1987
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 1988
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_6
    if-eqz v0, :cond_8

    .line 1990
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked()V

    .line 1991
    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method

.method public backgroundServicesFinishedLocked(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final checkAndRemoveWaitingFor()V
    .locals 1

    .line 1892
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public final checkHealth()V
    .locals 1

    .line 1931
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1932
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->checkHealthLocked()V

    .line 1933
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final checkHealthLocked()V
    .locals 4

    .line 1938
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->assertHealthLocked()V

    .line 1941
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BroadcastQueue"

    .line 1947
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1948
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->dumpToDropBoxLocked(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final checkPendingColdStartValidity()V
    .locals 4

    .line 608
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v1, :cond_0

    .line 611
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 613
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->isPendingColdStartValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    const/4 p0, 0x6

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 617
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->clearInvalidPendingColdStart()V

    .line 619
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;I)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 1639
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    .line 1641
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0, p3}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda16;-><init>(I)V

    if-eqz p2, :cond_0

    .line 1648
    new-instance p3, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda17;

    invoke-direct {p3, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1659
    :cond_0
    new-instance p3, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;

    invoke-direct {p3, p1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1666
    :cond_1
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda19;

    invoke-direct {v0, p3}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda19;-><init>(I)V

    .line 1669
    sget-object p1, Lcom/android/server/am/BroadcastQueueModernImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

    .line 1671
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BroadcastQueueModernImpl;->cleanupUserStateLocked(Landroid/util/SparseBooleanArray;I)V

    move-object p3, p1

    .line 1673
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p0

    return p0
.end method

.method public final cleanupUserStateLocked(Landroid/util/SparseBooleanArray;I)V
    .locals 1

    .line 1679
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 1680
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1681
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1682
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearDelayedBroadcastLocked()V
    .locals 2

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mDelayedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mDelayedBroadcasts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clearInvalidPendingColdStart()V
    .locals 2

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing invalid pending cold start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->reEnqueueActiveBroadcast()V

    .line 598
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 599
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->clearRunningColdStart()V

    .line 600
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public final clearRunningColdStart()V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    const/4 v0, 0x0

    .line 726
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 729
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public final containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z
    .locals 0

    .line 926
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    .line 928
    invoke-virtual {p3, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 930
    :cond_0
    iget-object p0, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastRecord;->containsAllReceivers(Ljava/util/List;)Z

    move-result p0

    .line 931
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p0
.end method

.method public final deliveryTimeoutHard(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1346
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->deliveryTimeoutHardLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1347
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final deliveryTimeoutHardLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "deliveryTimeoutHardLocked"

    .line 1351
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1353
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return-void
.end method

.method public final deliveryTimeoutSoft(Lcom/android/server/am/BroadcastProcessQueue;I)V
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1324
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->deliveryTimeoutSoftLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V

    .line 1325
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final deliveryTimeoutSoftLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V
    .locals 10

    .line 1330
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCpuDelayTime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->lastCpuDelayTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    int-to-long v8, p2

    .line 1335
    invoke-static/range {v4 .. v9}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    .line 1336
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    .line 1337
    invoke-static {p0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1336
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1340
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->deliveryTimeoutHardLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    :goto_0
    return-void
.end method

.method public final demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4

    .line 1513
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1514
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring demoteFromRunning; no active broadcast for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "demoteFromRunning"

    .line 1518
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1520
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveIdle()V

    .line 1521
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 1523
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v1

    .line 1524
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 1525
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1526
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 1530
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyStoppedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1531
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public describeStateLocked()Ljava/lang/String;
    .locals 1

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " running"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dispatchReceivers(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 29

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 1175
    iget-object v12, v10, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1176
    iget-object v0, v11, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v5, p3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1180
    invoke-virtual/range {p2 .. p3}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v0

    .line 1181
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const/4 v15, 0x2

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v11, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 1182
    iget-object v1, v10, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCpuDelayTime()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/am/BroadcastProcessQueue;->lastCpuDelayTime:J

    .line 1184
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v1, v1, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    goto :goto_0

    .line 1185
    :cond_0
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v1, v1, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    :goto_0
    long-to-int v1, v1

    .line 1186
    iget-object v2, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-static {v2, v15, v1, v14, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v6, v1

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1190
    :cond_1
    iget-object v1, v11, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_3

    .line 1191
    iget-object v1, v11, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v12, v11, v1}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 1193
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v3, v1, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    goto :goto_1

    .line 1194
    :cond_2
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v3, v1, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 1195
    :goto_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1196
    iput-object v12, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1197
    iput-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1198
    iget-object v6, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 1199
    invoke-static {v6, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1198
    invoke-virtual {v6, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1201
    :cond_3
    iget-object v1, v11, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-lez v1, :cond_5

    .line 1202
    iget-object v1, v11, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1206
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1208
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v2

    const/4 v4, 0x3

    .line 1206
    invoke-virtual {v1, v12, v4, v2, v3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_2

    .line 1210
    :cond_4
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v10, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    iget-object v3, v11, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1211
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v18

    iget-object v3, v11, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1212
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v21

    iget-object v3, v11, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1213
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v22

    iget v3, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v23, v3

    .line 1210
    invoke-virtual/range {v16 .. v23}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    :cond_5
    :goto_2
    const/4 v7, 0x4

    const-string/jumbo v8, "scheduleReceiverWarmLocked"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v13

    .line 1218
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 1221
    invoke-virtual {v11, v13}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    .line 1222
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1225
    :try_start_0
    iget-boolean v5, v11, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v5, :cond_6

    .line 1226
    iget-object v5, v9, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v6, v11, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v8, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1227
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    iget v8, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v21, 0x1

    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v20, v8

    .line 1226
    invoke-virtual/range {v16 .. v21}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1229
    :cond_6
    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    iput v5, v10, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    .line 1230
    instance-of v5, v13, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_9

    .line 1231
    move-object v5, v13

    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v9, v12, v11, v5}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyScheduleRegisteredReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)V

    .line 1232
    move-object v5, v13

    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    iget-object v5, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    iget v8, v11, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, v11, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v3, v11, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean v4, v11, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v27, v13

    :try_start_1
    iget v13, v11, Lcom/android/server/am/BroadcastRecord;->userId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1236
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v24

    .line 1237
    iget-boolean v14, v11, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v14, :cond_7

    :try_start_3
    iget v15, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v25, v15

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v3, 0x2

    const/16 v28, 0x0

    goto/16 :goto_9

    :cond_7
    const/16 v25, -0x1

    :goto_3
    if-eqz v14, :cond_8

    .line 1238
    iget-object v14, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v26, v14

    goto :goto_4

    :cond_8
    const/16 v26, 0x0

    :goto_4
    const/16 v28, 0x0

    move-object v14, v2

    const/4 v2, 0x2

    move-object v15, v5

    move-object/from16 v16, v1

    move/from16 v17, v8

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v0

    move/from16 v23, v13

    .line 1232
    :try_start_4
    invoke-interface/range {v14 .. v26}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    if-eqz v0, :cond_c

    const-string v0, "assuming delivered"

    const/4 v3, 0x1

    .line 1242
    invoke-virtual {v9, v10, v3, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_1

    return v28

    :catch_1
    move-exception v0

    move v3, v2

    goto :goto_9

    :catch_2
    move-exception v0

    const/16 v28, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :cond_9
    move-object/from16 v27, v13

    move/from16 v28, v14

    move v3, v15

    .line 1247
    :try_start_5
    move-object/from16 v13, v27

    check-cast v13, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v9, v12, v11, v13}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V

    .line 1248
    move-object/from16 v13, v27

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v4, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/16 v17, 0x0

    iget v5, v11, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, v11, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v8, v11, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v13, v11, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1251
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v24

    .line 1252
    iget-boolean v14, v11, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v14, :cond_a

    iget v15, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v25, v15

    goto :goto_5

    :cond_a
    const/16 v25, -0x1

    :goto_5
    if-eqz v14, :cond_b

    .line 1253
    iget-object v14, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v26, v14

    goto :goto_6

    :cond_b
    const/16 v26, 0x0

    :goto_6
    move-object v14, v2

    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v0

    move/from16 v23, v13

    .line 1248
    invoke-interface/range {v14 .. v26}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/BadParcelableException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_c
    const/4 v1, 0x1

    return v1

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v27, v13

    :goto_7
    move/from16 v28, v14

    :goto_8
    move v3, v15

    .line 1259
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to schedule "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " via "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1263
    invoke-static {v1}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    const/16 v1, 0xd

    const/16 v2, 0x1a

    const-string v5, "Can\'t deliver broadcast"

    const/4 v6, 0x1

    .line 1264
    invoke-virtual {v12, v5, v1, v2, v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1268
    instance-of v1, v4, Landroid/content/pm/ResolveInfo;

    if-nez v1, :cond_d

    const-string/jumbo v0, "remote app"

    const/4 v1, 0x5

    .line 1272
    invoke-virtual {v9, v10, v1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v28

    .line 1269
    :cond_d
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v10}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1270
    new-instance v1, Lcom/android/server/am/BroadcastDeliveryFailedException;

    invoke-direct {v1, v0}, Lcom/android/server/am/BroadcastDeliveryFailedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_e
    move/from16 v28, v14

    const/4 v1, 0x5

    const-string/jumbo v0, "missing IApplicationThread"

    .line 1277
    invoke-virtual {v9, v10, v1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v28
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2328
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10900000001L

    .line 2329
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2330
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 2331
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Z)Z
    .locals 9
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object v0, p0

    .line 2339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2340
    new-instance v3, Landroid/util/IndentingPrintWriter;

    move-object v4, p2

    invoke-direct {v3, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2341
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2342
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v4, "\ud83d\udccb Per-process queues:"

    .line 2344
    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2345
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v4, 0x0

    move v5, v4

    .line 2346
    :goto_0
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2347
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v6, :cond_0

    .line 2349
    invoke-virtual {v6, v1, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->dumpLocked(JLandroid/util/IndentingPrintWriter;)V

    .line 2350
    iget-object v6, v6, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2353
    :cond_1
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2354
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v5, "\ud83e\uddcd Runnable:"

    .line 2356
    invoke-virtual {v3, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2358
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const-string v6, "(none)"

    if-nez v5, :cond_2

    .line 2359
    invoke-virtual {v3, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 2363
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v7

    invoke-static {v7, v8, v1, v2, v3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const/16 v7, 0x20

    .line 2364
    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 2365
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAtReason()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2366
    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 2367
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2369
    iget-object v5, v5, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_2

    .line 2372
    :cond_3
    :goto_3
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2373
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "\ud83c\udfc3 Running:"

    .line 2375
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2377
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v2, v1

    :goto_4
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    if-eqz v5, :cond_4

    .line 2378
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v5, v7, :cond_4

    const-string/jumbo v7, "\ud83e\udd76 "

    .line 2379
    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-string/jumbo v7, "\u3000 "

    .line 2381
    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_5
    if-eqz v5, :cond_5

    .line 2384
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2386
    :cond_5
    invoke-virtual {v3, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2389
    :cond_6
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2390
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Broadcasts with ignored delivery group policies:"

    .line 2392
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2393
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2394
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->dumpDeliveryGroupPolicyIgnoredActions(Landroid/util/IndentingPrintWriter;)V

    .line 2395
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2396
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Foreground UIDs:"

    .line 2398
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2400
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2401
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2402
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    if-eqz p5, :cond_7

    .line 2405
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v1, v3}, Lcom/android/server/am/BroadcastConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    :cond_7
    if-eqz p6, :cond_8

    .line 2409
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2410
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object p0, v2

    move-object p1, v3

    move-object/from16 p2, p8

    move-object p3, v0

    move-object p4, v1

    move/from16 p5, p7

    move/from16 p6, p9

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BroadcastHistory;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;ZZ)Z

    move-result v0

    goto :goto_7

    :cond_8
    move/from16 v0, p9

    :goto_7
    return v0
.end method

.method public enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v0, "enqueueBroadcast"

    .line 751
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v10

    .line 752
    iget-object v0, v8, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/am/BroadcastRecord;->applySingletonPolicy(Lcom/android/server/am/ActivityManagerService;)V

    .line 754
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->applyDeliveryGroupPolicy(Lcom/android/server/am/BroadcastRecord;)V

    .line 756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 759
    iget-object v0, v8, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v0, v9}, Lcom/android/server/am/BroadcastHistory;->onBroadcastEnqueuedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 761
    iget-object v0, v8, Lcom/android/server/am/BroadcastQueueModernImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 763
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :cond_0
    move-object v12, v0

    .line 765
    iget-object v0, v8, Lcom/android/server/am/BroadcastQueueModernImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 766
    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    .line 768
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    :cond_1
    move-object v13, v0

    .line 770
    invoke-virtual {v9, v13}, Lcom/android/server/am/BroadcastRecord;->setMatchingRecordsCache(Landroid/util/ArrayMap;)V

    const/4 v14, 0x0

    move v15, v14

    move/from16 v16, v15

    .line 773
    :goto_0
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_6

    .line 774
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 776
    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v1

    .line 775
    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    .line 778
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 779
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 780
    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v1

    .line 781
    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 782
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    .line 783
    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 782
    invoke-virtual {v3, v1, v4, v6, v9}, Lcom/android/server/am/FreecessController;->isMARsTargetDeferrable(ILjava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 784
    invoke-virtual {v9, v15, v2}, Lcom/android/server/am/BroadcastRecord;->setMARsTargetReceiver(IZ)V

    .line 792
    :cond_2
    iget-object v1, v8, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {v1, v9, v5}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v14

    :goto_1
    if-eqz v3, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skipped by policy at enqueue("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p1

    move v4, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_2

    .line 809
    :cond_4
    iget-object v1, v8, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {v0, v9, v15, v1}, Lcom/android/server/am/BroadcastProcessQueue;->enqueueOrReplaceBroadcast(Lcom/android/server/am/BroadcastRecord;ILcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 812
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_5
    invoke-virtual {v8, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    move/from16 v16, v2

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 822
    :cond_6
    invoke-virtual {v8, v12}, Lcom/android/server/am/BroadcastQueueModernImpl;->skipAndCancelReplacedBroadcasts(Landroid/util/ArraySet;)V

    .line 823
    invoke-virtual {v12}, Landroid/util/ArraySet;->clear()V

    .line 824
    iget-object v0, v8, Lcom/android/server/am/BroadcastQueueModernImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 825
    invoke-virtual {v13}, Landroid/util/ArrayMap;->clear()V

    .line 826
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastRecord;->clearMatchingRecordsCache()V

    .line 827
    iget-object v0, v8, Lcom/android/server/am/BroadcastQueueModernImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v11, v13}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 830
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v16, :cond_8

    .line 831
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    .line 832
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    .line 835
    :cond_8
    invoke-static {v10}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public enqueueDelayedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mDelayedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enqueueUpdateRunningList()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V
    .locals 12

    .line 1441
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1442
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring finishReceiverActiveLocked; no active broadcast for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "finishReceiver"

    .line 1446
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1447
    iget-object v9, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1448
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v10

    .line 1449
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v5

    .line 1450
    iget-object v1, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, v9

    move-object v4, v10

    move-object v6, v11

    move v7, p2

    move-object v8, p3

    .line 1452
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 1455
    iget p2, v10, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v10, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v9, :cond_2

    .line 1456
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1457
    invoke-static {v11}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1458
    invoke-static {v11}, Lcom/android/server/am/BroadcastRecord;->getReceiverClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1459
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1460
    invoke-static {v2, p2, p3}, Lcom/android/internal/os/TimeoutRecord;->forBroadcastReceiver(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p2

    .line 1459
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    goto :goto_0

    .line 1463
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1464
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1468
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->checkAndRemoveWaitingFor()V

    .line 1470
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 9

    .line 1360
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p1

    const/4 p6, 0x0

    if-eqz p1, :cond_5

    .line 1361
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1366
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 1367
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v1

    .line 1368
    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v2, :cond_1

    .line 1369
    iput p2, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 1370
    iput-object p3, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1371
    iput-object p4, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 1372
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isNoAbort()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1373
    iput-boolean p5, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    :cond_1
    const-string/jumbo p2, "remote app"

    const/4 p3, 0x1

    .line 1380
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1385
    iget-boolean p2, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-eqz p2, :cond_2

    add-int/2addr v1, p3

    move p2, v1

    .line 1386
    :goto_0
    iget-object p4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1387
    iget-object p4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "resultAbort"

    move-object v1, p0

    move-object v4, v0

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1392
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1393
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return p3

    .line 1398
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    .line 1400
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1401
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_0
    .catch Lcom/android/server/am/BroadcastDeliveryFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_4
    return p6

    .line 1405
    :catch_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->reEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1406
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return p3

    .line 1362
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring finishReceiverLocked; no active broadcast for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return p6
.end method

.method public final forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 5

    .line 1757
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 1758
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v3, :cond_1

    .line 1760
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1761
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1763
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v2, v1

    .line 1767
    :cond_0
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 1771
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    :cond_3
    return v2
.end method

.method public final forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z
    .locals 5

    .line 1780
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 1781
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v3, :cond_1

    .line 1783
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1784
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1785
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v2, v1

    .line 1788
    :cond_0
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    :cond_3
    return v2
.end method

.method public forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    .locals 2

    .line 1907
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1908
    :try_start_0
    new-instance v1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda21;

    invoke-direct {p1, p2, p3}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda21;-><init>(J)V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1911
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I
    .locals 0

    .line 1628
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    return p0
.end method

.method public getOrCreateProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 1

    .line 2252
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 3

    .line 2258
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_0
    if-eqz v0, :cond_2

    .line 2260
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2262
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 2268
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;-><init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V

    .line 2269
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    if-nez v0, :cond_3

    .line 2272
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 2274
    :cond_3
    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    :goto_2
    return-object v1
.end method

.method public getPreferredSchedulingGroupLocked(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 741
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 742
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getPreferredSchedulingGroupLocked()I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method public getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 1

    .line 2281
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 0

    .line 2286
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_0
    if-eqz p0, :cond_1

    .line 2288
    iget-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 2291
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecordsLookupCache()Landroid/util/ArrayMap;
    .locals 1

    .line 915
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 916
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    .line 918
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I
    .locals 3

    const/4 v0, 0x0

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 389
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getRunningSize()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 364
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 365
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getRunningUrgentCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 375
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 376
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isBeyondBarrierLocked(JLjava/io/PrintWriter;)Z
    .locals 1

    .line 1838
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda22;-><init>(J)V

    const-string p1, "barrier"

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/am/BroadcastQueueModernImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public isDelayBehindServices()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isDispatchedLocked(Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .locals 3

    .line 1847
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda24;-><init>(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public isIdleLocked()Z
    .locals 1

    .line 1824
    sget-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->isIdleLocked(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public isIdleLocked(Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1828
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "idle"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public isPendingBroadcastPackageLocked(I)Z
    .locals 4

    .line 349
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 350
    iget v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isPendingColdStartValid()Z
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_0

    .line 588
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 591
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result p0

    return p0
.end method

.method public final isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2029
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p0

    .line 2031
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean p1, p1, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v0

    :catchall_0
    move-exception p1

    .line 2032
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1
.end method

.method public final logBroadcastDeliveryEventReported(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2180
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v4

    .line 2181
    iget v3, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    const/16 v3, 0x3e8

    :cond_0
    move v6, v3

    .line 2182
    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p5

    .line 2183
    instance-of v8, v3, Lcom/android/server/am/BroadcastFilter;

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_0
    if-nez v0, :cond_2

    const/4 v11, 0x0

    move/from16 v23, v5

    goto :goto_1

    .line 2191
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveViaColdStart()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    const/16 v11, 0x14

    move/from16 v23, v11

    move v11, v5

    goto :goto_1

    .line 2196
    :cond_3
    iget v5, v0, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    move/from16 v23, v5

    move v11, v10

    .line 2200
    :goto_1
    iget-object v5, v2, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v12, v5, p4

    iget-wide v14, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v14, v12, v14

    .line 2202
    iget-object v5, v2, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v16, v5, p4

    sub-long v24, v16, v12

    if-eqz v0, :cond_6

    .line 2204
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveWasStopped()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v9

    goto :goto_2

    :cond_4
    move v0, v10

    :goto_2
    const/16 v5, 0x1db

    const-wide/16 v12, 0x0

    if-eqz v1, :cond_5

    .line 2209
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    move-object/from16 v16, v1

    iget-object v1, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 2210
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/BroadcastRecord;->calculateTypeForLogging()I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v19

    iget-object v1, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v20

    .line 2211
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/BroadcastRecord;->getReceiverPriority(Ljava/lang/Object;)I

    move-result v21

    iget v1, v2, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    move/from16 v22, v1

    move v3, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v11

    move-wide v9, v14

    move-wide v11, v12

    move-wide/from16 v13, v24

    move v15, v0

    .line 2207
    invoke-static/range {v3 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIJJJILjava/lang/String;Ljava/lang/String;IIIIII)V

    :cond_6
    return-void
.end method

.method public final notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V
    .locals 9

    .line 2217
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->notifyBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 2219
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 2220
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastHistory;->onBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2222
    invoke-static {p1}, Lcom/android/server/am/BroadcastQueueImpl;->logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V

    .line 2225
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->mCounted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2226
    iput-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->mCounted:Z

    .line 2227
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerServiceExt;->updateBrMap(Ljava/lang/String;Landroid/content/Intent;)V

    .line 2231
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2232
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    move v5, v1

    move v6, v5

    .line 2235
    :goto_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2236
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 2238
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2244
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v7, v0, v2

    .line 2245
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    :cond_3
    return-void
.end method

.method public final notifyFinishReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V
    .locals 1

    .line 2166
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->wasDeliveryAttempted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BroadcastQueueModernImpl;->logBroadcastDeliveryEventReported(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V

    .line 2170
    :cond_0
    iget p1, p3, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    iget-object p2, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2172
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    :cond_2
    return-void
.end method

.method public final notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .line 2118
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 2120
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2121
    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v1, p3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2124
    iget-object p1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p3

    .line 2125
    :goto_0
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 2127
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2131
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 2134
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p0, v0, p3, p1}, Landroid/content/pm/PackageManagerInternal;->setPackageStoppedState(Ljava/lang/String;ZI)V

    return-void
.end method

.method public final notifyScheduleRegisteredReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)V
    .locals 0

    .line 2109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public final notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4

    .line 2070
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 2071
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->incrementCurReceivers()V

    .line 2074
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 2082
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_1

    .line 2083
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 2084
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    return-void
.end method

.method public final notifyStoppedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 1

    .line 2094
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->decrementCurReceivers()V

    .line 2097
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_0

    .line 2098
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public onApplicationAttachedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 640
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 646
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 649
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 653
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 654
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 656
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 657
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    .line 659
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 660
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_0
    .catch Lcom/android/server/am/BroadcastDeliveryFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 663
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->reEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 664
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 665
    throw p1

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 693
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    .line 694
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_0

    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->clearRunningColdStart()V

    :cond_0
    if-eqz v0, :cond_3

    .line 699
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_3

    const/4 p1, 0x0

    .line 700
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 703
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    const-string/jumbo v1, "onApplicationCleanupLocked"

    .line 704
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 711
    :cond_1
    new-instance p1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda5;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 714
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 715
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 716
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    :cond_3
    return-void
.end method

.method public onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public onApplicationTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public onProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final promoteToRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 3

    const/4 v0, 0x0

    .line 1479
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    .line 1480
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    aput-object p1, v1, v0

    .line 1483
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastQueue.mRunning["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 1487
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingManifest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1488
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingOrdered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1489
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingResultTo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    .line 1493
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1495
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1500
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    if-eqz v0, :cond_3

    .line 1502
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    goto :goto_2

    .line 1504
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessStartingBegin()V

    :goto_2
    return-void
.end method

.method public final reEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 10

    .line 623
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const-string v1, "isActive"

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 625
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v5

    .line 626
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v6

    .line 627
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "reEnqueueActiveBroadcast"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 629
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->reEnqueueActiveBroadcast()V

    return-void
.end method

.method public final refreshProcessQueueLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 2057
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2058
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 2061
    :cond_0
    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 2062
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final refreshProcessQueuesLocked(I)V
    .locals 1

    .line 2041
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_0
    if-eqz p1, :cond_0

    .line 2045
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 2046
    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    .line 2048
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public removeProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 1

    .line 2298
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 5

    .line 2305
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 2307
    iget-object v3, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_0

    .line 2309
    iget-object p0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p0, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    .line 2311
    :cond_0
    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz p1, :cond_1

    .line 2312
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 2314
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    return-object v0

    .line 2320
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2140
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 2141
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v5

    move-wide v11, v5

    goto :goto_0

    :cond_0
    move-wide v11, v3

    :goto_0
    cmp-long v2, v11, v3

    if-gtz v2, :cond_1

    return-void

    .line 2145
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2146
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v9, v2

    goto :goto_2

    .line 2147
    :cond_2
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2148
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    if-nez v9, :cond_4

    return-void

    .line 2154
    :cond_4
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v8, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v1, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 2155
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v1, p1

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2156
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v15

    .line 2154
    invoke-virtual/range {v7 .. v15}, Landroid/app/usage/UsageStatsManagerInternal;->reportBroadcastDispatched(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    return-void
.end method

.method public final scheduleReceiverColdLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 946
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v2

    const-string v3, "isActive"

    invoke-static {v2, v3}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    const/4 v2, 0x1

    .line 949
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveViaColdStart(Z)V

    .line 951
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    .line 952
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v4

    .line 953
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 956
    instance-of v6, v5, Lcom/android/server/am/BroadcastFilter;

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 957
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const-string v3, "BroadcastFilter for cold app"

    .line 958
    invoke-virtual {v0, v1, v7, v3}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v2

    .line 963
    :cond_0
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/BroadcastQueueModernImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 965
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 966
    invoke-virtual {v0, v1, v7, v4}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v2

    .line 970
    :cond_1
    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v4, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 971
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 973
    iget v5, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 974
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveWasStopped(Z)V

    .line 976
    :cond_2
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    or-int/lit8 v13, v5, 0x4

    .line 977
    new-instance v14, Lcom/android/server/am/HostingRecord;

    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 978
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->getHostingRecordTriggerType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "broadcast"

    invoke-direct {v14, v7, v4, v5, v6}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 980
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v4, v6, v9

    if-lez v4, :cond_3

    move v15, v2

    goto :goto_0

    :cond_3
    move v15, v5

    .line 983
    :goto_0
    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    move/from16 v16, v2

    goto :goto_1

    :cond_4
    move/from16 v16, v5

    .line 987
    :goto_1
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    const/4 v12, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_5

    .line 990
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v3, 0x5

    const-string/jumbo v4, "startProcessLocked failed"

    .line 991
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v2

    :cond_5
    return v5
.end method

.method public final scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 5

    .line 1014
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const-string v1, "isActive"

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    const-string/jumbo v0, "scheduleReceiverWarmLocked"

    .line 1016
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1017
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1018
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 1019
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v2

    .line 1021
    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    if-nez v3, :cond_0

    .line 1022
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 1024
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1027
    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1029
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->dispatchReceivers(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1031
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v1, 0x2

    .line 1035
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1038
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 1043
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    goto :goto_0

    .line 1045
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1288
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v2, :cond_0

    return-void

    .line 1289
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    .line 1290
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v4

    move-object v5, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v5, :cond_5

    .line 1292
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    const/4 v7, 0x2

    invoke-virtual {v6, v2, v7}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 1294
    iget-boolean v6, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v6, :cond_2

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v6, v7, :cond_2

    .line 1295
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v8, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1296
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    iget v11, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v12, 0x1

    .line 1295
    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1300
    :cond_2
    :try_start_0
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v8, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    const/4 v11, 0x0

    iget-boolean v12, v1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    const/4 v13, 0x1

    iget v14, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1304
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v15

    .line 1305
    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_3

    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_1
    move/from16 v16, v3

    if-eqz v0, :cond_4

    .line 1306
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_2

    :cond_4
    const/16 v17, 0x0

    .line 1300
    :goto_2
    invoke-interface/range {v5 .. v17}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to schedule result of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " via "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1309
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    const/16 v0, 0xd

    const/16 v3, 0x1a

    const-string v5, "Can\'t deliver broadcast"

    .line 1310
    invoke-virtual {v2, v5, v0, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    :cond_5
    :goto_3
    const/4 v2, 0x0

    .line 1315
    iput-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 1317
    iput-boolean v4, v1, Lcom/android/server/am/BroadcastRecord;->hadResultTo:Z

    return-void
.end method

.method public final setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    move-object/from16 v4, p7

    const-string/jumbo v5, "setDeliveryState"

    .line 1542
    invoke-static {v5}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v5

    .line 1545
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result v6

    .line 1546
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/BroadcastRecord;->setDeliveryState(IILjava/lang/String;)Z

    move-result v7

    const-string v8, "/beyondCountChanged:"

    const-string v9, "/reason:"

    const-string v10, "/state: "

    if-eqz p1, :cond_2

    const/4 v11, 0x4

    if-ne v3, v11, :cond_0

    .line 1552
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceActiveBegin()V

    .line 1555
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v4, v2

    goto :goto_0

    :cond_0
    if-ne v6, v11, :cond_1

    .line 1559
    invoke-static/range {p6 .. p6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1560
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceActiveEnd()V

    .line 1563
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v4, v2

    goto :goto_0

    .line 1569
    :cond_1
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    invoke-static/range {p6 .. p6}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v2

    goto :goto_0

    .line 1577
    :cond_2
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    invoke-static/range {p6 .. p6}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v2

    .line 1585
    :goto_0
    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1586
    invoke-static/range {p6 .. p6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1595
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyFinishReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V

    :cond_3
    if-eqz v7, :cond_9

    .line 1601
    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 1602
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    .line 1607
    :cond_4
    iget-boolean v3, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v3, :cond_5

    iget-boolean v3, v1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v3, :cond_9

    :cond_5
    const/4 v3, 0x0

    .line 1608
    :goto_1
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 1609
    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/BroadcastQueueModernImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne v3, v2, :cond_7

    .line 1610
    :cond_6
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1612
    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1613
    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v4

    .line 1611
    invoke-virtual {p0, v6, v4}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1615
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 1616
    invoke-virtual {p0, v4}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1620
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 1624
    :cond_9
    invoke-static {v5}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 2018
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 2019
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    .line 2018
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2020
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_0
    return-void
.end method

.method public final shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 5

    .line 1421
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1422
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveAssumedDeliveryCountSinceIdle()I

    move-result v0

    .line 1423
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveCountSinceIdle()I

    move-result v3

    .line 1424
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveAssumedDeliveryCountSinceIdle()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1425
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v4, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    if-ge v3, v4, :cond_1

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    goto :goto_1

    .line 1430
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveCountSinceIdle()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    .line 1433
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method

.method public final shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1055
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result v3

    move-object/from16 v4, p1

    .line 1056
    iget-object v4, v4, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1057
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1060
    invoke-static {v3}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "already terminal state"

    return-object v0

    :cond_0
    if-eqz v4, :cond_1

    .line 1065
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isInFullBackup()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "isInFullBackup"

    return-object v0

    .line 1068
    :cond_1
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    .line 1072
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v0, "getReceiverIntent"

    return-object v0

    .line 1078
    :cond_3
    instance-of v3, v2, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_4

    move-object v5, v2

    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    iget-object v5, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    .line 1079
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    if-eq v5, v6, :cond_4

    const-string v0, "BroadcastFilter for mismatched PID"

    return-object v0

    .line 1083
    :cond_4
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    const-string v5, " is skipped in RestrictedPackage to "

    const-string v7, "intent:"

    const-string v8, "BroadcastQueue"

    const/4 v9, 0x0

    if-eqz v3, :cond_7

    .line 1086
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1090
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_5

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_5

    .line 1091
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1092
    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1093
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    .line 1094
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v11

    move-object v14, v3

    move/from16 v23, v9

    move v15, v10

    goto :goto_0

    :cond_5
    move v15, v3

    move-object v11, v6

    move-object v14, v11

    move/from16 v23, v9

    .line 1096
    :goto_0
    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .line 1097
    iget-object v3, v2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_b

    if-eqz v11, :cond_6

    .line 1099
    invoke-virtual {v11}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    goto :goto_1

    :cond_6
    move-object/from16 v22, v6

    .line 1101
    :goto_1
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v12

    new-instance v13, Landroid/content/ComponentName;

    iget-object v3, v2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v13, v3, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "broadcast"

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    iget v9, v2, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    const/16 v20, 0x1

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 1102
    invoke-virtual {v10}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v21

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v24

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    move/from16 v19, v9

    .line 1101
    invoke-virtual/range {v12 .. v24}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "To dynamic Broadcast receiver from Restricted UID"

    return-object v0

    .line 1115
    :cond_7
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1116
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v10, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1119
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v13, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->onSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1121
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getUserId()I

    move-result v10

    .line 1126
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_8

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_8

    .line 1127
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1128
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v12, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1129
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v11

    .line 1130
    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v13

    move/from16 v21, v11

    move v14, v12

    move-object v12, v10

    goto :goto_2

    :cond_8
    move-object v12, v6

    move-object v13, v12

    move/from16 v21, v9

    move v14, v10

    .line 1133
    :goto_2
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1134
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v10, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1138
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    :cond_9
    move/from16 v22, v9

    if-eqz v13, :cond_a

    .line 1142
    invoke-virtual {v13}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    goto :goto_3

    :cond_a
    move-object/from16 v20, v6

    .line 1145
    :goto_3
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v10

    const-string v2, "broadcast"

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 1146
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    const/16 v18, 0x0

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 1147
    invoke-virtual {v4}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v19

    move-object v11, v3

    move v13, v14

    move-object v14, v2

    move-object/from16 v16, v0

    .line 1145
    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "To manifest broadcast receiver from Restricted UID"

    return-object v0

    :cond_b
    return-object v6
.end method

.method public final skipAndCancelReplacedBroadcasts(Landroid/util/ArraySet;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 839
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 840
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    move v3, v0

    .line 842
    :goto_1
    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 843
    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 844
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-interface {v4, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 4

    .line 1799
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 1800
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 1802
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$1;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V

    const/4 v1, 0x2

    const-string v2, "android"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1819
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 1731
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-string v3, "Test "

    if-ge v1, v2, :cond_3

    .line 1732
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v2, :cond_2

    .line 1734
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1735
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1736
    iget-wide v6, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLastTestFailureTime:J

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long p1, v4, v6

    if-lez p1, :cond_0

    .line 1737
    iput-wide v4, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLastTestFailureTime:J

    .line 1738
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed due to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1738
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1740
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return v0

    .line 1744
    :cond_1
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1747
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " passed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 8

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->updateDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V

    .line 414
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 416
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    if-eqz v0, :cond_9

    if-eqz v4, :cond_8

    .line 423
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_4

    .line 424
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v3

    .line 425
    :goto_3
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_5

    .line 426
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    if-eqz v0, :cond_7

    if-nez v2, :cond_a

    .line 428
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 429
    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_4

    .line 432
    :cond_8
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_4

    :cond_9
    if-eqz v4, :cond_a

    .line 435
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 439
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-nez v0, :cond_b

    .line 440
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    :cond_b
    return-void
.end method

.method public final updateRunningList()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 446
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunningListLocked()V

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateRunningListLocked()V
    .locals 14

    .line 465
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningUrgentCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v1, v1, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 467
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v1, v1

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningSize()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "updateRunningList"

    .line 470
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 474
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 478
    iget-object v6, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    iget-object v6, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x3

    if-eqz v6, :cond_a

    if-lez v1, :cond_a

    .line 483
    iget-object v9, v6, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 484
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v10

    .line 488
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningSize()I

    move-result v12

    iget-object v13, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v13, v13, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    if-lt v12, v13, :cond_2

    .line 496
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingUrgent()Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v12, v10, v2

    if-lez v12, :cond_3

    if-nez v4, :cond_3

    .line 505
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v10, v11}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_4

    .line 511
    :cond_3
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {v6, v10}, Lcom/android/server/am/BroadcastProcessQueue;->clearDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V

    .line 515
    invoke-virtual {p0, v6}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateWarmProcess(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 517
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 519
    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v12, v6, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v12, v8}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 523
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v8

    if-nez v8, :cond_7

    .line 525
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    goto :goto_1

    .line 532
    :cond_4
    iget-object v8, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v8, :cond_5

    .line 533
    iput-object v6, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_2

    .line 534
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->isPendingColdStartValid()Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_1
    move-object v6, v9

    goto :goto_0

    .line 540
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->clearInvalidPendingColdStart()V

    .line 541
    iput-object v6, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 547
    :cond_7
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/server/am/BroadcastQueueModernImpl;->promoteToRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    if-eqz v10, :cond_8

    .line 550
    iget-boolean v8, v6, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    or-int/2addr v7, v8

    .line 552
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v8
    :try_end_0
    .catch Lcom/android/server/am/BroadcastDeliveryFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 554
    :catch_0
    invoke-virtual {p0, v6}, Lcom/android/server/am/BroadcastQueueModernImpl;->reEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v8, v5

    goto :goto_3

    .line 558
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleReceiverColdLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v8

    :goto_3
    if-eqz v8, :cond_9

    .line 563
    invoke-virtual {p0, v6}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_a
    :goto_4
    if-eqz v7, :cond_b

    .line 576
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 579
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->checkPendingColdStartValidity()V

    .line 580
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->checkAndRemoveWaitingFor()V

    .line 582
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final updateWarmProcess(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4

    .line 1998
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2006
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 2007
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    .line 2006
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    :cond_0
    return-void
.end method

.method public final waitFor(Ljava/util/function/BooleanSupplier;)V
    .locals 3

    .line 1879
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1880
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1881
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1882
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1883
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 1885
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1887
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 1882
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public waitForBarrier(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1858
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1859
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 1860
    :try_start_0
    sget-object v3, Lcom/android/server/am/BroadcastQueueModernImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v4, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/BroadcastQueueModernImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1862
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1864
    :try_start_1
    new-instance v2, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;JLjava/io/PrintWriter;)V

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1866
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 1867
    :try_start_2
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1869
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_1
    move-exception p1

    .line 1866
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1867
    :try_start_4
    sget-object v1, Lcom/android/server/am/BroadcastQueueModernImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v2, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1869
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1870
    throw p1

    :catchall_2
    move-exception p0

    .line 1869
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_3
    move-exception p0

    .line 1862
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public waitForDispatched(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 1

    .line 1875
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public waitForIdle(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1853
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method
