.class public Lcom/android/server/tare/CompleteEconomicPolicy;
.super Lcom/android/server/tare/EconomicPolicy;
.source "CompleteEconomicPolicy.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActions:Landroid/util/SparseArray;

.field public mCostModifiers:[I

.field public final mEnabledEconomicPolicies:Landroid/util/ArraySet;

.field public mEnabledEconomicPolicyIds:I

.field public mInitialConsumptionLimit:J

.field public final mInjector:Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;

.field public mMaxConsumptionLimit:J

.field public mMinConsumptionLimit:J

.field public final mRewards:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/tare/CompleteEconomicPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/CompleteEconomicPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 1

    .line 50
    new-instance v0, Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;

    invoke-direct {v0}, Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/tare/CompleteEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;)V
    .locals 3

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/tare/EconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 38
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    .line 44
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mCostModifiers:[I

    .line 57
    iput-object p2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mInjector:Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;

    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p2, v0, v1}, Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;->isPolicyEnabled(ILandroid/provider/DeviceConfig$Properties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    iget v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    .line 61
    new-instance v0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;

    iget-object v2, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {v0, v2, p2}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/EconomicPolicy$Injector;)V

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/high16 v0, 0x20000000

    .line 63
    invoke-virtual {p2, v0, v1}, Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;->isPolicyEnabled(ILandroid/provider/DeviceConfig$Properties;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    .line 65
    new-instance v0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;

    iget-object p0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {v0, p0, p2}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/EconomicPolicy$Injector;)V

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 238
    invoke-static {p1}, Lcom/android/server/tare/EconomicPolicy;->dumpActiveModifiers(Landroid/util/IndentingPrintWriter;)V

    .line 240
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Cached actions:"

    .line 244
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v2, v0

    .line 246
    :goto_0
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy$Action;

    if-eqz v3, :cond_0

    .line 249
    invoke-static {p1, v3}, Lcom/android/server/tare/EconomicPolicy;->dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 254
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Cached rewards:"

    .line 255
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v0

    .line 257
    :goto_1
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 258
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy$Reward;

    if-eqz v3, :cond_2

    .line 260
    invoke-static {p1, v3}, Lcom/android/server/tare/EconomicPolicy;->dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 265
    :goto_2
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 266
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy;

    .line 267
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v3, "(Includes) "

    .line 268
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 271
    invoke-virtual {v2, p1}, Lcom/android/server/tare/EconomicPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 272
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 274
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
    .locals 10

    .line 159
    iget-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Action;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v6, v4

    move v1, v0

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 169
    iget-wide v8, v2, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    add-long/2addr v4, v8

    .line 170
    iget-wide v1, v2, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    add-long/2addr v6, v1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 173
    new-instance v0, Lcom/android/server/tare/EconomicPolicy$Action;

    move-object v2, v0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 174
    :goto_1
    iget-object p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getCostModifiers()[I
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mCostModifiers:[I

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    :cond_0
    return-object p0
.end method

.method public getEnabledPolicyIds()I
    .locals 0

    .line 207
    iget p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    return p0
.end method

.method public getInitialSatiatedConsumptionLimit()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mInitialConsumptionLimit:J

    return-wide v0
.end method

.method public getMaxSatiatedBalance(ILjava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 129
    :goto_0
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/tare/EconomicPolicy;->getMaxSatiatedBalance(ILjava/lang/String;)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getMaxSatiatedConsumptionLimit()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mMaxConsumptionLimit:J

    return-wide v0
.end method

.method public getMinSatiatedBalance(ILjava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 120
    :goto_0
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/tare/EconomicPolicy;->getMinSatiatedBalance(ILjava/lang/String;)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getMinSatiatedConsumptionLimit()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mMinConsumptionLimit:J

    return-wide v0
.end method

.method public getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
    .locals 12

    .line 181
    iget-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Reward;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v6, v4

    move-wide v8, v6

    move v1, v0

    .line 187
    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 188
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/tare/EconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 191
    iget-wide v10, v2, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    add-long/2addr v4, v10

    .line 192
    iget-wide v10, v2, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    add-long/2addr v6, v10

    .line 193
    iget-wide v1, v2, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    add-long/2addr v8, v1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 197
    new-instance v0, Lcom/android/server/tare/EconomicPolicy$Reward;

    move-object v2, v0

    move v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 198
    :goto_1
    iget-object p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public isPolicyEnabled(I)Z
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setup(Landroid/provider/DeviceConfig$Properties;)V
    .locals 7

    .line 71
    invoke-super {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 73
    iget-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 74
    iget-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 76
    iget-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    .line 78
    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mInjector:Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2, p1}, Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;->isPolicyEnabled(ILandroid/provider/DeviceConfig$Properties;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    .line 80
    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/tare/AlarmManagerEconomicPolicy;

    iget-object v3, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    iget-object v4, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mInjector:Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;

    invoke-direct {v2, v3, v4}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/EconomicPolicy$Injector;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mInjector:Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2, p1}, Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;->isPolicyEnabled(ILandroid/provider/DeviceConfig$Properties;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicyIds:I

    .line 84
    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/tare/JobSchedulerEconomicPolicy;

    iget-object v3, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    iget-object v4, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mInjector:Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;

    invoke-direct {v2, v3, v4}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/EconomicPolicy$Injector;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move v2, v0

    .line 88
    :goto_0
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 89
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v3}, Lcom/android/server/tare/EconomicPolicy;->getCostModifiers()[I

    move-result-object v3

    .line 90
    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_3
    invoke-static {v1}, Lcom/android/internal/util/jobs/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mCostModifiers:[I

    .line 96
    :goto_2
    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 97
    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 99
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/tare/CompleteEconomicPolicy;->updateLimits()V

    return-void
.end method

.method public final updateLimits()V
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v6, v2

    move-wide v2, v4

    .line 106
    :goto_0
    iget-object v7, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 107
    iget-object v7, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/EconomicPolicy;

    .line 108
    invoke-virtual {v7}, Lcom/android/server/tare/EconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 109
    invoke-virtual {v7}, Lcom/android/server/tare/EconomicPolicy;->getMinSatiatedConsumptionLimit()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 110
    invoke-virtual {v7}, Lcom/android/server/tare/EconomicPolicy;->getMaxSatiatedConsumptionLimit()J

    move-result-wide v7

    add-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iput-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mInitialConsumptionLimit:J

    .line 113
    iput-wide v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mMinConsumptionLimit:J

    .line 114
    iput-wide v4, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mMaxConsumptionLimit:J

    return-void
.end method
