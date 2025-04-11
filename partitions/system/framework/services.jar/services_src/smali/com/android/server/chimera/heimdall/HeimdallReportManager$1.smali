.class public Lcom/android/server/chimera/heimdall/HeimdallReportManager$1;
.super Ljava/lang/Object;
.source "HeimdallReportManager.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallReportManager;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$1;->this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    iput-object p2, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
