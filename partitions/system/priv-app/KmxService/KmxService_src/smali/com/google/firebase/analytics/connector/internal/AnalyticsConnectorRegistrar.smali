.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambda$getComponents$0(La5/d;)Lx4/a;
    .locals 6

    const-class v0, Lv4/g;

    invoke-interface {p0, v0}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/g;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lg5/c;

    invoke-interface {p0, v2}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg5/c;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    sget-object v2, Lx4/b;->b:Lx4/b;

    if-nez v2, :cond_2

    const-class v2, Lx4/b;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lx4/b;->b:Lx4/b;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0}, Lv4/g;->a()V

    const-string v4, "[DEFAULT]"

    iget-object v5, v0, Lv4/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lx4/c;->a:Lx4/c;

    sget-object v5, Lh5/d;->i:Lh5/d;

    check-cast p0, La5/m;

    invoke-virtual {p0, v4, v5}, La5/m;->a(Ljava/util/concurrent/Executor;Lg5/a;)V

    const-string p0, "dataCollectionDefaultEnabled"

    invoke-virtual {v0}, Lv4/g;->a()V

    iget-object v0, v0, Lv4/g;->g:La5/n;

    invoke-virtual {v0}, La5/n;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/a;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v4, v0, Ln5/a;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    invoke-virtual {v3, p0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    new-instance p0, Lx4/b;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/b1;->c(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/b1;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->b:Lp5/c;

    invoke-direct {p0, v0}, Lx4/b;-><init>(Lp5/c;)V

    sput-object p0, Lx4/b;->b:Lx4/b;

    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_2
    :goto_1
    sget-object p0, Lx4/b;->b:Lx4/b;

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La5/c;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array v0, p0, [La5/c;

    const-class v1, Lx4/a;

    invoke-static {v1}, La5/c;->b(Ljava/lang/Class;)La5/b;

    move-result-object v1

    const-class v2, Lv4/g;

    invoke-static {v2}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v2

    invoke-virtual {v1, v2}, La5/b;->a(La5/l;)V

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v2

    invoke-virtual {v1, v2}, La5/b;->a(La5/l;)V

    const-class v2, Lg5/c;

    invoke-static {v2}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v2

    invoke-virtual {v1, v2}, La5/b;->a(La5/l;)V

    sget-object v2, Ll4/e;->g:Ll4/e;

    iput-object v2, v1, La5/b;->g:Ljava/lang/Object;

    iget v2, v1, La5/b;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    iput p0, v1, La5/b;->a:I

    invoke-virtual {v1}, La5/b;->b()La5/c;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "fire-analytics"

    const-string v1, "21.1.1"

    invoke-static {p0, v1}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Instantiation type has already been set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
