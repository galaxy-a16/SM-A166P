.class public Lcom/android/server/chimera/RestartImmediatePackages;
.super Ljava/lang/Object;
.source "RestartImmediatePackages.java"


# static fields
.field public static INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;


# instance fields
.field public final sPackages:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/RestartImmediatePackages;
    .locals 2

    const-class v0, Lcom/android/server/chimera/RestartImmediatePackages;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/android/server/chimera/RestartImmediatePackages;

    invoke-direct {v1}, Lcom/android/server/chimera/RestartImmediatePackages;-><init>()V

    sput-object v1, Lcom/android/server/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;

    .line 21
    :cond_0
    sget-object v1, Lcom/android/server/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPackage(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public clearAll()V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getPackage(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    if-nez p1, :cond_0

    .line 46
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method
