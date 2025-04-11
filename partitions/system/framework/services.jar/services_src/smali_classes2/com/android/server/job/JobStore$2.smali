.class public Lcom/android/server/job/JobStore$2;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mJobFiles:Landroid/util/SparseArray;

.field public final mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

.field public final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStore;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    .line 638
    new-instance p1, Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-direct {p1, p0}, Lcom/android/server/job/JobStore$2$CopyConsumer;-><init>(Lcom/android/server/job/JobStore$2;)V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    return-void
.end method


# virtual methods
.method public final addAttributesToJobTag(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 840
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "jobid"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 841
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 842
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "class"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 843
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "sourcePackageName"

    .line 844
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 846
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "namespace"

    .line 847
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 849
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "sourceTag"

    .line 850
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "sourceUserId"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 853
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "uid"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getBias()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "bias"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "priority"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 856
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "flags"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 857
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result p0

    if-eqz p0, :cond_3

    .line 858
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "internalFlags"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 862
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "lastSuccessfulRunTime"

    .line 861
    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 864
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "lastFailedRunTime"

    .line 863
    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "cumulativeExecutionTime"

    .line 867
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getCumulativeExecutionTimeMs()J

    move-result-wide v1

    .line 866
    invoke-interface {p1, v0, p0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;
    .locals 4

    if-gtz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 882
    :cond_0
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 883
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 884
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 885
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 886
    instance-of v3, v2, Landroid/os/PersistableBundle;

    if-eqz v3, :cond_1

    .line 887
    check-cast v2, Landroid/os/PersistableBundle;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/JobStore$2;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 888
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public run()V
    .locals 9

    .line 704
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 712
    iget-object v2, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 713
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/job/JobStore;->-$$Nest$fputmWriteScheduled(Lcom/android/server/job/JobStore;Z)V

    .line 714
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmWriteInProgress(Lcom/android/server/job/JobStore;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 716
    iget-object p0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p0}, Lcom/android/server/job/JobStore;->-$$Nest$mmaybeWriteStatusToDiskAsync(Lcom/android/server/job/JobStore;)V

    .line 717
    monitor-exit v2

    return-void

    .line 719
    :cond_0
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/server/job/JobStore;->-$$Nest$fputmWriteInProgress(Lcom/android/server/job/JobStore;Z)V

    .line 720
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 722
    iget-object v2, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v3, v2, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 724
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v2

    .line 725
    iget-object v6, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v6}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$mprepare(Lcom/android/server/job/JobStore$2$CopyConsumer;)V

    .line 726
    iget-object v6, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v6, v6, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-object v7, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 727
    iget-object v6, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v6}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 728
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 729
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v4, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 730
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v4, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 731
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v4, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 732
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v3}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_0
    if-ltz v3, :cond_4

    if-eqz v2, :cond_1

    .line 735
    iget-object v5, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v5}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 736
    iget-object v6, p0, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    if-nez v6, :cond_2

    .line 738
    iget-object v6, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jobs_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/job/JobStore;->-$$Nest$mcreateJobFile(Lcom/android/server/job/JobStore;Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v6

    .line 739
    iget-object v7, p0, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 742
    :cond_1
    iget-object v5, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v5}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobsFile(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v6

    .line 744
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "JobStore"

    .line 745
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v8}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v8}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;

    move-result-object v8

    .line 747
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " jobs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 745
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_3
    iget-object v5, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v5}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p0, v6, v5}, Lcom/android/server/job/JobStore$2;->writeJobsMapImpl(Landroid/util/AtomicFile;Ljava/util/List;)V

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 751
    :cond_4
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "JobStore"

    .line 752
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished writing, took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_5
    iget-object v0, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v0}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$mreset(Lcom/android/server/job/JobStore$2$CopyConsumer;)V

    if-nez v2, :cond_6

    .line 757
    iget-object v0, p0, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 761
    :cond_6
    iget-object v0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 762
    iget-object v0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_2
    iget-object v1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmSplitFileMigrationNeeded(Lcom/android/server/job/JobStore;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 764
    iget-object v1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 765
    array-length v3, v1

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_9

    aget-object v6, v1, v5

    if-eqz v2, :cond_7

    .line 767
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jobs_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 769
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 771
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jobs_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 773
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 777
    :cond_9
    iget-object v1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1, v4}, Lcom/android/server/job/JobStore;->-$$Nest$fputmWriteInProgress(Lcom/android/server/job/JobStore;Z)V

    .line 778
    iget-object p0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object p0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 779
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 728
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 720
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "extras"

    .line 872
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v2, 0xa

    .line 873
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/JobStore$2;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 874
    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 875
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeConstraintsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6

    const/4 p0, 0x0

    const-string v0, "constraints"

    .line 903
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 905
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p2

    .line 908
    invoke-virtual {p2}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object v2

    .line 907
    invoke-static {v2}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "net-capabilities-csv"

    invoke-interface {p1, p0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 910
    invoke-virtual {p2}, Landroid/net/NetworkRequest;->getForbiddenCapabilities()[I

    move-result-object v2

    .line 909
    invoke-static {v2}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "net-forbidden-capabilities-csv"

    invoke-interface {p1, p0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 912
    invoke-virtual {p2}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object p2

    .line 911
    invoke-static {p2}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "net-transport-types-csv"

    invoke-interface {p1, p0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 913
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    const-string p2, "estimated-download-bytes"

    .line 915
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v2

    .line 914
    invoke-interface {p1, p0, p2, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 917
    :cond_0
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-eqz p2, :cond_1

    const-string p2, "estimated-upload-bytes"

    .line 919
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v2

    .line 918
    invoke-interface {p1, p0, p2, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 921
    :cond_1
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    const-string/jumbo p2, "minimum-network-chunk-bytes"

    .line 923
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v2

    .line 922
    invoke-interface {p1, p0, p2, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 926
    :cond_2
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    const-string p2, "idle"

    .line 927
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, p2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 929
    :cond_3
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "charging"

    .line 930
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, p2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 932
    :cond_4
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "battery-not-low"

    .line 933
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, p2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 935
    :cond_5
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string/jumbo p2, "storage-not-low"

    .line 936
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, p2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 938
    :cond_6
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPreferBatteryNotLow()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string/jumbo p2, "prefer-battery-not-low"

    .line 939
    invoke-interface {p1, p0, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 941
    :cond_7
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPreferCharging()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string/jumbo p2, "prefer-charging"

    .line 942
    invoke-interface {p1, p0, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 944
    :cond_8
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPreferDeviceIdle()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string/jumbo p2, "prefer-idle"

    .line 945
    invoke-interface {p1, p0, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 947
    :cond_9
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 11

    .line 952
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 953
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    const-string/jumbo v1, "periodic"

    const-string/jumbo v2, "one-off"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 954
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 955
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "period"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 956
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "flex"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 958
    :cond_0
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 964
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v0

    .line 965
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "storing original UTC timestamps for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobStore"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_1
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 970
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 971
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v0, :cond_2

    .line 974
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v8

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    goto :goto_1

    .line 975
    :cond_2
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_1
    const-string v10, "deadline"

    .line 976
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 978
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v0, :cond_4

    .line 980
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    add-long/2addr v4, v8

    goto :goto_2

    .line 981
    :cond_4
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_2
    const-string v0, "delay"

    .line 982
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 989
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    .line 990
    :cond_6
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "backoff-policy"

    invoke-interface {p1, v3, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "initial-backoff"

    invoke-interface {p1, v3, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 993
    :cond_7
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 994
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 996
    :cond_8
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_3
    return-void
.end method

.method public final writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .locals 11

    if-nez p2, :cond_0

    return-void

    .line 1014
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 1016
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    .line 1017
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1022
    :cond_1
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, "JobStore"

    const-string v3, "Encountered JobWorkItem with Intent in persisting list"

    .line 1025
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const-string v4, "job-work-item"

    .line 1028
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "delivery-count"

    .line 1029
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v6

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1030
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    const-string v5, "estimated-download-bytes"

    .line 1032
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v9

    .line 1031
    invoke-interface {p1, v3, v5, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1034
    :cond_3
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    const-string v5, "estimated-upload-bytes"

    .line 1036
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v9

    .line 1035
    invoke-interface {p1, v3, v5, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1038
    :cond_4
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    const-string/jumbo v5, "minimum-network-chunk-bytes"

    .line 1040
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v6

    .line 1039
    invoke-interface {p1, v3, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1042
    :cond_5
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/JobStore$2;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1043
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final writeJobWorkItemsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1003
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobStore$2;->writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    .line 1004
    iget-object p2, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$2;->writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    return-void
.end method

.method public final writeJobsMapImpl(Landroid/util/AtomicFile;Ljava/util/List;)V
    .locals 13

    const-string v0, "job"

    const-string v1, "job-info"

    const-string v2, "JobStore"

    .line 786
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmEventLogger(Lcom/android/server/job/JobStore;)Landroid/util/SystemConfigFileCommitEventLogger;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/SystemConfigFileCommitEventLogger;->setStartTime(J)V

    const/4 v3, 0x0

    .line 787
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 788
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 789
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    .line 790
    invoke-interface {v5, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 792
    invoke-interface {v5, v7, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "version"

    .line 793
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v6, v3

    move v8, v6

    move v9, v8

    .line 794
    :goto_0
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 795
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    .line 796
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 797
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Saving job "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    invoke-interface {v5, v7, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 800
    invoke-virtual {p0, v5, v10}, Lcom/android/server/job/JobStore$2;->addAttributesToJobTag(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 801
    invoke-virtual {p0, v5, v10}, Lcom/android/server/job/JobStore$2;->writeConstraintsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 802
    invoke-virtual {p0, v5, v10}, Lcom/android/server/job/JobStore$2;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 803
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    invoke-virtual {p0, v11, v5}, Lcom/android/server/job/JobStore$2;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 804
    invoke-virtual {p0, v5, v10}, Lcom/android/server/job/JobStore$2;->writeJobWorkItemsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 805
    invoke-interface {v5, v7, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    .line 808
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_1

    add-int/lit8 v8, v8, 0x1

    .line 810
    invoke-static {v10}, Lcom/android/server/job/JobStore;->-$$Nest$smisSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 815
    :cond_2
    invoke-interface {v5, v7, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 816
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 818
    invoke-virtual {p1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_3

    .line 819
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move v3, v6

    goto/16 :goto_8

    :catch_0
    move-exception p1

    move v3, v6

    goto :goto_4

    :catch_1
    move-exception p1

    move v3, v6

    goto :goto_5

    .line 828
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p1

    iget p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    add-int/2addr p2, v6

    goto :goto_7

    :catchall_1
    move-exception p1

    move v3, v6

    goto :goto_2

    :catchall_2
    move-exception p1

    move v8, v3

    move v9, v8

    :goto_2
    if-eqz v4, :cond_4

    .line 787
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_5

    :catchall_4
    move-exception p1

    move v8, v3

    move v9, v8

    goto :goto_8

    :catch_4
    move-exception p1

    move v8, v3

    move v9, v8

    .line 824
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "Error persisting bundle."

    .line 825
    invoke-static {v2, p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_5
    move-exception p1

    move v8, v3

    move v9, v8

    .line 820
    :goto_5
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "Error writing out job data."

    .line 821
    invoke-static {v2, p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 828
    :cond_5
    :goto_6
    iget-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p1

    iget p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    add-int/2addr p2, v3

    :goto_7
    iput p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 829
    iget-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p1

    iget p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    add-int/2addr p2, v8

    iput p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 830
    iget-object p0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    iget p1, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    return-void

    :catchall_5
    move-exception p1

    .line 828
    :goto_8
    iget-object p2, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p2}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p2

    iget v0, p2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    add-int/2addr v0, v3

    iput v0, p2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 829
    iget-object p2, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p2}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p2

    iget v0, p2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    add-int/2addr v0, v8

    iput v0, p2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 830
    iget-object p0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    iget p2, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    add-int/2addr p2, v9

    iput p2, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 831
    throw p1
.end method
