.class public Lcom/android/server/tare/Ledger$RewardBucket;
.super Ljava/lang/Object;
.source "Ledger.java"


# instance fields
.field public final cumulativeDelta:Landroid/util/SparseLongArray;

.field public startTimeMs:J


# direct methods
.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/tare/Ledger$RewardBucket;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/tare/Ledger$RewardBucket;->reset()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    iget-object p0, p0, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    return-void
.end method
