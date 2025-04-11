.class public final Lcom/google/firebase/messaging/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly7/b;


# static fields
.field public static e:Lcom/google/firebase/messaging/r;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ln/e;

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ln/e;-><init>(II)V

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    new-instance p1, Ln/e;

    invoke-direct {p1, v0, v1}, Ln/e;-><init>(II)V

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    new-instance p1, Ln/e;

    invoke-direct {p1, v0, v1}, Ln/e;-><init>(II)V

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    const/16 p1, 0x20

    new-array p1, p1, [Ln/i;

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lp1/v;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ln1/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v3}, Ln1/a;-><init>(Landroid/content/Context;Lp1/v;I)V

    new-instance v1, Ln1/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v3, p2, v4}, Ln1/a;-><init>(Landroid/content/Context;Lp1/v;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ln1/j;->a:Ljava/lang/String;

    .line 4
    new-instance v4, Ln1/i;

    invoke-direct {v4, v3, p2}, Ln1/i;-><init>(Landroid/content/Context;Lp1/v;)V

    .line 5
    new-instance v3, Ln1/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-direct {v3, p1, p2, v2}, Ln1/a;-><init>(Landroid/content/Context;Lp1/v;I)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    iput-object v4, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/r;Lp1/c;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le7/b;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Li7/a;->f:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    iput-object v0, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    sget-object v0, Lf6/h;->c:Lf6/h;

    iput-object v0, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw5/h;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Ls6/a;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized c()Lcom/google/firebase/messaging/r;
    .locals 3

    const-class v0, Lcom/google/firebase/messaging/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/r;->e:Lcom/google/firebase/messaging/r;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/messaging/r;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/r;-><init>(I)V

    sput-object v1, Lcom/google/firebase/messaging/r;->e:Lcom/google/firebase/messaging/r;

    :cond_0
    sget-object v1, Lcom/google/firebase/messaging/r;->e:Lcom/google/firebase/messaging/r;
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
.method public final a()Ly7/d;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast p0, Ls6/a;

    return-object p0
.end method

.method public final b()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast p0, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    return-object p0
.end method

.method public final d(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final e(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "android.permission.WAKE_LOCK"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final f()Lcom/google/firebase/messaging/r;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/r;

    iget-object v1, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast v1, Lp1/c;

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/messaging/r;-><init>(Lcom/google/firebase/messaging/r;Lp1/c;)V

    return-object v0
.end method

.method public final g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast v0, Lp1/c;

    invoke-virtual {v0, p0, p1}, Lp1/c;->m(Lcom/google/firebase/messaging/r;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    return-object p0
.end method

.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final h(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/n;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/d;->o()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast v2, Lp1/c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lp1/c;->m(Lcom/google/firebase/messaging/r;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/f;

    if-eqz v2, :cond_0

    :cond_1
    return-object v0
.end method

.method public final i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/r;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/r;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s is not defined"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    if-nez p2, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final k(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/r;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/r;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/r;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/r;->k(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    if-nez p2, :cond_3

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/r;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/r;->l(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
