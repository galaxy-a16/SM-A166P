.class public Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;
.super Landroid/os/Handler;
.source "KnoxAnalyticsContainer.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/KnoxAnalyticsContainer;Landroid/os/Looper;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 90
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnalyticsContainerHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 103
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-static {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->-$$Nest$msendSnapshotLog(Lcom/android/server/knox/KnoxAnalyticsContainer;I)V

    goto :goto_0

    .line 97
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 98
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-static {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->-$$Nest$mhandleSendLocationLog(Lcom/android/server/knox/KnoxAnalyticsContainer;I)V

    :goto_0
    return-void
.end method
