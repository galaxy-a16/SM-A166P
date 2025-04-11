.class public final Lcom/google/android/gms/internal/measurement/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp1/o;

.field public b:Lcom/google/firebase/messaging/r;

.field public final c:Lp1/v;

.field public final d:Lp1/e;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lp1/o;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lp1/o;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d0;->a:Lp1/o;

    iget-object v1, v0, Lp1/o;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/messaging/r;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/r;->f()Lcom/google/firebase/messaging/r;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/d0;->b:Lcom/google/firebase/messaging/r;

    new-instance v1, Lp1/v;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lp1/v;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/d0;->c:Lp1/v;

    new-instance v1, Lp1/e;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lp1/e;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/d0;->d:Lp1/e;

    new-instance v1, Lcom/google/android/gms/internal/measurement/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/a;-><init>(Ljava/lang/Object;I)V

    iget-object v2, v0, Lp1/o;->d:Ljava/lang/Object;

    check-cast v2, Ld/s0;

    iget-object v2, v2, Ld/s0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const-string v3, "internal.registerCallback"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/measurement/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/a;-><init>(Ljava/lang/Object;I)V

    iget-object p0, v0, Lp1/o;->d:Ljava/lang/Object;

    check-cast p0, Ld/s0;

    iget-object p0, p0, Ld/s0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    const-string v0, "internal.eventLogger"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/y2;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d0;->a:Lp1/o;

    :try_start_0
    iget-object v1, v0, Lp1/o;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/messaging/r;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/r;->f()Lcom/google/firebase/messaging/r;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/d0;->b:Lcom/google/firebase/messaging/r;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y2;->n()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/d0;->b:Lcom/google/firebase/messaging/r;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/google/android/gms/internal/measurement/a3;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual {v0, v2, v1}, Lp1/o;->j(Lcom/google/firebase/messaging/r;[Lcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/measurement/f;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y2;->l()Lcom/google/android/gms/internal/measurement/w2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/w2;->o()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/x2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/x2;->n()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/x2;->m()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/a3;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/d0;->b:Lcom/google/firebase/messaging/r;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/a3;

    aput-object v4, v6, v3

    invoke-virtual {v0, v5, v6}, Lp1/o;->j(Lcom/google/firebase/messaging/r;[Lcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/k;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/d0;->b:Lcom/google/firebase/messaging/r;

    invoke-virtual {v5, v1}, Lcom/google/firebase/messaging/r;->l(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v1}, Lcom/google/firebase/messaging/r;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/h;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/google/android/gms/internal/measurement/h;

    :goto_1
    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/d0;->b:Lcom/google/firebase/messaging/r;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/measurement/h;->d(Lcom/google/firebase/messaging/r;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Rule function is undefined: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid function name: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid rule definition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Program loading failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzd;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/b;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d0;->c:Lp1/v;

    :try_start_0
    iput-object p1, v0, Lp1/v;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b;->a()Lcom/google/android/gms/internal/measurement/b;

    move-result-object p1

    iput-object p1, v0, Lp1/v;->c:Ljava/lang/Object;

    iget-object p1, v0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/d0;->a:Lp1/o;

    iget-object p1, p1, Lp1/o;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/messaging/r;

    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    const-string v2, "runtime.counter"

    invoke-virtual {p1, v2, v1}, Lcom/google/firebase/messaging/r;->k(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/d0;->d:Lp1/e;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d0;->b:Lcom/google/firebase/messaging/r;

    invoke-virtual {p0}, Lcom/google/firebase/messaging/r;->f()Lcom/google/firebase/messaging/r;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lp1/e;->m(Lcom/google/firebase/messaging/r;Lp1/v;)V

    iget-object p0, v0, Lp1/v;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/b;

    iget-object p1, v0, Lp1/v;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/b;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    if-nez p0, :cond_1

    iget-object p0, v0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p1

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzd;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
