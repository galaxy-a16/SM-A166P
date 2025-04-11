.class public Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;
.super Ljava/lang/Object;
.source "SystemStateTracker.java"

# interfaces
.implements Lcom/android/server/enterprise/plm/LockDetectionTracker$LockDetectionEventCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/plm/SystemStateTracker;Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V

    return-void
.end method


# virtual methods
.method public onLockStateChange(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 7

    .line 657
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x7

    .line 660
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 661
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p4

    .line 657
    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
