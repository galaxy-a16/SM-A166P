.class public Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BLOCK_HANDLER_MESSAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KMX|DoubleClickBlocker"

.field private static final handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private static final sIsBlocking:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;->sIsBlocking:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker$1;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker$1;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;->sIsBlocking:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static isBlocking()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;->sIsBlocking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;->sIsBlocking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "KMX|DoubleClickBlocker"

    const-string v1, "set blocking=false by release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setBlocking(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;->sIsBlocking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
