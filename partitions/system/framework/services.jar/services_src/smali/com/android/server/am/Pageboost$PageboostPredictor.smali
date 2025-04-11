.class public final Lcom/android/server/am/Pageboost$PageboostPredictor;
.super Ljava/lang/Object;
.source "Pageboost.java"


# static fields
.field public static mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Lcom/android/server/am/Pageboost$LRUPolicy;

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$LRUPolicy;-><init>()V

    sput-object p0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    return-void
.end method

.method public static haltPredict()V
    .locals 2

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_ACTIVE_LAUNCH_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetsHandler()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetsHandler()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$PageboostdProxy;->executeCmd(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .locals 0

    if-gtz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->judgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    move-result p0

    return p0
.end method

.method public finalizePredict()V
    .locals 0

    sget-object p0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->finalizePredict()V

    return-void
.end method

.method public predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V
    .locals 5

    sget-object p0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    const-string p1, ""

    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->execute()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getMemUsage()Lcom/android/server/am/Pageboost$MemUsage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$MemUsage;->getTotal()I

    move-result v4

    if-lt v4, v2, :cond_0

    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/android/server/am/Pageboost$MemReclaimer;->reclaimMem(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Prefetch,"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",MemPrep,"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    iget-object p1, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo p1, "n/a"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
