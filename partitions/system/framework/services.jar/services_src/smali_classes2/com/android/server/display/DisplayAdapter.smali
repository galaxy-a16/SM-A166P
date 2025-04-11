.class public abstract Lcom/android/server/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"


# static fields
.field public static final NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/display/DisplayAdapter$Listener;

.field public final mName:Ljava/lang/String;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method public static synthetic $r8$lambda$9wZC4U_nQsTwwpchyBbfp14IUgc(Lcom/android/server/display/DisplayAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayAdapter;->lambda$sendTraversalRequestLocked$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$gm45_jC2LhoVo8UVaUhDk7CBBT8(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayAdapter;->lambda$sendDisplayDeviceEventLocked$0(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 56
    iput-object p2, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p4, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    .line 59
    iput-object p5, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    return-void
.end method

.method public static createMode(IIF)Landroid/view/Display$Mode;
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [F

    new-array v0, v0, [I

    .line 123
    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF[F[I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static createMode(IIF[F[I)Landroid/view/Display$Mode;
    .locals 8

    .line 129
    new-instance v7, Landroid/view/Display$Mode;

    sget-object v0, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    move-object v0, v7

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/Display$Mode;-><init>(IIIF[F[I)V

    return-object v7
.end method

.method private synthetic lambda$sendDisplayDeviceEventLocked$0(Lcom/android/server/display/DisplayDevice;I)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    invoke-interface {p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$Listener;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method private synthetic lambda$sendTraversalRequestLocked$1()V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    invoke-interface {p0}, Lcom/android/server/display/DisplayAdapter$Listener;->onTraversalRequested()V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method public registerLocked()V
    .locals 0

    .line 0
    return-void
.end method

.method public final sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendTraversalRequestLocked()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
