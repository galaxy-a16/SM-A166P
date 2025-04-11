.class public final Lcom/android/server/NandswapManager$NandSwapBigdataManager;
.super Ljava/lang/Object;
.source "NandswapManager.java"


# static fields
.field public static final bigdataJsonFormat:[Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static semHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public static bridge synthetic -$$Nest$smuploadBigdataToHQM()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->uploadBigdataToHQM()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 19

    const-string v0, "count_average"

    const-string/jumbo v1, "size_average"

    const-string/jumbo v2, "reads"

    const-string/jumbo v3, "writes"

    const-string/jumbo v4, "objcnt"

    const-string/jumbo v5, "max_count"

    const-string/jumbo v6, "max_size"

    const-string/jumbo v7, "ppr_count_average"

    const-string/jumbo v8, "ppr_size_average"

    const-string/jumbo v9, "ppr_reads"

    const-string/jumbo v10, "ppr_writes"

    const-string/jumbo v11, "ppr_objcnt"

    const-string/jumbo v12, "ppr_max_count"

    const-string/jumbo v13, "ppr_max_size"

    const-string/jumbo v14, "objreads"

    const-string/jumbo v15, "objwrites"

    const-string v16, "gpu_total_mem"

    const-string v17, "gpu_reclaimed_mem"

    const-string/jumbo v18, "swap_used"

    .line 1101
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->bigdataJsonFormat:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    sput-object p1, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->mContext:Landroid/content/Context;

    const-string p0, "HqmManagerService"

    .line 1112
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/SemHqmManager;

    sput-object p0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    .line 1115
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->isSupportBigdata()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->isExistBigdataInfoProp()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1116
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/NandswapManager$NandSwapBigdataManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static makeJsonFormat()Ljava/lang/String;
    .locals 16

    .line 1142
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    move-result-object v0

    .line 1143
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NandswapManager$NandswapClient;->getBigdataInfoProp()Ljava/util/HashMap;

    move-result-object v1

    .line 1144
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetMemInfo()Ljava/util/HashMap;

    move-result-object v2

    .line 1146
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 1153
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"option\":\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1155
    sget-object v6, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->bigdataJsonFormat:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_14

    aget-object v10, v6, v9

    const-string v11, "count_average"

    .line 1157
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "%.3f"

    if-eqz v11, :cond_1

    .line 1158
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/NandswapManager$NandswapClient;->getCountAverage()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_1
    const-string/jumbo v11, "size_average"

    .line 1159
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1160
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/NandswapManager$NandswapClient;->getSizeAverage()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_2
    const-string/jumbo v11, "ppr_count_average"

    .line 1161
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1162
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/NandswapManager$NandswapClient;->getPprCountAverage()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_3
    const-string/jumbo v11, "ppr_size_average"

    .line 1163
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1164
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/NandswapManager$NandswapClient;->getPprSizeAverage()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_4
    const-string/jumbo v11, "objcnt"

    .line 1165
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "%d"

    if-nez v11, :cond_13

    const-string/jumbo v11, "ppr_objcnt"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v11, "max_count"

    .line 1167
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string/jumbo v11, "max_size"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string/jumbo v11, "ppr_max_count"

    .line 1168
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string/jumbo v11, "ppr_max_size"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v11, "reads"

    .line 1170
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1171
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v15}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousReads(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v11, "writes"

    .line 1172
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1173
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v15}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v11, "ppr_reads"

    .line 1174
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1175
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v15}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousReads(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v11, "ppr_writes"

    .line 1176
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1177
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v15}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v11, "objreads"

    .line 1178
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1179
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v15}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousObjReads(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v11, "objwrites"

    .line 1180
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1181
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v15}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousObjWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_c
    const-string v11, "gpu_total_mem"

    .line 1182
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "-1"

    if-eqz v11, :cond_e

    const-string v11, "KgslShmemUsage"

    .line 1183
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_d

    :goto_1
    move-object v11, v12

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_e
    const-string v11, "gpu_reclaimed_mem"

    .line 1184
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v11, "KgslReclaimed"

    .line 1185
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_f

    goto :goto_1

    :cond_f
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_10
    const-string/jumbo v11, "swap_used"

    .line 1186
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const-string v11, "SwapTotal"

    .line 1187
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "SwapFree"

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_11
    return-object v4

    .line 1169
    :cond_12
    :goto_2
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 1166
    :cond_13
    :goto_3
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1191
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":\""

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1193
    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 1194
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_15
    return-object v3

    .line 1147
    :cond_16
    :goto_5
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1148
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v5, "persist.sys.zram0.bigdata_info"

    filled-new-array {v5, v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(%d) or bd_stat(%d) or meminfo(%d) is empty..."

    .line 1147
    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NandswapManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static uploadBigdataToHQM()V
    .locals 12

    .line 1121
    sget-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    const-string v1, "NandswapManager"

    if-nez v0, :cond_0

    const-string v0, "Bigdata semHqmManager isn\'t initialized..."

    .line 1122
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1126
    :cond_0
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isSupportBigdata()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Upload Bigdata..."

    .line 1127
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-static {}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->makeJsonFormat()Ljava/lang/String;

    move-result-object v10

    .line 1130
    sget-object v2, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    const/4 v3, 0x0

    const-string v4, "AP"

    const-string v5, "NSST"

    const-string/jumbo v6, "sm"

    const-string v7, "0.0"

    const-string/jumbo v8, "sec"

    const-string v9, ""

    const-string v11, ""

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Initialize bigdata information..."

    .line 1132
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    .line 1134
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->clearAverageList()V

    .line 1135
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->setPreviousInfo()V

    .line 1136
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->resetBdStatSysNode()V

    :cond_1
    return-void
.end method
