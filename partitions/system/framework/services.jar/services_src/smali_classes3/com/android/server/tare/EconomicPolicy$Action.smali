.class public Lcom/android/server/tare/EconomicPolicy$Action;
.super Ljava/lang/Object;
.source "EconomicPolicy.java"


# instance fields
.field public final basePrice:J

.field public final costToProduce:J

.field public final id:I

.field public final respectsStockLimit:Z


# direct methods
.method public constructor <init>(IJJ)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 160
    invoke-direct/range {v0 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJZ)V

    return-void
.end method

.method public constructor <init>(IJJZ)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/android/server/tare/EconomicPolicy$Action;->id:I

    .line 165
    iput-wide p2, p0, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    .line 166
    iput-wide p4, p0, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    .line 167
    iput-boolean p6, p0, Lcom/android/server/tare/EconomicPolicy$Action;->respectsStockLimit:Z

    return-void
.end method
