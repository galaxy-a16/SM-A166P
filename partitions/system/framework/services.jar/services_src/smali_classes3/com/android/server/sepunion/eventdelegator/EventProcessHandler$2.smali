.class public Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "EventProcessHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3

    .line 139
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageAdded(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {p2}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 142
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "monitor_package_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {v1}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 144
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object p0

    const-string/jumbo v1, "package_added"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 4

    .line 123
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageModified(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {v0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "monitor_package_state;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {v2}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v2

    .line 127
    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v2, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v1, :cond_0

    .line 130
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object p0

    const-string/jumbo v2, "package_modified"

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    .line 156
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageRemoved() :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {p2}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 159
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "monitor_package_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {v1}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 161
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object p0

    const-string/jumbo v1, "package_removed"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
