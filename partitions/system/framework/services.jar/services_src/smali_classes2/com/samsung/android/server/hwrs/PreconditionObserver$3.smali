.class public Lcom/samsung/android/server/hwrs/PreconditionObserver$3;
.super Ljava/lang/Object;
.source "PreconditionObserver.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "[HWRS_SYS]PreconditionObserver"

    const-string/jumbo p2, "onServiceConnected - binding completed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$fputmBoundCameraShare(Lcom/samsung/android/server/hwrs/PreconditionObserver;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "[HWRS_SYS]PreconditionObserver"

    const-string/jumbo v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$fputmBoundCameraShare(Lcom/samsung/android/server/hwrs/PreconditionObserver;Z)V

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$3;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    const/4 p1, 0x4

    const-wide/16 v0, 0xbb8

    const/4 v2, 0x2

    invoke-static {p0, v2, p1, v0, v1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$msendMessageDelayed(Lcom/samsung/android/server/hwrs/PreconditionObserver;IIJ)V

    return-void
.end method
