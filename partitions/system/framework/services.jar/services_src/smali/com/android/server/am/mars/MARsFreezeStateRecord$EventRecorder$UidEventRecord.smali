.class public Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;
.super Ljava/lang/Object;
.source "MARsFreezeStateRecord.java"


# instance fields
.field public final freezeEvents:Ljava/util/ArrayDeque;

.field public runningEndTime:J

.field public final runningStartTime:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetfreezeEvents(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->freezeEvents:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetrunningEndTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->runningEndTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetrunningStartTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->runningStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputrunningEndTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->runningEndTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddEvent(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->addEvent(Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprintAllEvents(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->printAllEvents()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveOutdated(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->removeOutdated(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->runningStartTime:J

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->runningEndTime:J

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->freezeEvents:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final addEvent(Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->freezeEvents:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;-><init>(Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord-IA;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final printAllEvents()V
    .locals 5

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->freezeEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->-$$Nest$fgetevent(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-static {v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->-$$Nest$fgettime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->-$$Nest$fgetreason(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsFreezeStateRecord"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeOutdated(J)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->freezeEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x5265c00

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->freezeEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;

    invoke-static {v2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->-$$Nest$fgettime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->freezeEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
