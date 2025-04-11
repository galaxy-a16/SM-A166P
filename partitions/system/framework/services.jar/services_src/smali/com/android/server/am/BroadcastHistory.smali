.class public Lcom/android/server/am/BroadcastHistory;
.super Ljava/lang/Object;
.source "BroadcastHistory.java"


# static fields
.field public static final MAX_ABORTED_BROADCAST_HISTORY:I

.field public static final MAX_DELAYED_BROADCAST_HISTORY:I


# instance fields
.field public final MAX_BROADCAST_HISTORY:I

.field public final MAX_BROADCAST_SUMMARY_HISTORY:I

.field public final mAbortedBroadcastHistory:[Ljava/lang/String;

.field public mAbortedHistoryNext:I

.field public final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field public final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field public final mBroadcastSummaryHistoryToString:[Ljava/lang/String;

.field public final mDelayedBroadcastHistory:[Ljava/lang/String;

.field public mDelayedHistoryNext:I

.field public mHistoryNext:I

.field public final mPendingBroadcasts:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mSummaryHistoryDispatchTime:[J

.field public final mSummaryHistoryEnqueueTime:[J

.field public final mSummaryHistoryFinishTime:[J

.field public mSummaryHistoryNext:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 48
    sget v0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_DELAYED_BROADCAST:I

    sput v0, Lcom/android/server/am/BroadcastHistory;->MAX_DELAYED_BROADCAST_HISTORY:I

    .line 49
    sget v0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_ABORTED_BROADCAST:I

    sput v0, Lcom/android/server/am/BroadcastHistory;->MAX_ABORTED_BROADCAST_HISTORY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastConstants;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 91
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 104
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mDelayedHistoryNext:I

    .line 109
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    .line 54
    iget v0, p2, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    .line 55
    iget p2, p2, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    iput p2, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 57
    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 58
    new-array v0, p2, [Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    .line 59
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    .line 60
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    .line 61
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    .line 65
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    .line 66
    sget p2, Lcom/android/server/am/BroadcastHistory;->MAX_DELAYED_BROADCAST_HISTORY:I

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mDelayedBroadcastHistory:[Ljava/lang/String;

    .line 67
    sget p2, Lcom/android/server/am/BroadcastHistory;->MAX_ABORTED_BROADCAST_HISTORY:I

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mAbortedBroadcastHistory:[Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5

    .line 133
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    aput-object p1, v0, v1

    .line 136
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 140
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->addBroadcastSummaryHistoryLocked(Lcom/android/server/am/BroadcastHistory;Lcom/android/server/am/BroadcastRecord;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget-wide v3, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v3, v0, v1

    .line 146
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    iget-wide v3, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v3, v0, v1

    .line 147
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, p1, v1

    .line 148
    iget p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 14
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const/4 v0, 0x0

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    const-wide v2, 0x20b00000007L

    .line 163
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    move v1, v0

    .line 171
    :cond_1
    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v1

    .line 172
    iget-object v2, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    const-wide v4, 0x20b00000005L

    .line 174
    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_2
    if-ne v1, v0, :cond_1

    .line 178
    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    move v0, v2

    .line 180
    :cond_3
    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v4, v1, v0

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const-wide v5, 0x20b00000006L

    .line 185
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const-wide v6, 0x10b00000001L

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, p1

    .line 186
    invoke-virtual/range {v4 .. v11}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 188
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v4, v1, v0

    const-wide v6, 0x10300000002L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 190
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v4, v1, v0

    const-wide v6, 0x10300000003L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 192
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v4, v1, v0

    const-wide v6, 0x10300000004L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 194
    invoke-virtual {p1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    if-ne v0, v2, :cond_3

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;ZZ)Z
    .locals 19
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "  Pending broadcasts:"

    .line 202
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    iget-object v5, v0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const-string v6, ":"

    const-string v7, "    "

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    const-string v5, "    <empty>"

    .line 204
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_0
    iget-object v5, v0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v8

    :goto_0
    if-ltz v5, :cond_1

    .line 207
    iget-object v9, v0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/BroadcastRecord;

    const-string v10, "  Broadcast #"

    .line 208
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v9, v1, v7, v4}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 217
    :cond_1
    :goto_1
    iget v5, v0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    const/4 v10, -0x1

    move/from16 v11, p6

    move v12, v5

    move v13, v10

    const/4 v14, 0x0

    .line 222
    :goto_2
    iget v15, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    invoke-virtual {v0, v12, v10, v15}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v12

    .line 223
    iget-object v15, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v15, v15, v12

    const-string v10, "]:"

    const-string v8, ": "

    const-string v9, "  #"

    if-nez v15, :cond_2

    :goto_3
    move-object/from16 v16, v6

    move v0, v11

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v13, v13, 0x1

    if-eqz v2, :cond_3

    .line 229
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    if-nez v14, :cond_5

    if-eqz v11, :cond_4

    .line 234
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 237
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Historical broadcasts ["

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v14, 0x1

    :cond_5
    if-eqz p5, :cond_6

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p6, v11

    const-string v11, "  Historical Broadcast "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " #"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v15, v1, v7, v4}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    move-object/from16 v16, v6

    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    move/from16 p6, v11

    .line 245
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v6

    const/4 v6, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v6, v6, v11}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    iget-object v6, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eq v0, v6, :cond_7

    const-string v0, "    targetComp: "

    .line 249
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    :cond_7
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v6, "    extras: "

    .line 253
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    :goto_4
    move/from16 v0, p6

    :goto_5
    if-ne v12, v5, :cond_14

    move-object/from16 v6, p0

    if-nez v2, :cond_11

    .line 259
    iget v5, v6, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    if-eqz p5, :cond_9

    move v12, v5

    const/4 v13, -0x1

    goto :goto_8

    :cond_9
    move v12, v5

    move v11, v13

    :goto_6
    if-lez v11, :cond_b

    if-eq v12, v5, :cond_b

    .line 267
    iget v15, v6, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    move/from16 p6, v0

    const/4 v0, -0x1

    invoke-virtual {v6, v12, v0, v15}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v12

    .line 268
    iget-object v0, v6, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v0, v0, v12

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v11, v11, -0x1

    :goto_7
    move/from16 v0, p6

    goto :goto_6

    :cond_b
    move/from16 p6, v0

    move/from16 v0, p6

    move v11, v14

    .line 278
    :cond_c
    :goto_8
    iget v14, v6, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v15, -0x1

    invoke-virtual {v6, v12, v15, v14}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v12

    .line 283
    iget-object v14, v6, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    aget-object v14, v14, v12

    if-nez v14, :cond_d

    goto/16 :goto_9

    :cond_d
    if-nez v11, :cond_f

    if-eqz v0, :cond_e

    .line 296
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 299
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Historical broadcasts summary ["

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v11, 0x1

    :cond_f
    if-nez p5, :cond_10

    const/16 v15, 0x32

    if-lt v13, v15, :cond_10

    const-string v4, "  ..."

    .line 303
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_10
    add-int/lit8 v13, v13, 0x1

    .line 307
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget-object v14, v6, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v14, v14, v12

    move/from16 p6, v0

    iget-object v0, v6, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v17, v0, v12

    sub-long v14, v14, v17

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, " dispatch "

    .line 318
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget-object v0, v6, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v14, v0, v12

    iget-object v0, v6, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v17, v0, v12

    sub-long v14, v14, v17

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, " finish"

    .line 321
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    enq="

    .line 322
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/util/Date;

    iget-object v14, v6, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v14, v14, v12

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " disp="

    .line 324
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/util/Date;

    iget-object v14, v6, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v14, v14, v12

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " fin="

    .line 326
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/util/Date;

    iget-object v14, v6, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v14, v14, v12

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v0, p6

    :goto_9
    if-ne v12, v5, :cond_c

    goto :goto_a

    :cond_11
    move/from16 p6, v0

    :goto_a
    if-eqz p5, :cond_13

    if-eqz v2, :cond_12

    goto :goto_b

    .line 344
    :cond_12
    iget-object v2, v6, Lcom/android/server/am/BroadcastHistory;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v2, v6, v3, v1, v0}, Lcom/android/server/am/ActivityManagerServiceExt;->dumpForBroadcastQueueLocked(Lcom/android/server/am/BroadcastHistory;Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    :cond_13
    :goto_b
    return v0

    :cond_14
    move/from16 p6, v0

    move/from16 v11, p6

    move-object/from16 v6, v16

    const/4 v8, 0x1

    const/4 v10, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_2
.end method

.method public onBroadcastEnqueuedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastHistory;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public final ringAdvance(III)I
    .locals 0

    .line 0
    add-int/2addr p1, p2

    if-gez p1, :cond_0

    add-int/lit8 p3, p3, -0x1

    return p3

    :cond_0
    if-lt p1, p3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return p1
.end method
