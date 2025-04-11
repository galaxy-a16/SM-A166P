.class public Lcom/android/server/enterprise/plm/LockDetectionTracker$1;
.super Landroid/os/Handler;
.source "LockDetectionTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/LockDetectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/LockDetectionTracker;Landroid/os/Looper;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker$1;->this$0:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 30
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker$1;->this$0:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    invoke-static {p0, v0, p1}, Lcom/android/server/enterprise/plm/LockDetectionTracker;->-$$Nest$mhandleLockDetection(Lcom/android/server/enterprise/plm/LockDetectionTracker;II)V

    :goto_0
    return-void
.end method
