.class public Lcom/android/server/alarm/Alarm$Snapshot;
.super Ljava/lang/Object;
.source "Alarm.java"


# instance fields
.field public final mPolicyWhenElapsed:[J

.field public final mTag:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;)V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    iput v0, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mType:I

    .line 452
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mTag:Ljava/lang/String;

    .line 453
    invoke-static {p1}, Lcom/android/server/alarm/Alarm;->-$$Nest$fgetmPolicyWhenElapsed(Lcom/android/server/alarm/Alarm;)[J

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mPolicyWhenElapsed:[J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 3

    .line 457
    iget v0, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mType:I

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "tag"

    .line 458
    iget-object v1, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 459
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "policyWhenElapsed:"

    .line 460
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->policyIndexToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mPolicyWhenElapsed:[J

    aget-wide v1, v1, v0

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method
