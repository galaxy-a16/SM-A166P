.class final Lcom/android/server/job/controllers/QuotaController$QuotaBump;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Lcom/android/server/job/controllers/QuotaController$TimedEvent;


# instance fields
.field public final eventTimeElapsed:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 2030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2031
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QuotaBump;->eventTimeElapsed:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    const-string v0, "Quota bump @ "

    .line 2041
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2042
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QuotaBump;->eventTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2043
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public getEndTimeElapsed()J
    .locals 2

    .line 2036
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QuotaBump;->eventTimeElapsed:J

    return-wide v0
.end method
