.class public final Lcom/google/android/gms/measurement/internal/o3;
.super Lcom/google/android/gms/measurement/internal/n5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/d;


# instance fields
.field public final d:Ll/b;

.field public final e:Ll/b;

.field public final f:Ll/b;

.field public final g:Ll/b;

.field public final h:Ll/b;

.field public final i:Ll/b;

.field public final j:Lcom/google/android/gms/measurement/internal/n3;

.field public final k:Ld/s0;

.field public final l:Ll/b;

.field public final m:Ll/b;

.field public final n:Ll/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/q5;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/n5;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->d:Ll/b;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->e:Ll/b;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->f:Ll/b;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->g:Ll/b;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->h:Ll/b;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->l:Ll/b;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->m:Ll/b;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->n:Ll/b;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->i:Ll/b;

    new-instance p1, Lcom/google/android/gms/measurement/internal/n3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/n3;-><init>(Lcom/google/android/gms/measurement/internal/o3;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->j:Lcom/google/android/gms/measurement/internal/n3;

    new-instance p1, Ld/s0;

    const/16 v0, 0x13

    invoke-direct {p1, p0, v0}, Ld/s0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->k:Ld/s0;

    return-void
.end method

.method public static final s(Lcom/google/android/gms/internal/measurement/t1;)Ll/b;
    .locals 3

    new-instance v0, Ll/b;

    invoke-direct {v0}, Ll/b;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/t1;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/v1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/v1;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/v1;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->d:Ll/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final o(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/t1;
    .locals 6

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t1;->r()Lcom/google/android/gms/internal/measurement/t1;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t1;->p()Lcom/google/android/gms/internal/measurement/s1;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/measurement/internal/b3;->D(Lcom/google/android/gms/internal/measurement/k4;[B)Lcom/google/android/gms/internal/measurement/k4;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/t1;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Parsed config. version, gmp_app_id"

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/t1;->C()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/t1;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/t1;->B()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/t1;->s()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzko; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Unable to merge remote config. appId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t1;->r()Lcom/google/android/gms/internal/measurement/t1;

    move-result-object p0

    return-object p0
.end method

.method public final p(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/s1;)V
    .locals 12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ll/b;

    invoke-direct {v1}, Ll/b;-><init>()V

    new-instance v2, Ll/b;

    invoke-direct {v2}, Ll/b;-><init>()V

    new-instance v3, Ll/b;

    invoke-direct {v3}, Ll/b;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/s7;->b()V

    iget-object v4, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/gms/measurement/internal/o2;->i0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/t1;->v()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/p1;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/p1;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    iget-object v7, p2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/t1;->m()I

    move-result v7

    if-ge v6, v7, :cond_a

    iget-object v7, p2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/t1;->o(I)Lcom/google/android/gms/internal/measurement/r1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/q1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q1;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v8, "EventConfig contained null event name"

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q1;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q1;->g()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lfc/c;->d:[Ljava/lang/String;

    sget-object v11, Lfc/c;->f:[Ljava/lang/String;

    invoke-static {v10, v9, v11}, Lv9/a;->i0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-boolean v10, v7, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v10, :cond_2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v5, v7, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_2
    iget-object v10, v7, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v10, Lcom/google/android/gms/internal/measurement/r1;

    invoke-static {v10, v9}, Lcom/google/android/gms/internal/measurement/r1;->o(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;)V

    iget-boolean v9, p2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v5, p2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_3
    iget-object v9, p2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/r1;

    invoke-static {v9, v6, v10}, Lcom/google/android/gms/internal/measurement/t1;->y(Lcom/google/android/gms/internal/measurement/t1;ILcom/google/android/gms/internal/measurement/r1;)V

    :cond_4
    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/r1;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/r1;->r()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/r1;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/r1;->p()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v9}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v8, Lcom/google/android/gms/internal/measurement/r1;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->s()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v8, Lcom/google/android/gms/internal/measurement/r1;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->q()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q1;->g()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v8, v9}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v8, Lcom/google/android/gms/internal/measurement/r1;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->t()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v8, Lcom/google/android/gms/internal/measurement/r1;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->l()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_8

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v8, Lcom/google/android/gms/internal/measurement/r1;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->l()I

    move-result v8

    const v9, 0xffff

    if-le v8, v9, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q1;->g()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/r1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/r1;->l()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q1;->g()Ljava/lang/String;

    move-result-object v9

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/r1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/r1;->l()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v10, "Invalid sampling rate. Event name, sample rate"

    invoke-virtual {v8, v10, v9, v7}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o3;->e:Ll/b;

    invoke-virtual {p2, p1, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o3;->f:Ll/b;

    invoke-virtual {p2, p1, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o3;->g:Ll/b;

    invoke-virtual {p2, p1, v2}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->i:Ll/b;

    invoke-virtual {p0, p1, v3}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-static {p1}, Lva/n;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o3;->h:Ll/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    invoke-static {p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v2, "remote_config"

    const-string v5, "config_last_modified_time"

    const-string v6, "e_tag"

    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v8, v12

    const-string v5, "apps"

    const-string v7, "app_id=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v7, Lcom/google/android/gms/measurement/internal/o2;->t0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v6, v1, v7}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v3

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "Got multiple records for app config, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v7, Lva/f;

    invoke-direct {v7, v5, v2, v6}, Lva/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception v2

    move-object v4, v1

    :goto_1
    :try_start_2
    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Error querying remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_4

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v7, v1

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o3;->n:Ll/b;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/o3;->m:Ll/b;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/o3;->l:Ll/b;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/o3;->d:Ll/b;

    if-nez v7, :cond_5

    invoke-virtual {v5, p1, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/o3;->f:Ll/b;

    invoke-virtual {v5, p1, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/o3;->e:Ll/b;

    invoke-virtual {v5, p1, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/o3;->g:Ll/b;

    invoke-virtual {v5, p1, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, p1, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, p1, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->i:Ll/b;

    invoke-virtual {p0, p1, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    iget-object v1, v7, Lva/f;->a:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/o3;->o(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/t1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/o3;->p(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/s1;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o3;->s(Lcom/google/android/gms/internal/measurement/t1;)Ll/b;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0, p1, v5}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/o3;->r(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t1;)V

    iget-object p0, v1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/t1;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p1, p0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v7, Lva/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p1, p0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v7, Lva/f;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p1, p0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p0

    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0

    :cond_7
    return-void
.end method

.method public final r(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t1;)V
    .locals 5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/t1;->l()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "EES programs found"

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/t1;->l()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/t1;->w()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/y2;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/d0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d0;-><init>()V

    const-string v1, "internal.remoteConfig"

    new-instance v2, Lcom/google/android/gms/measurement/internal/m3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/google/android/gms/measurement/internal/m3;-><init>(Lcom/google/android/gms/measurement/internal/o3;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/d0;->a:Lp1/o;

    iget-object v3, v3, Lp1/o;->d:Ljava/lang/Object;

    check-cast v3, Ld/s0;

    iget-object v3, v3, Ld/s0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/measurement/internal/m3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/measurement/internal/m3;-><init>(Lcom/google/android/gms/measurement/internal/o3;Ljava/lang/String;I)V

    const-string v3, "internal.appMetadata"

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/d0;->a:Lp1/o;

    iget-object v4, v4, Lp1/o;->d:Ljava/lang/Object;

    check-cast v4, Ld/s0;

    iget-object v4, v4, Ld/s0;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/measurement/a;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/a;-><init>(Ljava/lang/Object;I)V

    const-string v2, "internal.logger"

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/d0;->a:Lp1/o;

    iget-object v3, v3, Lp1/o;->d:Ljava/lang/Object;

    check-cast v3, Ld/s0;

    iget-object v3, v3, Ld/s0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/d0;->a(Lcom/google/android/gms/internal/measurement/y2;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o3;->j:Lcom/google/android/gms/measurement/internal/n3;

    invoke-virtual {v1, p1, v0}, Ll/e;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "EES program loaded for appId, activities"

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/y2;->l()Lcom/google/android/gms/internal/measurement/w2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/w2;->l()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/y2;->l()Lcom/google/android/gms/internal/measurement/w2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w2;->o()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/x2;

    iget-object v1, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "EES program activity"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x2;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p2, "Failed to load EES program. appId"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->j:Lcom/google/android/gms/measurement/internal/n3;

    if-eqz p1, :cond_3

    monitor-enter p0

    :try_start_1
    iget-object p2, p0, Ll/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p1, p0, Ll/e;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ll/e;->b:I

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->i:Ll/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method public final u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-static {p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->h:Ll/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/t1;

    return-object p0
.end method

.method public final v(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->l:Ll/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final w(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->h:Ll/b;

    invoke-virtual {p0, p1, v0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/t1;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/t1;->l()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refund"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->g:Ll/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_2

    return p1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    const-string v0, "measurement.upload.blacklist_internal"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/o3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/u5;->W(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const-string v0, "measurement.upload.blacklist_public"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/o3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/u5;->X(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->f:Ll/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_4

    return p1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_5
    return p1
.end method

.method public final z(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual/range {p0 .. p0}, Lb0/h;->k()V

    invoke-static/range {p1 .. p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/measurement/internal/o3;->o(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/t1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/measurement/internal/o3;->p(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/s1;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/o3;->r(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t1;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/o3;->h:Ll/b;

    invoke-virtual {v6, v2, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t1;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/o3;->l:Ll/b;

    invoke-virtual {v7, v2, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o3;->m:Ll/b;

    invoke-virtual {v0, v2, v3}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o3;->n:Ll/b;

    invoke-virtual {v0, v2, v4}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o3;->s(Lcom/google/android/gms/internal/measurement/t1;)Ll/b;

    move-result-object v0

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/o3;->d:Ll/b;

    invoke-virtual {v7, v2, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t1;->u()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v10, "app_id=? and audience_id=?"

    const-string v0, "app_id=?"

    const-string v11, "event_filters"

    const-string v12, "property_filters"

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_e

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/c1;

    iget-object v13, v15, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v13, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/d1;->m()I

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v16, v6

    move-object v6, v15

    const/4 v13, 0x0

    :goto_1
    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/d1;->m()I

    move-result v4

    if-ge v13, v4, :cond_8

    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/measurement/d1;->p(I)Lcom/google/android/gms/internal/measurement/f1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/e1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->a()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lcom/google/android/gms/internal/measurement/e1;

    move-object/from16 v17, v7

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/f1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/f1;->r()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lfc/c;->d:[Ljava/lang/String;

    move-object/from16 v18, v5

    sget-object v5, Lfc/c;->f:[Ljava/lang/String;

    invoke-static {v1, v7, v5}, Lv9/a;->i0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v5, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_0
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/f1;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/measurement/f1;->t(Lcom/google/android/gms/internal/measurement/f1;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    move v5, v1

    const/4 v1, 0x0

    :goto_3
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/f1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/f1;->l()I

    move-result v7

    if-ge v1, v7, :cond_5

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/f1;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/measurement/f1;->p(I)Lcom/google/android/gms/internal/measurement/h1;

    move-result-object v7

    move-object/from16 v19, v4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h1;->p()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v10

    sget-object v10, Lfc/k;->c:[Ljava/lang/String;

    move-object/from16 v21, v11

    sget-object v11, Lfc/k;->d:[Ljava/lang/String;

    invoke-static {v10, v4, v11}, Lv9/a;->i0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/g1;

    iget-boolean v7, v5, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    goto :goto_4

    :cond_2
    const/4 v7, 0x0

    :goto_4
    iget-object v10, v5, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v10, Lcom/google/android/gms/internal/measurement/h1;

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/measurement/h1;->q(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/h1;

    iget-boolean v5, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v7, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_3
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/f1;

    invoke-static {v5, v1, v4}, Lcom/google/android/gms/internal/measurement/f1;->u(Lcom/google/android/gms/internal/measurement/f1;ILcom/google/android/gms/internal/measurement/h1;)V

    const/4 v5, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    goto :goto_3

    :cond_5
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    if-eqz v5, :cond_7

    iget-boolean v1, v6, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v1, :cond_6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_6
    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v1, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f1;

    invoke-static {v1, v13, v3}, Lcom/google/android/gms/internal/measurement/d1;->u(Lcom/google/android/gms/internal/measurement/d1;ILcom/google/android/gms/internal/measurement/f1;)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v9, v14, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    :cond_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, v17

    move-object/from16 v5, v18

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    goto/16 :goto_1

    :cond_8
    move-object/from16 v18, v5

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto :goto_5

    :cond_9
    move-object/from16 v18, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object v6, v15

    :goto_5
    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v1, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/d1;->n()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    :goto_6
    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/d1;->n()I

    move-result v3

    if-ge v1, v3, :cond_d

    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/d1;->q(I)Lcom/google/android/gms/internal/measurement/m1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->p()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lg2/m;->c:[Ljava/lang/String;

    sget-object v7, Lg2/m;->d:[Ljava/lang/String;

    invoke-static {v5, v4, v7}, Lv9/a;->i0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/l1;

    iget-boolean v5, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m1;

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/measurement/m1;->q(Lcom/google/android/gms/internal/measurement/m1;Ljava/lang/String;)V

    iget-boolean v4, v6, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v4, :cond_b

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v5, v6, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_b
    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/m1;

    invoke-static {v4, v1, v3}, Lcom/google/android/gms/internal/measurement/d1;->t(Lcom/google/android/gms/internal/measurement/d1;ILcom/google/android/gms/internal/measurement/m1;)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v9, v14, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v5, v18

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    goto/16 :goto_0

    :cond_e
    move-object/from16 v18, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v8}, Lb0/h;->k()V

    invoke-static/range {p1 .. p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v8}, Lb0/h;->k()V

    invoke-static/range {p1 .. p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v12, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v5, v4, [Ljava/lang/String;

    aput-object v2, v5, v6

    move-object/from16 v4, v21

    invoke-virtual {v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v7, v8, Lb0/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_20

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v8}, Lb0/h;->k()V

    invoke-static/range {p1 .. p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d1;->v()Z

    move-result v10

    if-nez v10, :cond_f

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Audience with no ID. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d1;->l()I

    move-result v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d1;->r()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/f1;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f1;->z()Z

    move-result v13

    if-nez v13, :cond_10

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    :goto_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v6

    goto :goto_a

    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d1;->s()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/m1;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m1;->u()Z

    move-result v13

    if-nez v13, :cond_12

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    goto :goto_9

    :goto_a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d1;->r()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v14, "data"

    const-string v15, "session_scoped"

    const-string v5, "filter_id"

    const-string v6, "audience_id"

    move-object/from16 v23, v3

    const-string v3, "app_id"

    if-eqz v13, :cond_19

    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/f1;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v8}, Lb0/h;->k()V

    invoke-static/range {p1 .. p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {v13}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f1;->r()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_15

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f1;->z()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f1;->m()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_c

    :cond_14
    const/4 v7, 0x0

    :goto_c
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v25, v1

    goto/16 :goto_14

    :cond_15
    move-object/from16 v24, v11

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/t3;->b()[B

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v25, v1

    :try_start_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f1;->z()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f1;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "event_name"

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f1;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f1;->A()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f1;->x()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v1, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v13

    const-wide/16 v5, -0x1

    cmp-long v1, v13, v5

    if-nez v1, :cond_18

    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Failed to insert event filter (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_18
    move-object/from16 v3, v23

    move-object/from16 v11, v24

    move-object/from16 v1, v25

    goto/16 :goto_b

    :catch_0
    move-exception v0

    :try_start_5
    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Error storing event filter. appId"

    goto/16 :goto_13

    :cond_19
    move-object/from16 v25, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d1;->s()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/m1;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v8}, Lb0/h;->k()V

    invoke-static/range {p1 .. p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m1;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1b

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m1;->u()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m1;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    :goto_10
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v5, v6, v1}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_1b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/t3;->b()[B

    move-result-object v11

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m1;->u()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m1;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_11

    :cond_1c
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v13, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "property_name"

    move-object/from16 v26, v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m1;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m1;->v()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m1;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_12

    :cond_1d
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v3, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v27

    const-wide/16 v21, -0x1

    cmp-long v0, v27, v21

    if-nez v0, :cond_1e

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Failed to insert property filter (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_14

    :cond_1e
    move-object/from16 v0, v24

    move-object/from16 v3, v26

    goto/16 :goto_f

    :catch_1
    move-exception v0

    :try_start_7
    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Error storing property filter. appId"

    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v8}, Lb0/h;->k()V

    invoke-static/range {p1 .. p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    move-object/from16 v6, v20

    invoke-virtual {v0, v12, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-virtual {v0, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_15

    :cond_1f
    move-object/from16 v6, v20

    :goto_15
    move-object/from16 v20, v6

    move-object/from16 v3, v23

    move-object/from16 v1, v25

    goto/16 :goto_8

    :cond_20
    move-object/from16 v25, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/d1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/d1;->v()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/d1;->l()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_17

    :cond_21
    const/4 v6, 0x0

    :goto_17
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_22
    invoke-static/range {p1 .. p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v8}, Lb0/h;->k()V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v3, 0x1

    :try_start_8
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v3, "select count(1) from audience_filter_values where app_id=?"

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/measurement/internal/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v6, Lcom/google/android/gms/measurement/internal/o2;->F:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v5

    const/16 v6, 0x7d0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v6, v5

    cmp-long v3, v3, v6

    if-gtz v3, :cond_23

    goto/16 :goto_19

    :cond_23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_25

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_24
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "audience_filter_values"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_19

    :catch_2
    move-exception v0

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Database error querying filters. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    :goto_19
    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v1, v18

    :try_start_a
    iget-boolean v0, v1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_26

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_26
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/t1;->z(Lcom/google/android/gms/internal/measurement/t1;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t3;->b()[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_1a

    :catch_3
    move-exception v0

    move-object/from16 v3, p0

    iget-object v3, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p2

    :goto_1a
    move-object/from16 v3, v17

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static/range {p1 .. p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Lb0/h;->k()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "remote_config"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "config_last_modified_time"

    move-object/from16 v5, p3

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lb0/h;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v7, Lcom/google/android/gms/measurement/internal/o2;->t0:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v6, "e_tag"

    move-object/from16 v7, p4

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :try_start_b
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const-string v7, "apps"

    const-string v8, "app_id = ?"

    invoke-virtual {v3, v7, v4, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_28

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Failed to update remote config (got 0). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_1b

    :catch_4
    move-exception v0

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Error storing remote config. appId"

    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    :goto_1b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    move-object/from16 v1, v16

    invoke-virtual {v1, v2, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1c

    :catchall_1
    move-exception v0

    move-object/from16 v25, v1

    :goto_1c
    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
