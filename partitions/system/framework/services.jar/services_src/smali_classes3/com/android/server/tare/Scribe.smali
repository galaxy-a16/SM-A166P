.class public Lcom/android/server/tare/Scribe;
.super Ljava/lang/Object;
.source "Scribe.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAnalyst:Lcom/android/server/tare/Analyst;

.field public final mCleanRunnable:Ljava/lang/Runnable;

.field public final mIrs:Lcom/android/server/tare/InternalResourceService;

.field public mLastReclamationTime:J

.field public mLastStockRecalculationTime:J

.field public final mLedgers:Landroid/util/SparseArrayMap;

.field public mLoadedTimeSinceFirstSetup:J

.field public final mRealtimeSinceUsersAddedOffsets:Landroid/util/SparseLongArray;

.field public mRemainingConsumableCakes:J

.field public mSatiatedConsumptionLimit:J

.field public final mStateFile:Landroid/util/AtomicFile;

.field public final mWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$HxyLbopiH8VfW-bcy_pLEildXUM(Lcom/android/server/tare/Scribe;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->cleanupLedgers()V

    return-void
.end method

.method public static synthetic $r8$lambda$II1ZOEYkiBre-04OYTC-djfWJwU(Lcom/android/server/tare/Scribe;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->writeState()V

    return-void
.end method

.method public static synthetic $r8$lambda$dNAypx-YLgzllHH6CQvzYtaaXgs(Lcom/android/server/tare/Scribe;Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/tare/Scribe;->lambda$dumpLocked$0(Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    .line 61
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/tare/Scribe;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;)V
    .locals 1

    .line 142
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/tare/Scribe;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;Ljava/io/File;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    .line 135
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mRealtimeSinceUsersAddedOffsets:Landroid/util/SparseLongArray;

    .line 138
    new-instance v0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tare/Scribe;)V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/tare/Scribe;)V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    .line 147
    iput-object p1, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 148
    iput-object p2, p0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    .line 150
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "tare"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 153
    new-instance p3, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "state.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    return-void
.end method

.method private synthetic lambda$dumpLocked$0(Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V
    .locals 1

    .line 810
    invoke-static {p3, p4}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 811
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " (system)"

    .line 812
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 814
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 815
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_1

    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    const/16 p0, 0x19

    .line 816
    :goto_0
    invoke-virtual {p5, p1, p0}, Lcom/android/server/tare/Ledger;->dump(Landroid/util/IndentingPrintWriter;I)V

    .line 817
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static readLedgerFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/ArraySet;J)Landroid/util/Pair;
    .locals 22

    move-object/from16 v0, p0

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "pkgName"

    const/4 v4, 0x0

    .line 451
    invoke-interface {v0, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "currentBalance"

    .line 452
    invoke-interface {v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v7, p1

    .line 454
    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 458
    sget-object v8, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is saved to disk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    :goto_0
    const/4 v9, 0x1

    if-eq v8, v9, :cond_a

    .line 463
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    if-ne v8, v10, :cond_1

    const-string v8, "ledger"

    .line 465
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_3

    :cond_1
    const/4 v10, 0x2

    const-string v11, ") "

    const-string v12, "Unexpected event: ("

    if-ne v8, v10, :cond_9

    if-nez v9, :cond_2

    goto/16 :goto_2

    :cond_2
    if-nez v7, :cond_3

    goto/16 :goto_1

    .line 478
    :cond_3
    sget-boolean v10, Lcom/android/server/tare/Scribe;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 479
    sget-object v13, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Starting ledger tag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v13, "rewardBucket"

    .line 481
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string/jumbo v13, "transaction"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 503
    sget-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5
    const-string v8, "endTime"

    .line 483
    invoke-interface {v0, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v8, v14, p2

    if-gtz v8, :cond_6

    if-eqz v10, :cond_8

    .line 486
    sget-object v8, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v9, "Skipping event because it\'s too old."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string/jumbo v8, "tag"

    .line 490
    invoke-interface {v0, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v8, "startTime"

    .line 491
    invoke-interface {v0, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    const-string v8, "eventId"

    .line 492
    invoke-interface {v0, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    const-string v8, "delta"

    .line 493
    invoke-interface {v0, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    const-string v8, "ctp"

    .line 494
    invoke-interface {v0, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v20

    .line 495
    new-instance v8, Lcom/android/server/tare/Ledger$Transaction;

    move-object v11, v8

    invoke-direct/range {v11 .. v21}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 499
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/android/server/tare/Scribe;->readRewardBucketFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/tare/Ledger$RewardBucket;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_8
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    goto/16 :goto_0

    .line 472
    :cond_9
    :goto_2
    sget-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_a
    :goto_3
    if-nez v7, :cond_b

    return-object v4

    .line 511
    :cond_b
    new-instance v0, Lcom/android/server/tare/Ledger;

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/server/tare/Ledger;-><init>(JLjava/util/List;Ljava/util/List;)V

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static readReportFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/tare/Analyst$Report;
    .locals 7

    .line 584
    new-instance v0, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v0}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    const-string v1, "discharge"

    const/4 v2, 0x0

    .line 586
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    const-string v1, "batteryLevel"

    .line 587
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    const-string/jumbo v1, "profit"

    .line 588
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    const-string/jumbo v1, "numProfits"

    .line 589
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    const-string v1, "loss"

    .line 590
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    const-string/jumbo v1, "numLoss"

    .line 591
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    const-string/jumbo v1, "rewards"

    .line 592
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    const-string/jumbo v1, "numRewards"

    .line 593
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    const-string/jumbo v1, "posRegulations"

    .line 595
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    const-string/jumbo v1, "numPosRegulations"

    .line 597
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    const-string/jumbo v1, "negRegulations"

    .line 599
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    const-string/jumbo v1, "numNegRegulations"

    .line 601
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    const-string/jumbo v1, "screenOffDurationMs"

    const-wide/16 v3, 0x0

    .line 603
    invoke-interface {p0, v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/tare/Analyst$Report;->screenOffDurationMs:J

    const-string/jumbo v1, "screenOffDischargeMah"

    .line 605
    invoke-interface {p0, v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->screenOffDischargeMah:J

    return-object v0
.end method

.method public static readRewardBucketFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/tare/Ledger$RewardBucket;
    .locals 6

    .line 620
    new-instance v0, Lcom/android/server/tare/Ledger$RewardBucket;

    invoke-direct {v0}, Lcom/android/server/tare/Ledger$RewardBucket;-><init>()V

    const-string/jumbo v1, "startTime"

    const/4 v2, 0x0

    .line 622
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    .line 624
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    .line 626
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const-string/jumbo v1, "rewardBucket"

    .line 628
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    const-string v4, "delta"

    .line 634
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "eventId"

    .line 640
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 641
    invoke-interface {p0, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 642
    iget-object v5, v0, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 625
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 636
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected event: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static writeReport(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/tare/Analyst$Report;)V
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "report"

    .line 787
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 788
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    const-string v3, "discharge"

    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "batteryLevel"

    .line 789
    iget v3, p1, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "profit"

    .line 790
    iget-wide v3, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "numProfits"

    .line 791
    iget v3, p1, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "loss"

    .line 792
    iget-wide v3, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "numLoss"

    .line 793
    iget v3, p1, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "rewards"

    .line 794
    iget-wide v3, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "numRewards"

    .line 795
    iget v3, p1, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "posRegulations"

    .line 796
    iget-wide v3, p1, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "numPosRegulations"

    .line 797
    iget v3, p1, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "negRegulations"

    .line 798
    iget-wide v3, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "numNegRegulations"

    .line 799
    iget v3, p1, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "screenOffDurationMs"

    .line 800
    iget-wide v3, p1, Lcom/android/server/tare/Analyst$Report;->screenOffDurationMs:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "screenOffDischargeMah"

    .line 801
    iget-wide v3, p1, Lcom/android/server/tare/Analyst$Report;->screenOffDischargeMah:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 802
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeRewardBucket(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/tare/Ledger$RewardBucket;)V
    .locals 7

    .line 770
    iget-object v0, p1, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v2, "rewardBucket"

    .line 774
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "startTime"

    .line 775
    iget-wide v4, p1, Lcom/android/server/tare/Ledger$RewardBucket;->startTimeMs:J

    invoke-interface {p0, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const-string v4, "delta"

    .line 777
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 778
    iget-object v5, p1, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    const-string v6, "eventId"

    invoke-interface {p0, v1, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 779
    iget-object v5, p1, Lcom/android/server/tare/Ledger$RewardBucket;->cumulativeDelta:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v5

    invoke-interface {p0, v1, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 780
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 782
    :cond_1
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeTransaction(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/tare/Ledger$Transaction;)V
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "transaction"

    .line 756
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 757
    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    const-string/jumbo v4, "startTime"

    invoke-interface {p0, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "endTime"

    .line 758
    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "eventId"

    .line 759
    iget v3, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 760
    iget-object v2, p1, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "tag"

    .line 761
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v2, "delta"

    .line 763
    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "ctp"

    .line 764
    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public adjustRemainingConsumableCakesLocked(J)V
    .locals 6

    .line 158
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    add-long/2addr p1, v0

    .line 159
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-gez p1, :cond_0

    .line 161
    sget-object p1, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overdrew consumable cakes by "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    neg-long v4, v4

    invoke-static {v4, v5}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput-wide v2, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 165
    :cond_0
    iget-wide p1, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    :cond_1
    return-void
.end method

.method public final cleanupLedgers()V
    .locals 9

    .line 416
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 417
    :try_start_0
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 419
    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    if-ltz v1, :cond_2

    .line 420
    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    .line 422
    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_1

    .line 423
    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 424
    iget-object v7, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tare/Ledger;

    const-wide/32 v7, 0x2932e000

    .line 426
    invoke-virtual {v6, v7, v8}, Lcom/android/server/tare/Ledger;->removeOldTransactions(J)Lcom/android/server/tare/Ledger$Transaction;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 428
    iget-wide v6, v6, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 432
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V

    .line 433
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public discardLedgerLocked(ILjava/lang/String;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;Z)V
    .locals 2

    const-string v0, "Ledgers:"

    .line 807
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 809
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/tare/Scribe;Landroid/util/IndentingPrintWriter;Z)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 819
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getCakesInCirculationForLoggingLocked()J
    .locals 6

    .line 223
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 224
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    .line 225
    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/Ledger;

    invoke-virtual {v4}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getLastReclamationTimeLocked()J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    return-wide v0
.end method

.method public getLastStockRecalculationTimeLocked()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mLastStockRecalculationTime:J

    return-wide v0
.end method

.method public getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/Ledger;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/android/server/tare/Ledger;

    invoke-direct {v0}, Lcom/android/server/tare/Ledger;-><init>()V

    .line 205
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getLedgersLocked()Landroid/util/SparseArrayMap;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public getRealtimeSinceFirstSetupMs(J)J
    .locals 2

    .line 233
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mLoadedTimeSinceFirstSetup:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getRealtimeSinceUsersAddedLocked(J)Landroid/util/SparseLongArray;
    .locals 5

    .line 244
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mRealtimeSinceUsersAddedOffsets:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mRealtimeSinceUsersAddedOffsets:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mRealtimeSinceUsersAddedOffsets:Landroid/util/SparseLongArray;

    .line 247
    invoke-virtual {v3, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    add-long/2addr v3, p1

    .line 246
    invoke-virtual {v0, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRemainingConsumableCakesLocked()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    return-wide v0
.end method

.method public getSatiatedConsumptionLimitLocked()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public loadFromDiskLocked()V
    .locals 16

    move-object/from16 v0, p0

    .line 254
    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/tare/Scribe;->recordExists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getInitialSatiatedConsumptionLimitLocked()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 257
    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    .line 260
    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 261
    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 263
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 264
    iget-object v4, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 265
    invoke-virtual {v4}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages()Landroid/util/SparseArrayMap;

    move-result-object v4

    .line 266
    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    const/4 v7, -0x1

    if-ltz v5, :cond_4

    .line 267
    invoke-virtual {v4, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    .line 269
    invoke-virtual {v4, v5}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v9

    sub-int/2addr v9, v6

    :goto_1
    if-ltz v9, :cond_3

    .line 270
    invoke-virtual {v4, v5, v9}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/tare/InstalledPackageInfo;

    .line 271
    iget v11, v10, Lcom/android/server/tare/InstalledPackageInfo;->uid:I

    if-eq v11, v7, :cond_2

    .line 272
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    if-nez v11, :cond_1

    .line 274
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 275
    invoke-virtual {v3, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    :cond_1
    iget-object v10, v10, Lcom/android/server/tare/InstalledPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 282
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 283
    :try_start_0
    iget-object v5, v0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v8

    .line 286
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v9

    :goto_2
    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    if-eq v9, v6, :cond_5

    .line 289
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    goto :goto_2

    :cond_5
    if-ne v9, v6, :cond_8

    .line 292
    sget-boolean v0, Lcom/android/server/tare/Scribe;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 293
    sget-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v1, "No persisted state."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    if-eqz v5, :cond_7

    .line 355
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    return-void

    .line 298
    :cond_8
    :try_start_3
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "tare"

    .line 299
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_b

    const-string/jumbo v9, "version"

    .line 300
    invoke-interface {v8, v11, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_9

    if-lez v9, :cond_b

    .line 302
    :cond_9
    sget-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version number ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), aborting file read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_a

    .line 355
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_a
    return-void

    .line 307
    :cond_b
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v14, 0x2932e000

    sub-long/2addr v12, v14

    .line 310
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    const-wide v14, 0x7fffffffffffffffL

    :goto_3
    if-eq v9, v6, :cond_15

    if-eq v9, v10, :cond_c

    :goto_4
    goto/16 :goto_7

    .line 315
    :cond_c
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_d

    goto :goto_4

    .line 320
    :cond_d
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v1, -0x37b3aacc

    if-eq v7, v1, :cond_10

    const v1, 0x36ebcb

    if-eq v7, v1, :cond_f

    const v1, 0x2918f96e

    if-eq v7, v1, :cond_e

    goto :goto_5

    :cond_e
    const-string v1, "irs-state"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    goto :goto_6

    :cond_f
    const-string/jumbo v1, "user"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v6

    goto :goto_6

    :cond_10
    const-string/jumbo v1, "report"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v10

    goto :goto_6

    :cond_11
    :goto_5
    const/4 v1, -0x1

    :goto_6
    if-eqz v1, :cond_14

    if-eq v1, v6, :cond_13

    if-eq v1, v10, :cond_12

    .line 349
    sget-object v1, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected tag: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 346
    :cond_12
    invoke-static {v8}, Lcom/android/server/tare/Scribe;->readReportFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/tare/Analyst$Report;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 342
    :cond_13
    invoke-virtual {v0, v8, v3, v12, v13}, Lcom/android/server/tare/Scribe;->readUserFromXmlLocked(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;J)J

    move-result-wide v1

    .line 341
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide v14, v1

    :goto_7
    move-object v9, v3

    goto :goto_8

    :cond_14
    const-string v1, "lastReclamationTime"

    .line 323
    invoke-interface {v8, v11, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    const-string v1, "lastStockRecalculationTime"

    move-object v9, v3

    const-wide/16 v6, 0x0

    .line 324
    invoke-interface {v8, v11, v1, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Scribe;->mLastStockRecalculationTime:J

    const-string/jumbo v1, "timeSinceFirstSetup"

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    neg-long v2, v2

    .line 327
    invoke-interface {v8, v11, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mLoadedTimeSinceFirstSetup:J

    const-string v1, "consumptionLimit"

    .line 332
    iget-object v2, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 334
    invoke-virtual {v2}, Lcom/android/server/tare/InternalResourceService;->getInitialSatiatedConsumptionLimitLocked()J

    move-result-wide v2

    .line 333
    invoke-interface {v8, v11, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 335
    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v1

    const-string/jumbo v3, "remainingConsumableCakes"

    .line 337
    invoke-interface {v8, v11, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 336
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 311
    :goto_8
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    move-object v3, v9

    const/4 v6, 0x1

    const/4 v7, -0x1

    move v9, v1

    const-wide/16 v1, 0x0

    goto/16 :goto_3

    .line 353
    :cond_15
    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v1, v4}, Lcom/android/server/tare/Analyst;->loadReports(Ljava/util/List;)V

    .line 354
    invoke-virtual {v0, v14, v15}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_17

    .line 355
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_16

    .line 283
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_9
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 356
    sget-object v1, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v2, "Error reading state from disk"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_a
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 180
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mRealtimeSinceUsersAddedOffsets:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public postWrite()V
    .locals 3

    .line 362
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final readUserFromXmlLocked(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;J)J
    .locals 8

    const-string/jumbo v0, "userId"

    const/4 v1, 0x0

    .line 523
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 524
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    const/16 v2, -0x2710

    if-nez p2, :cond_0

    .line 526
    sget-object v3, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is saved to disk"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_0
    if-eq v0, v2, :cond_1

    .line 532
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mRealtimeSinceUsersAddedOffsets:Landroid/util/SparseLongArray;

    .line 537
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    neg-long v4, v4

    const-string/jumbo v6, "timeSinceFirstSetup"

    .line 533
    invoke-interface {p1, v1, v6, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 532
    invoke-virtual {v3, v0, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 541
    :cond_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const-wide v3, 0x7fffffffffffffffL

    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_7

    .line 543
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    const-string/jumbo v1, "user"

    .line 545
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_2
    const-string v1, "ledger"

    .line 551
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 556
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/tare/Scribe;->readLedgerFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/ArraySet;J)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 560
    :cond_4
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/tare/Ledger;

    if-eqz v5, :cond_6

    .line 562
    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v0, v1, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-virtual {v5}, Lcom/android/server/tare/Ledger;->getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 565
    iget-wide v5, v1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 569
    :cond_5
    sget-object v1, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_6
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :cond_7
    :goto_2
    return-wide v3
.end method

.method public recordExists()Z
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    return p0
.end method

.method public final scheduleCleanup(J)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x2932e000

    add-long/2addr p1, v0

    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x36ee80

    .line 655
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 657
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setConsumptionLimitLocked(J)V
    .locals 5

    .line 371
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 372
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    goto :goto_0

    .line 373
    :cond_0
    iget-wide v2, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    sub-long/2addr v2, v0

    sub-long v0, p1, v2

    .line 375
    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 377
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 378
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public setLastReclamationTimeLocked(J)V
    .locals 0

    .line 383
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    .line 384
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public setLastStockRecalculationTimeLocked(J)V
    .locals 0

    .line 389
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mLastStockRecalculationTime:J

    .line 390
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public setUserAddedTimeLocked(IJ)V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mRealtimeSinceUsersAddedOffsets:Landroid/util/SparseLongArray;

    neg-long p2, p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method public tearDownLocked()V
    .locals 2

    .line 402
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    const-wide/16 v0, 0x0

    .line 405
    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 406
    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 407
    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    return-void
.end method

.method public writeImmediatelyForTesting()V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final writeState()V
    .locals 12

    .line 661
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 662
    :try_start_0
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 665
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 666
    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getEnabledMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 669
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 672
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 673
    :try_start_2
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    .line 674
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v5, "tare"

    .line 676
    invoke-interface {v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "version"

    const/4 v7, 0x0

    .line 677
    invoke-interface {v4, v6, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "irs-state"

    .line 679
    invoke-interface {v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "lastReclamationTime"

    .line 680
    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    invoke-interface {v4, v6, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "lastStockRecalculationTime"

    .line 681
    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mLastStockRecalculationTime:J

    invoke-interface {v4, v6, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "timeSinceFirstSetup"

    .line 683
    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mLoadedTimeSinceFirstSetup:J

    .line 684
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 683
    invoke-interface {v4, v6, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "consumptionLimit"

    .line 685
    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    invoke-interface {v4, v6, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "remainingConsumableCakes"

    .line 686
    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    invoke-interface {v4, v6, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "irs-state"

    .line 688
    invoke-interface {v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 690
    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_1

    .line 691
    iget-object v8, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    .line 693
    invoke-virtual {p0, v4, v8}, Lcom/android/server/tare/Scribe;->writeUserLocked(Lcom/android/modules/utils/TypedXmlSerializer;I)J

    move-result-wide v8

    .line 692
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 696
    :cond_1
    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v5}, Lcom/android/server/tare/Analyst;->getReports()Ljava/util/List;

    move-result-object v5

    .line 697
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_2

    .line 698
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tare/Analyst$Report;

    invoke-static {v4, v9}, Lcom/android/server/tare/Scribe;->writeReport(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/tare/Analyst$Report;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "tare"

    .line 701
    invoke-interface {v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 703
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 704
    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    .line 705
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 672
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v3

    .line 706
    :try_start_6
    sget-object v4, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v5, "Error writing state to disk"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    :cond_4
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V

    .line 709
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public final writeUserLocked(Lcom/android/modules/utils/TypedXmlSerializer;I)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 715
    iget-object v3, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v3

    const/4 v4, 0x0

    const-string/jumbo v5, "user"

    .line 718
    invoke-interface {v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "userId"

    .line 719
    invoke-interface {v1, v4, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    iget-object v6, v0, Lcom/android/server/tare/Scribe;->mRealtimeSinceUsersAddedOffsets:Landroid/util/SparseLongArray;

    iget-wide v7, v0, Lcom/android/server/tare/Scribe;->mLoadedTimeSinceFirstSetup:J

    .line 721
    invoke-virtual {v6, v2, v7, v8}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v6, v8

    const-string/jumbo v8, "timeSinceFirstSetup"

    .line 720
    invoke-interface {v1, v4, v8, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 723
    iget-object v6, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const-wide v7, 0x7fffffffffffffffL

    :goto_0
    if-ltz v6, :cond_3

    .line 724
    iget-object v9, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v3, v6}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 725
    iget-object v10, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v10, v2, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/tare/Ledger;

    const-wide/32 v11, 0x2932e000

    .line 727
    invoke-virtual {v10, v11, v12}, Lcom/android/server/tare/Ledger;->removeOldTransactions(J)Lcom/android/server/tare/Ledger$Transaction;

    const-string v11, "ledger"

    .line 729
    invoke-interface {v1, v4, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "pkgName"

    .line 730
    invoke-interface {v1, v4, v12, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "currentBalance"

    .line 732
    invoke-virtual {v10}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v12

    .line 731
    invoke-interface {v1, v4, v9, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    invoke-virtual {v10}, Lcom/android/server/tare/Ledger;->getTransactions()Ljava/util/List;

    move-result-object v9

    const/4 v12, 0x0

    move v13, v12

    .line 735
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_1

    .line 736
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/tare/Ledger$Transaction;

    move-object v15, v5

    if-nez v13, :cond_0

    .line 738
    iget-wide v4, v14, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 740
    :cond_0
    invoke-static {v1, v14}, Lcom/android/server/tare/Scribe;->writeTransaction(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/tare/Ledger$Transaction;)V

    add-int/lit8 v13, v13, 0x1

    move-object v5, v15

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move-object v15, v5

    .line 743
    invoke-virtual {v10}, Lcom/android/server/tare/Ledger;->getRewardBuckets()Ljava/util/List;

    move-result-object v4

    .line 744
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v12, v5, :cond_2

    .line 745
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tare/Ledger$RewardBucket;

    invoke-static {v1, v5}, Lcom/android/server/tare/Scribe;->writeRewardBucket(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/tare/Ledger$RewardBucket;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 747
    invoke-interface {v1, v5, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, -0x1

    move-object v4, v5

    move-object v5, v15

    goto :goto_0

    :cond_3
    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    .line 749
    invoke-interface {v1, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-wide v7
.end method
