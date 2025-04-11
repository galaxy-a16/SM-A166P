.class public Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;
.super Ljava/lang/Object;
.source "AbnormalFgsDetector.java"


# instance fields
.field public count:I

.field public detectPss:J

.field public processName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/chimera/AbnormalFgsDetector;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/AbnormalFgsDetector;Ljava/lang/String;IIJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->this$0:Lcom/android/server/chimera/AbnormalFgsDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->uid:I

    iput p4, p0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    iput-wide p5, p0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->detectPss:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", U "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", C "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", P "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->detectPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
