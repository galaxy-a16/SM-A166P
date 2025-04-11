.class public Lcom/android/server/enterprise/auditlog/LogWritter;
.super Ljava/lang/Object;
.source "LogWritter.java"


# instance fields
.field public mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

.field public mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

.field public mObserver:Lcom/android/server/enterprise/auditlog/IObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCircularBuffer(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/CircularBuffer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmObserver(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/IObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    return-object p0
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 46
    new-instance p1, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;-><init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public createBubbleDirectory()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    return-void
.end method

.method public createBubbleFile()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getBufferLogSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    return-void
.end method

.method public deleteAllFiles()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteAllFiles()V

    return-void
.end method

.method public getBufferLogSize()J
    .locals 2

    .line 122
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getBufferLogSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCriticalLogSize()I
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getCriticalLogSize()I

    move-result p0

    return p0
.end method

.method public getCurrentLogFileSize()I
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getCurrentLogFileSize()I

    move-result p0

    return p0
.end method

.method public getDumpFilesList()Ljava/lang/Object;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getDumpFilesList()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getMaximumLogSize()I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getMaximumLogSize()I

    move-result p0

    return p0
.end method

.method public setBootCompleted(Z)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setBootCompleted(Z)V

    return-void
.end method

.method public setBufferLogSize(J)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setBufferLogSize(J)V

    return-void
.end method

.method public setCriticalLogSize(I)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setCriticalLogSize(I)V

    return-void
.end method

.method public setIsDumping(ZZ)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setIsDumping(ZZ)V

    return-void
.end method

.method public setLastTimestamp()V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 136
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setLastTimestamp(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setMaximumLogSize(I)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setMaximumLogSize(I)V

    return-void
.end method

.method public setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    return-void
.end method

.method public setTypeOfDump(Z)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setTypeOfDump(Z)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->removeCallbacks()V

    .line 70
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->closeFile()V

    return-void
.end method

.method public swapFiles(Ljava/lang/String;)V
    .locals 3

    .line 51
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "swap"

    .line 53
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 55
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "log"

    .line 62
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 64
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
