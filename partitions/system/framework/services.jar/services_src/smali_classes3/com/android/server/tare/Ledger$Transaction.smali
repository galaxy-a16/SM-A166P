.class public Lcom/android/server/tare/Ledger$Transaction;
.super Ljava/lang/Object;
.source "Ledger.java"


# instance fields
.field public final ctp:J

.field public final delta:J

.field public final endTimeMs:J

.field public final eventId:I

.field public final startTimeMs:J

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJILjava/lang/String;JJ)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    .line 68
    iput-wide p3, p0, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    .line 69
    iput p5, p0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    .line 70
    iput-object p6, p0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    .line 71
    iput-wide p7, p0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    .line 72
    iput-wide p9, p0, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    return-void
.end method
