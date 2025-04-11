.class public Lcom/samsung/android/server/util/SafetySystemService$Manager;
.super Ljava/lang/Object;
.source "SafetySystemService.java"


# instance fields
.field public mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mCallbacks:Ljava/util/HashSet;

.field public mSystemContext:Landroid/content/Context;

.field public mSystemReady:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/util/SafetySystemService$Manager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/util/SafetySystemService$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mSystemReady:Z

    if-nez v0, :cond_0

    const-string v0, "SafetySystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " service"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/util/SafetySystemService;->warning(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSystemReady(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mSystemContext:Landroid/content/Context;

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mSystemReady:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mCallbacks:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/util/SafetySystemService$Callback;

    iget-object v0, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p2, v0}, Lcom/samsung/android/server/util/SafetySystemService$Callback;->onSystemReady(Lcom/android/server/wm/ActivityTaskManagerService;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mCallbacks:Ljava/util/HashSet;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerCallback(Lcom/samsung/android/server/util/SafetySystemService$Callback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mSystemReady:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mCallbacks:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mCallbacks:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {p1, p0}, Lcom/samsung/android/server/util/SafetySystemService$Callback;->onSystemReady(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
