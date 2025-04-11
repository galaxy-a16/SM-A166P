.class public Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;
.super Ljava/lang/Object;
.source "ChimeraStrategy.java"


# instance fields
.field public PSI_MEM_SOME_THRESHOLD_MIN:J

.field public PSI_MEN_SOME_THRESHOLD_MAX:J

.field public mKeepCnt:I

.field public mReentry:F

.field public mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

.field public mTriggerCnt:I

.field public ramSizeGb:I

.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraStrategy;


# direct methods
.method public static bridge synthetic -$$Nest$msetReentry(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->setReentry(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetThresholdMax(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->setThresholdMax(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetThresholdMin(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->setThresholdMin(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraStrategy;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mTriggerCnt:I

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v0

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->ramSizeGb:I

    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getReentry(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->ramSizeGb:I

    const/4 v1, 0x6

    const-string v2, "100"

    const-string/jumbo v3, "ro.slmk.psi_critical"

    const-string/jumbo v4, "ro.slmk.psi_medium"

    if-ge v0, v1, :cond_0

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    const-string v0, "150"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    goto :goto_0

    :cond_0
    const-string v0, "60"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    :goto_0
    new-instance v0, Lcom/android/server/chimera/ReentryCounter;

    invoke-static {p1}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/chimera/ReentryCounter;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    invoke-virtual {v0, p0}, Lcom/android/server/chimera/ReentryCounter;->setTargetReentryCount(F)V

    return-void
.end method


# virtual methods
.method public final setReentry(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ReentryCounter;->setTargetReentryCount(F)V

    return-void
.end method

.method public final setThresholdMax(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    return-void
.end method

.method public final setThresholdMin(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    return-void
.end method

.method public updateFreeMem(J)J
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    invoke-virtual {v1}, Lcom/android/server/chimera/ReentryCounter;->isReentryEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    invoke-virtual {v1}, Lcom/android/server/chimera/ReentryCounter;->getReentry()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v1}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmRecentAppManager(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/ChimeraRecentAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->getRecentAppInfo()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_d

    iget-object v4, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    invoke-virtual {v4}, Lcom/android/server/chimera/ReentryCounter;->getReentry()F

    move-result v4

    iget-wide v5, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    cmp-long v5, v2, v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gez v5, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    iget-wide v9, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    cmp-long v5, v2, v9

    if-gez v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    const/16 v9, 0x8

    const/4 v10, -0x1

    if-nez v5, :cond_4

    iput v8, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    iget v6, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    cmpg-float v7, v4, v6

    if-gez v7, :cond_2

    :goto_1
    move v6, v10

    goto :goto_3

    :cond_2
    float-to-double v11, v4

    float-to-double v13, v6

    const-wide/high16 v15, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v13, v15

    cmpl-double v7, v11, v13

    if-lez v7, :cond_3

    goto :goto_1

    :cond_3
    cmpl-float v6, v4, v6

    if-lez v6, :cond_6

    goto :goto_1

    :cond_4
    if-ne v5, v7, :cond_7

    iget v11, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    cmpg-float v12, v4, v11

    if-gez v12, :cond_5

    iget v10, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    add-int/2addr v10, v7

    iput v10, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    if-le v10, v9, :cond_6

    iput v8, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    goto :goto_3

    :cond_5
    cmpl-float v6, v4, v11

    if-lez v6, :cond_6

    iput v8, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_3

    :cond_7
    iget v10, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    cmpg-float v10, v4, v10

    if-gez v10, :cond_9

    iget v10, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    add-int/2addr v10, v7

    iput v10, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_8

    iput v8, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    goto :goto_2

    :cond_8
    move v6, v8

    goto :goto_2

    :cond_9
    move v6, v7

    :goto_2
    const-wide/16 v10, 0x2

    iget-wide v12, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    mul-long/2addr v12, v10

    cmp-long v8, v2, v12

    if-lez v8, :cond_a

    move v6, v7

    :cond_a
    :goto_3
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J

    move-result-wide v10

    mul-int/lit8 v8, v6, 0x32

    mul-int/lit16 v8, v8, 0x400

    int-to-long v12, v8

    add-long/2addr v10, v12

    invoke-static {v7, v10, v11}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fputmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;J)V

    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J

    move-result-wide v7

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v10

    mul-int/lit16 v10, v10, 0x400

    mul-int/lit16 v10, v10, 0x400

    const/4 v11, 0x3

    div-int/2addr v10, v11

    int-to-long v12, v10

    cmp-long v7, v7, v12

    const-string v8, "ChimeraStrategy"

    if-lez v7, :cond_b

    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v7

    const-string/jumbo v9, "over max free target"

    invoke-interface {v7, v8, v9}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v9

    mul-int/lit16 v9, v9, 0x400

    mul-int/lit16 v9, v9, 0x400

    div-int/2addr v9, v11

    int-to-long v9, v9

    invoke-static {v7, v9, v10}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fputmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;J)V

    goto :goto_4

    :cond_b
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J

    move-result-wide v12

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v7

    mul-int/lit16 v7, v7, 0x400

    mul-int/lit16 v7, v7, 0x400

    div-int/2addr v7, v9

    int-to-long v14, v7

    cmp-long v7, v12, v14

    if-gez v7, :cond_c

    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v7

    const-string/jumbo v10, "less min free target"

    invoke-interface {v7, v8, v10}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v10

    mul-int/lit16 v10, v10, 0x400

    mul-int/lit16 v10, v10, 0x400

    div-int/2addr v10, v9

    int-to-long v9, v10

    invoke-static {v7, v9, v10}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fputmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;J)V

    :cond_c
    :goto_4
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reentry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " memDelta: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " psiLevel: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  avgPsiSomeTotal: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " full Total:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " New free target memory: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v1}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J

    move-result-wide v0

    return-wide v0
.end method
