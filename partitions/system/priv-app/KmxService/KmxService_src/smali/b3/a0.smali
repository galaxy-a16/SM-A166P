.class public final Lb3/a0;
.super Lb3/u;
.source "SourceFile"


# instance fields
.field public final b:Lb3/j;

.field public final c:Lr3/i;

.field public final d:Landroidx/work/impl/x;


# direct methods
.method public constructor <init>(Lb3/j;Lr3/i;Landroidx/work/impl/x;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lb3/u;-><init>(I)V

    iput-object p2, p0, Lb3/a0;->c:Lr3/i;

    iput-object p1, p0, Lb3/a0;->b:Lb3/j;

    iput-object p3, p0, Lb3/a0;->d:Landroidx/work/impl/x;

    iget-boolean p0, p1, Lb3/j;->c:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lb3/p;)Z
    .locals 0

    iget-object p0, p0, Lb3/a0;->b:Lb3/j;

    iget-boolean p0, p0, Lb3/j;->c:Z

    return p0
.end method

.method public final b(Lb3/p;)[La3/d;
    .locals 0

    iget-object p0, p0, Lb3/a0;->b:Lb3/j;

    iget-object p0, p0, Lb3/j;->b:Ljava/lang/Object;

    check-cast p0, [La3/d;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lb3/a0;->d:Landroidx/work/impl/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/ResolvableApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ResolvableApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    iget-object p0, p0, Lb3/a0;->c:Lr3/i;

    invoke-virtual {p0, v0}, Lr3/i;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final d(Ljava/lang/RuntimeException;)V
    .locals 0

    iget-object p0, p0, Lb3/a0;->c:Lr3/i;

    invoke-virtual {p0, p1}, Lr3/i;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final e(Lb3/p;)V
    .locals 2

    iget-object v0, p0, Lb3/a0;->c:Lr3/i;

    :try_start_0
    iget-object v1, p0, Lb3/a0;->b:Lb3/j;

    iget-object p1, p1, Lb3/p;->d:Lc3/i;

    invoke-virtual {v1, p1, v0}, Lb3/j;->b(Lc3/i;Lr3/i;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {v0, p0}, Lr3/i;->b(Ljava/lang/Exception;)Z

    return-void

    :goto_1
    invoke-static {p1}, Lb3/u;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb3/a0;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :goto_2
    throw p0
.end method

.method public final f(Lcom/google/android/gms/internal/measurement/h3;Z)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object p0, p0, Lb3/a0;->c:Lr3/i;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lr3/i;->a:Lr3/o;

    new-instance v0, Lp1/l;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1, p0}, Lp1/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lr3/j;->a:Lr1/b;

    new-instance p1, Lr3/m;

    invoke-direct {p1, p0, v0}, Lr3/m;-><init>(Ljava/util/concurrent/Executor;Lr3/d;)V

    iget-object p0, p2, Lr3/o;->b:Lz9/a;

    invoke-virtual {p0, p1}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {p2}, Lr3/o;->l()V

    return-void
.end method
