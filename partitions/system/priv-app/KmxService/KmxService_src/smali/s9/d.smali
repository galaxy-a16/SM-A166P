.class public final Ls9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/a;


# static fields
.field public static b:Ls9/d;


# instance fields
.field public final a:Lt9/b;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ls9/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls9/d;->a:Lt9/b;

    if-nez p1, :cond_0

    const-string v0, "context cannot be null"

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "Configuration cannot be null"

    goto :goto_0

    .line 1
    :cond_1
    iget-object v1, p2, Ls9/a;->a:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "TrackingId is empty, set TrackingId"

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    iget-boolean v1, p2, Ls9/a;->b:Z

    if-nez v1, :cond_3

    const-string v0, "Device Id is empty, set Device Id or enable auto device id"

    goto :goto_0

    .line 4
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "This mode is not allowed to set device Id"

    goto :goto_0

    .line 5
    :cond_4
    iget-object v0, p2, Ls9/a;->c:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "you should set the UI version"

    :goto_0
    invoke-static {v0}, Lva/n;->O(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    .line 7
    new-instance v0, Lt9/b;

    invoke-direct {v0, p1, p2}, Lt9/b;-><init>(Landroid/app/Application;Ls9/a;)V

    iput-object v0, p0, Ls9/d;->a:Lt9/b;

    :cond_6
    return-void
.end method

.method public constructor <init>(Lt9/b;)V
    .locals 0

    .line 8
    iput-object p1, p0, Ls9/d;->a:Lt9/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls9/d;
    .locals 3

    sget-object v0, Ls9/d;->b:Ls9/d;

    if-nez v0, :cond_1

    const-string v0, "call after setConfiguration() method"

    invoke-static {v0}, Lva/n;->O(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    const-class v0, Ls9/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ls9/d;->b:Ls9/d;

    if-nez v1, :cond_0

    new-instance v1, Ls9/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Ls9/d;-><init>(Landroid/app/Application;Ls9/a;)V

    sput-object v1, Ls9/d;->b:Ls9/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Ls9/d;->b:Ls9/d;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/util/Map;)V
    .locals 3

    const-string v0, "sendLog"

    invoke-static {v0}, Lv4/b;->s(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Ls9/d;->a:Lt9/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/work/impl/x;->h()Landroidx/work/impl/x;

    move-result-object v0

    new-instance v1, Lp1/c;

    const/16 v2, 0x11

    invoke-direct {v1, p0, p1, v2}, Lp1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/x;->d(Lab/a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Ls9/d;->a:Lt9/b;

    iget-object p1, p0, Lt9/b;->b:Ls9/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lt9/b;->c:Landroid/content/Context;

    iget-object p0, p0, Lt9/b;->b:Ls9/a;

    invoke-static {p1, p0}, Lz9/a;->b(Landroid/content/Context;Ls9/a;)Lz9/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp1/l;

    const/16 v1, 0x11

    invoke-direct {v0, p1, v1}, Lp1/l;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz9/a;->a:Z

    iput-object v0, p0, Lz9/a;->b:Ljava/lang/Object;

    iget-object p1, p0, Lz9/a;->c:Ljava/lang/Object;

    check-cast p1, Lt6/a;

    iget-object p1, p1, Lt6/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lz9/a;->c:Ljava/lang/Object;

    check-cast p1, Lt6/a;

    iget-object p1, p1, Lt6/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    iget-object v1, p0, Lz9/a;->b:Ljava/lang/Object;

    check-cast v1, Lp1/l;

    invoke-virtual {v1, v0}, Lp1/l;->k(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lz9/a;->c:Ljava/lang/Object;

    check-cast p0, Lt6/a;

    iget-object p0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    :cond_1
    return-void
.end method
