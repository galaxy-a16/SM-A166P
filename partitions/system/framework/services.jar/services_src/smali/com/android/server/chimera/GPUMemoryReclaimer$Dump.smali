.class public Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;
.super Ljava/lang/Object;
.source "GPUMemoryReclaimer.java"


# instance fields
.field public self:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public final synthetic this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;


# direct methods
.method public static synthetic $r8$lambda$V592Y0LcVFKsL5OLQ6JqI9MGlLY(Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->lambda$meminfo$0(Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer$Dump-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    return-void
.end method

.method public static synthetic lambda$meminfo$0(Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;)I
    .locals 0

    .line 443
    invoke-virtual {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->getPid()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->getPid()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public meminfo(Ljava/io/PrintWriter;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 437
    iget-object v0, v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "VendorPlugin is not initialized"

    .line 438
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 442
    :cond_0
    iget-object v0, v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->getReclaimableTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 443
    new-instance v3, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const-string v3, "MemInfo"

    .line 445
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 447
    new-instance v4, Ljava/util/ArrayList;

    const-string/jumbo v5, "reclaimed"

    const-string/jumbo v6, "raw"

    const-string/jumbo v7, "pid"

    const-string/jumbo v8, "name"

    const-string/jumbo v9, "resident"

    filled-new-array {v7, v8, v9, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 449
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;

    .line 453
    invoke-virtual {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->getPid()I

    move-result v9

    .line 455
    :try_start_0
    iget-object v10, v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v10}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->getProcessName(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    const-string v10, "(unknown)"

    .line 457
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->getMeminfoRaw()[J

    move-result-object v11

    .line 458
    invoke-virtual {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->getResident()J

    move-result-wide v12

    .line 459
    invoke-virtual {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->getReclaimed()J

    move-result-wide v14

    .line 461
    new-instance v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v4

    const/4 v4, 0x5

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    .line 462
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v4, v18

    const/16 v17, 0x1

    aput-object v10, v4, v17

    .line 463
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x2

    aput-object v10, v4, v17

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x3

    aput-object v10, v4, v17

    invoke-static {v11}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v4, v11

    .line 461
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 464
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-long/2addr v5, v12

    add-long/2addr v7, v14

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    .line 468
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pid="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : cannot find GPU memory info: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v4, v16

    goto/16 :goto_0

    .line 472
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 474
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "TOTAL"

    const-string v8, "-"

    filled-new-array {v7, v8, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 475
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-virtual {v1, v2, v3}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->printTable(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final meminfoPid(Ljava/io/PrintWriter;I)V
    .locals 8

    const-string v0, " "

    .line 482
    iget-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v1}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "VendorPlugin is not initialized"

    .line 483
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 488
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v1}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "(unknown)"

    .line 490
    :cond_1
    iget-object v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v2}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->getMeminfoRaw(I)[J

    move-result-object v2

    .line 491
    iget-object v3, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v3}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->calculateResident([J)J

    move-result-wide v3

    .line 492
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->calculateReclaimed([J)J

    move-result-wide v5

    .line 494
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 494
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gmr: failed to get meminfo pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final printTable(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .locals 7

    const/4 p0, 0x0

    .line 503
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 504
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([II)V

    .line 505
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v3, p0

    .line 506
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 507
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 508
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 509
    aget v5, v0, v3

    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 513
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, p0

    .line 515
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 516
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 517
    aget v5, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    :goto_3
    if-lez v5, :cond_3

    const-string v6, " "

    .line 518
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 520
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 522
    :cond_4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public run(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 348
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string p2, "== GMR dump start =="

    .line 349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Configurations"

    .line 350
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  feature enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$sfgetFEATURE_ENABLED()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  vendor_plugin: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getVendorPluginName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  enabled_swap_out: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  enabled_swap_in: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  async: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->meminfo(Ljava/io/PrintWriter;)V

    const-string p0, "== GMR dump end =="

    .line 359
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$sfgetIS_SHIP_BUILD()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "gmr: command failed in ship build"

    .line 363
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->runCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gmr: exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public runCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "dump "

    const/4 v1, 0x1

    .line 376
    aget-object v1, p2, v1

    :try_start_0
    const-string/jumbo v2, "setprop"

    .line 378
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    array-length v2, p2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 379
    aget-object v2, p2, v4

    aget-object p2, p2, v3

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->setprop(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v2, "meminfo"

    .line 380
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " : invalid command"

    if-eqz v2, :cond_3

    .line 381
    :try_start_1
    array-length v2, p2

    if-ne v2, v4, :cond_1

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->meminfo(Ljava/io/PrintWriter;)V

    goto/16 :goto_0

    .line 383
    :cond_1
    array-length v2, p2

    if-ne v2, v3, :cond_2

    .line 384
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->meminfoPid(Ljava/io/PrintWriter;I)V

    goto/16 :goto_0

    .line 387
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v2, "swapOut"

    .line 389
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    array-length v2, p2

    if-ne v2, v3, :cond_4

    .line 390
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 391
    iget-object v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v2}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->getProcessName(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->swapOut(Ljava/io/PrintWriter;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "swapIn"

    .line 393
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    array-length v2, p2

    if-ne v2, v3, :cond_5

    .line 394
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 395
    iget-object v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v2}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->getProcessName(I)Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->swapIn(Ljava/io/PrintWriter;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "enabled_swap_out"

    .line 397
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    array-length v2, p2

    if-ne v2, v3, :cond_6

    .line 398
    aget-object p0, p2, v4

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 399
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$sfput__EnabledSwapOut(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_6
    const-string v2, "enabled_swap_in"

    .line 400
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    array-length v2, p2

    if-ne v2, v3, :cond_7

    .line 401
    aget-object p0, p2, v4

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 402
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$sfput__EnabledSwapIn(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_7
    const-string v2, "async"

    .line 403
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    array-length v2, p2

    if-ne v2, v3, :cond_8

    .line 404
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 405
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$sfput__Async(Ljava/lang/Boolean;)V

    .line 406
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$minitAsyncThreads(Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    goto :goto_0

    .line 408
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 411
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final setprop(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, " "

    const-string v1, "dump setprop "

    :try_start_0
    const-string/jumbo v2, "vendor_plugin"

    .line 420
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getVendorPluginName()Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-static {p3}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$sfput__VendorPluginName(Ljava/lang/String;)V

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$minit(Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    goto :goto_0

    .line 424
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: invalid key"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final swapIn(Ljava/io/PrintWriter;ILjava/lang/String;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Vendor plugin not initialized"

    .line 537
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 540
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapIn(ILjava/lang/String;)I

    move-result p0

    .line 541
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Triggered swap-in for pid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ret="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final swapOut(Ljava/io/PrintWriter;ILjava/lang/String;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Vendor plugin not initialized"

    .line 528
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 531
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapOut(ILjava/lang/String;)I

    move-result p0

    .line 532
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Triggered swap-out for pid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ret="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
