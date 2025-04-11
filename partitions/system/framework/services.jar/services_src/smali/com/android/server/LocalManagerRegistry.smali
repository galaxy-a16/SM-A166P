.class public final Lcom/android/server/LocalManagerRegistry;
.super Ljava/lang/Object;
.source "LocalManagerRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final sManagers:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/LocalManagerRegistry;->sManagers:Ljava/util/Map;

    return-void
.end method

.method public static addManager(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "managerClass"

    .line 79
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "manager"

    .line 80
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/server/LocalManagerRegistry;->sManagers:Ljava/util/Map;

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v0

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is already registered"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getManager(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/LocalManagerRegistry;->sManagers:Ljava/util/Map;

    monitor-enter v0

    .line 52
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException;

    invoke-direct {v0, p0}, Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method
