.class public Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "ContentCaptureManagerServiceShellCommand.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
