.class public Lcom/android/server/tare/Ledger;
.super Ljava/lang/Object;
.source "Ledger.java"


# static fields
.field static final MAX_TRANSACTION_COUNT:I = 0x32

.field static final NUM_REWARD_BUCKET_WINDOWS:I = 0x4


# instance fields
.field public mCurrentBalance:J

.field public mRewardBucketIndex:I

.field public final mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

.field public mTransactionIndex:I

.field public final mTransactions:[Lcom/android/server/tare/Ledger$Transaction;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 88
    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    const/16 v0, 0x32

    new-array v0, v0, [Lcom/android/server/tare/Ledger$Transaction;

    .line 89
    iput-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:[Lcom/android/server/tare/Ledger$Transaction;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/tare/Ledger$RewardBucket;

    .line 92
    iput-object v1, p0, Lcom/android/server/tare/Ledger;->mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

    .line 94
    iput v0, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    return-void
.end method

.method public constructor <init>(JLjava/util/List;Ljava/util/List;)V
    .locals 5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v1, v0, [Lcom/android/server/tare/Ledger$Transaction;

    .line 89
    iput-object v1, p0, Lcom/android/server/tare/Ledger;->mTransactions:[Lcom/android/server/tare/Ledger$Transaction;

    const/4 v1, 0x0

    .line 91
    iput v1, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/android/server/tare/Ledger$RewardBucket;

    .line 92
    iput-object v2, p0, Lcom/android/server/tare/Ledger;->mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

    .line 94
    iput v1, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    .line 101
    iput-wide p1, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    .line 103
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p2, p1, -0x32

    .line 104
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    if-ge p2, p1, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mTransactions:[Lcom/android/server/tare/Ledger$Transaction;

    iget v3, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/Ledger$Transaction;

    aput-object v4, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget p1, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    .line 109
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p2, -0x1

    .line 112
    iput p2, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    add-int/lit8 p2, p1, -0x4

    .line 113
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_1
    if-ge p2, p1, :cond_1

    .line 114
    iget-object p3, p0, Lcom/android/server/tare/Ledger;->mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

    iget v0, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/Ledger$RewardBucket;

    aput-object v1, p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;I)V
    .locals 11

    .line 245
    invoke-virtual {p0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 246
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x32

    .line 249
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-string v5, ": "

    const/4 v6, 0x1

    if-ge v1, v4, :cond_3

    .line 250
    iget v4, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    add-int/2addr v4, v1

    rem-int/2addr v4, v3

    .line 251
    iget-object v3, p0, Lcom/android/server/tare/Ledger;->mTransactions:[Lcom/android/server/tare/Ledger$Transaction;

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const-string v2, "Transactions:"

    .line 257
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v6

    .line 262
    :cond_1
    iget-wide v6, v3, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    invoke-static {p1, v6, v7}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    const-string v4, "--"

    .line 263
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget-wide v6, v3, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {p1, v6, v7}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 265
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget v4, v3, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-static {v4}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object v4, v3, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    const-string v5, ")"

    if-eqz v4, :cond_2

    const-string v4, "("

    .line 268
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget-object v4, v3, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string v4, " --> "

    .line 272
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-wide v6, v3, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    invoke-static {v6, v7}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " (ctp="

    .line 274
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-wide v3, v3, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 279
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 280
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 283
    :cond_4
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    move p2, v0

    move v3, p2

    :goto_2
    const/4 v4, 0x4

    if-ge p2, v4, :cond_9

    .line 286
    iget v7, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    sub-int/2addr v7, p2

    add-int/2addr v7, v4

    rem-int/2addr v7, v4

    .line 288
    iget-object v4, p0, Lcom/android/server/tare/Ledger;->mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

    aget-object v4, v4, v7

    if-eqz v4, :cond_8

    .line 289
    iget-wide v7, v4, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    if-nez v3, :cond_6

    const-string v3, "Reward buckets:"

    .line 294
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v6

    .line 299
    :cond_6
    iget-wide v7, v4, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    invoke-static {p1, v7, v8}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    const-string v7, " ("

    .line 300
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 301
    iget-wide v7, v4, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    sub-long v7, v1, v7

    invoke-static {v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, " ago):"

    .line 302
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v0

    .line 304
    :goto_3
    iget-object v8, v4, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 305
    iget-object v8, v4, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 307
    iget-object v8, v4, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 309
    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_8
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    if-eqz v3, :cond_a

    .line 312
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 313
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_a
    return-void
.end method

.method public get24HourSum(IJ)J
    .locals 11

    const-wide/32 v0, 0x5265c00

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    .line 209
    :goto_0
    iget-object v7, p0, Lcom/android/server/tare/Ledger;->mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 210
    aget-object v7, v7, v4

    if-eqz v7, :cond_0

    .line 211
    iget-wide v8, v7, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    cmp-long v10, v8, v0

    if-ltz v10, :cond_0

    cmp-long v8, v8, p2

    if-gez v8, :cond_0

    .line 213
    iget-object v7, v7, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    invoke-virtual {v7, p1, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    add-long/2addr v5, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v5
.end method

.method public getCurrentBalance()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    return-wide v0
.end method

.method public final getCurrentRewardBucket()Lcom/android/server/tare/Ledger$RewardBucket;
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

    iget v1, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    aget-object v0, v0, v1

    .line 181
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/android/server/tare/Ledger$RewardBucket;

    invoke-direct {v0}, Lcom/android/server/tare/Ledger$RewardBucket;-><init>()V

    .line 184
    iput-wide v1, v0, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    .line 185
    iget-object v1, p0, Lcom/android/server/tare/Ledger;->mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

    iget p0, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    aput-object v0, v1, p0

    return-object v0

    .line 189
    :cond_0
    iget-wide v3, v0, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x1499700

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    return-object v0

    .line 193
    :cond_1
    iget v0, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    .line 194
    iget-object v3, p0, Lcom/android/server/tare/Ledger;->mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

    aget-object v0, v3, v0

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Lcom/android/server/tare/Ledger$RewardBucket;

    invoke-direct {v0}, Lcom/android/server/tare/Ledger$RewardBucket;-><init>()V

    .line 197
    iget-object v3, p0, Lcom/android/server/tare/Ledger;->mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

    iget p0, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    aput-object v0, v3, p0

    .line 199
    :cond_2
    invoke-static {v0}, Lcom/android/server/tare/Ledger$RewardBucket;->-$$Nest$mreset(Lcom/android/server/tare/Ledger$RewardBucket;)V

    .line 202
    iput-wide v1, v0, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    return-object v0
.end method

.method public getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;
    .locals 4

    const/4 v0, 0x0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/server/tare/Ledger;->mTransactions:[Lcom/android/server/tare/Ledger$Transaction;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 126
    iget v2, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    add-int/2addr v2, v0

    array-length v3, v1

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRewardBuckets()Ljava/util/List;
    .locals 8

    .line 137
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v3, :cond_2

    .line 140
    iget v5, p0, Lcom/android/server/tare/Ledger;->mRewardBucketIndex:I

    add-int/2addr v5, v4

    rem-int/2addr v5, v3

    .line 141
    iget-object v6, p0, Lcom/android/server/tare/Ledger;->mRewardBuckets:[Lcom/android/server/tare/Ledger$RewardBucket;

    aget-object v5, v6, v5

    if-eqz v5, :cond_1

    .line 143
    iget-wide v6, v5, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 144
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_0
    invoke-static {v5}, Lcom/android/server/tare/Ledger$RewardBucket;->-$$Nest$mreset(Lcom/android/server/tare/Ledger$RewardBucket;)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getTransactions()Ljava/util/List;
    .locals 5

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 157
    iget v3, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    add-int/2addr v3, v2

    rem-int/2addr v3, v1

    .line 158
    iget-object v4, p0, Lcom/android/server/tare/Ledger;->mTransactions:[Lcom/android/server/tare/Ledger$Transaction;

    aget-object v3, v4, v3

    if-eqz v3, :cond_0

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public recordTransaction(Lcom/android/server/tare/Ledger$Transaction;)V
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:[Lcom/android/server/tare/Ledger$Transaction;

    iget v1, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    aput-object p1, v0, v1

    .line 168
    iget-wide v2, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    add-int/lit8 v1, v1, 0x1

    .line 169
    rem-int/lit8 v1, v1, 0x32

    iput v1, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    .line 171
    iget v0, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-static {v0}, Lcom/android/server/tare/EconomicPolicy;->isReward(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/server/tare/Ledger;->getCurrentRewardBucket()Lcom/android/server/tare/Ledger$RewardBucket;

    move-result-object p0

    .line 173
    iget-object p0, p0, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    iget v0, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    const-wide/16 v1, 0x0

    .line 174
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v1, v3

    .line 173
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_0
    return-void
.end method

.method public removeOldTransactions(J)Lcom/android/server/tare/Ledger$Transaction;
    .locals 7

    .line 226
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const/4 p1, 0x0

    .line 227
    :goto_0
    iget-object p2, p0, Lcom/android/server/tare/Ledger;->mTransactions:[Lcom/android/server/tare/Ledger$Transaction;

    array-length v2, p2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_2

    .line 228
    iget v2, p0, Lcom/android/server/tare/Ledger;->mTransactionIndex:I

    add-int/2addr v2, p1

    array-length v4, p2

    rem-int/2addr v2, v4

    .line 229
    aget-object v4, p2, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    iget-wide v5, v4, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_1

    .line 234
    aput-object v3, p2, v2

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v4

    :cond_2
    return-object v3
.end method
