.class public Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;
.super Ljava/lang/Object;
.source "ChimeraAppInfo.java"


# instance fields
.field public DRAMUsed:J

.field public avgPss:J

.field public importance:I

.field public initialIdlePss:J

.field public pid:I

.field public pidFd:Ljava/io/FileDescriptor;

.field public processName:Ljava/lang/String;

.field public pss:J


# direct methods
.method public constructor <init>(ILjava/lang/String;JJJI)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 48
    iput-object p2, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 49
    iput-wide p3, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 50
    iput-wide p5, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    .line 51
    iput-wide p7, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    .line 52
    iput p9, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->importance:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
