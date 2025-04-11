.class public Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;
.super Ljava/lang/Object;
.source "EndpointMonitorImpl.java"


# instance fields
.field public final allowedUids:Ljava/util/Set;

.field public final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field public final extras:I

.field public final filter:Ljava/util/function/Predicate;

.field public final flags:I

.field public final listener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

.field public final mode:I

.field public final monitor:Ljava/lang/Runnable;

.field public final requestorUid:I

.field public final targets:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

.field public final type:I

.field public final uadListener:Landroid/os/IZtdListener;


# direct methods
.method public static synthetic $r8$lambda$Eje67zAi1BIi2isim37pA87VnKA(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->lambda$new$0(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;II[ILjava/util/Map;Landroid/os/IZtdListener;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;III)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    iput p3, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->requestorUid:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->allowedUids:Ljava/util/Set;

    if-eqz p4, :cond_0

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p4, v1

    iget-object v3, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->allowedUids:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->targets:Ljava/util/Map;

    iput-object p6, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->uadListener:Landroid/os/IZtdListener;

    iput-object p7, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->listener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    new-instance p8, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession$$ExternalSyntheticLambda0;

    invoke-direct {p8}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession$$ExternalSyntheticLambda0;-><init>()V

    :goto_1
    iput-object p8, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->filter:Ljava/util/function/Predicate;

    invoke-static {p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->-$$Nest$mcreateMonitorFactory(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object p4

    invoke-static {p4}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, p2, p3}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->-$$Nest$mcreateMonitorRunnable(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;II)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->monitor:Ljava/lang/Runnable;

    iput p9, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->flags:I

    iput p10, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->extras:I

    iput p11, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->mode:I

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onEvent(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->filter:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->listener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    invoke-static {v2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->-$$Nest$fgetmBootTimeNanos(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p1

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->extras:I

    invoke-virtual {p1, p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->listener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    invoke-static {v2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->-$$Nest$fgetmBootTimeNanos(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p1

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->extras:I

    invoke-virtual {p1, p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;->onEventGeneralized(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->listener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    invoke-static {v2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->-$$Nest$fgetmBootTimeNanos(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p1

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->extras:I

    invoke-virtual {p1, p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toLine()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;->onEventSimplified(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startLocked()I
    .locals 9

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->monitor:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    invoke-static {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->-$$Nest$fgetmSessions(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->requestorUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->monitor:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 p0, 0x0

    return p0
.end method
