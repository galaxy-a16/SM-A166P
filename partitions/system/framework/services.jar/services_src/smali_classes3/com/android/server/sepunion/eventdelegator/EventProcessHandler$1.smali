.class public Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "EventProcessHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;Landroid/os/Looper;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    .line 52
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {v0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {v1}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 55
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    const-string/jumbo v3, "monitor_call_state"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    const-string/jumbo v2, "monitor_call_state"

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 58
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportCallStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ILjava/lang/String;)V

    .line 60
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
