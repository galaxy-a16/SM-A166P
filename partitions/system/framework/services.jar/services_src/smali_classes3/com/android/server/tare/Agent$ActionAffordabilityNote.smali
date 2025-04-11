.class public final Lcom/android/server/tare/Agent$ActionAffordabilityNote;
.super Ljava/lang/Object;
.source "Agent.java"


# instance fields
.field public final mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public mIsAffordable:Z

.field public final mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

.field public mModifiedPrice:J

.field public mStockLimitHonoringCtp:J


# direct methods
.method public static bridge synthetic -$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getCachedModifiedPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetStockLimitHonoringCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getStockLimitHonoringCtp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->setNewAffordability(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V
    .locals 5

    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    iput-object p1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 1163
    invoke-virtual {p1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 1164
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1165
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 1166
    iget v2, v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {p3, v2}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1168
    iget v2, v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    const/high16 v3, 0x30000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 1171
    invoke-static {}, Lcom/android/server/tare/Agent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracking disabled policy\'s action? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1169
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid action id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1175
    :cond_2
    iput-object p2, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1233
    :cond_0
    instance-of v1, p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1234
    :cond_1
    check-cast p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 1235
    iget-object v1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    iget-object v3, p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v1, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    iget-object p1, p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    .line 1236
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActionBill()Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .locals 0

    .line 1180
    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0
.end method

.method public final getCachedModifiedPrice()J
    .locals 2

    .line 1189
    iget-wide v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mModifiedPrice:J

    return-wide v0
.end method

.method public getListener()Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .locals 0

    .line 1185
    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    return-object p0
.end method

.method public final getStockLimitHonoringCtp()J
    .locals 2

    .line 1194
    iget-wide v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mStockLimitHonoringCtp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 1242
    iget-object v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1243
    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public isCurrentlyAffordable()Z
    .locals 0

    .line 1223
    iget-boolean p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mIsAffordable:Z

    return p0
.end method

.method public recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1202
    iget-object v2, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 1203
    invoke-virtual {v2}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v7, v5

    move-wide v5, v3

    .line 1204
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1205
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 1206
    iget v9, v8, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {v1, v9}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object v9

    .line 1208
    iget v10, v8, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    move/from16 v11, p2

    move-object/from16 v12, p3

    .line 1209
    invoke-virtual {v1, v10, v11, v12}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v10

    .line 1210
    iget-wide v13, v10, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget v15, v8, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    move-object/from16 v16, v2

    int-to-long v1, v15

    mul-long/2addr v1, v13

    iget-wide v11, v8, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    const-wide/16 v17, 0x3e8

    div-long v19, v11, v17

    mul-long v13, v13, v19

    add-long/2addr v1, v13

    add-long/2addr v3, v1

    .line 1212
    iget-boolean v1, v9, Lcom/android/server/tare/EconomicPolicy$Action;->respectsStockLimit:Z

    if-eqz v1, :cond_0

    .line 1213
    iget-wide v1, v10, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    int-to-long v8, v15

    mul-long/2addr v8, v1

    div-long v11, v11, v17

    mul-long/2addr v1, v11

    add-long/2addr v8, v1

    add-long/2addr v5, v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto :goto_0

    .line 1218
    :cond_1
    iput-wide v3, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mModifiedPrice:J

    .line 1219
    iput-wide v5, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mStockLimitHonoringCtp:J

    return-void
.end method

.method public final setNewAffordability(Z)V
    .locals 0

    .line 1227
    iput-boolean p1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mIsAffordable:Z

    return-void
.end method
