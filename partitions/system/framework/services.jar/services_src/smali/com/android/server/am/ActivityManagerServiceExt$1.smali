.class public Lcom/android/server/am/ActivityManagerServiceExt$1;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .locals 0

    return-void
.end method

.method public onUnformattedPackageFeatureFileChanged(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileDescriptor;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fgetmParser(Lcom/android/server/am/ActivityManagerServiceExt;)Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParserWithScpm;

    if-nez v0, :cond_1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParserWithScpm;->updateParserIfNeeded(Ljava/io/FileDescriptor;)Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fputmParser(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fgetmParser(Lcom/android/server/am/ActivityManagerServiceExt;)Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->isWorkCompChangedEnabled()Z

    move-result p0

    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    if-eq p1, p0, :cond_2

    sput-boolean p0, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PM_WA_WORK_COMP_CHANGED change to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    :cond_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
