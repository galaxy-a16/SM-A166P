.class public final Lcom/google/android/gms/measurement/internal/x5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lcom/google/android/gms/internal/measurement/r2;

.field public final d:Ljava/util/BitSet;

.field public final e:Ljava/util/BitSet;

.field public final f:Ljava/util/Map;

.field public final g:Ll/b;

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x5;->h:Lcom/google/android/gms/measurement/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/x5;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/x5;->b:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x5;->d:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x5;->e:Ljava/util/BitSet;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x5;->f:Ljava/util/Map;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x5;->g:Ll/b;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/b;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/r2;Ljava/util/BitSet;Ljava/util/BitSet;Ll/b;Ll/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x5;->h:Lcom/google/android/gms/measurement/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/x5;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/x5;->d:Ljava/util/BitSet;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/x5;->e:Ljava/util/BitSet;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/x5;->f:Ljava/util/Map;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x5;->g:Ll/b;

    invoke-virtual {p7}, Ll/b;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ll/g;

    invoke-virtual {p1}, Ll/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 p5, 0x0

    .line 2
    invoke-virtual {p7, p2, p5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 3
    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/x5;->g:Ll/b;

    invoke-virtual {p5, p2, p4}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/x5;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/x5;->c:Lcom/google/android/gms/internal/measurement/r2;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/z1;
    .locals 10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/z1;->m()Lcom/google/android/gms/internal/measurement/y1;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v1, Lcom/google/android/gms/internal/measurement/z1;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/z1;->q(Lcom/google/android/gms/internal/measurement/z1;I)V

    iget-boolean p1, v0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_1
    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p1, Lcom/google/android/gms/internal/measurement/z1;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/x5;->b:Z

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/z1;->t(Lcom/google/android/gms/internal/measurement/z1;Z)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/x5;->c:Lcom/google/android/gms/internal/measurement/r2;

    if-eqz p1, :cond_3

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v1, Lcom/google/android/gms/internal/measurement/z1;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/z1;->s(Lcom/google/android/gms/internal/measurement/z1;Lcom/google/android/gms/internal/measurement/r2;)V

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/r2;->q()Lcom/google/android/gms/internal/measurement/q2;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x5;->d:Ljava/util/BitSet;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/b3;->H(Ljava/util/BitSet;)Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, p1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/r2;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/r2;->A(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x5;->e:Ljava/util/BitSet;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/b3;->H(Ljava/util/BitSet;)Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, p1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/r2;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/r2;->y(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/List;)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/x5;->f:Ljava/util/Map;

    if-nez v3, :cond_6

    move-object v4, v1

    goto :goto_1

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/measurement/b2;->n()Lcom/google/android/gms/internal/measurement/a2;

    move-result-object v8

    iget-boolean v9, v8, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, v8, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_8
    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v9, v6}, Lcom/google/android/gms/internal/measurement/b2;->p(Lcom/google/android/gms/internal/measurement/b2;I)V

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-boolean v9, v8, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, v8, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_9
    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v9, v6, v7}, Lcom/google/android/gms/internal/measurement/b2;->q(Lcom/google/android/gms/internal/measurement/b2;J)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    :goto_1
    if-eqz v4, :cond_c

    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, p1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_b
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/r2;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/r2;->C(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/ArrayList;)V

    :cond_c
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x5;->g:Ll/b;

    if-nez p0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    iget v4, p0, Ll/j;->c:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ll/b;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ll/g;

    invoke-virtual {v4}, Ll/g;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t2;->o()Lcom/google/android/gms/internal/measurement/s2;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v8, v6, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, v6, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_e
    iget-object v8, v6, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v8, Lcom/google/android/gms/internal/measurement/t2;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/t2;->r(Lcom/google/android/gms/internal/measurement/t2;I)V

    invoke-virtual {p0, v5, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_10

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-boolean v7, v6, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v7, :cond_f

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, v6, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_f
    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/t2;

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/measurement/t2;->s(Lcom/google/android/gms/internal/measurement/t2;Ljava/util/List;)V

    :cond_10
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_11
    move-object p0, v3

    :goto_3
    iget-boolean v1, p1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, p1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_12
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v1, Lcom/google/android/gms/internal/measurement/r2;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/r2;->F(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/List;)V

    iget-boolean p0, v0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz p0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_13
    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/z1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/r2;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/z1;->r(Lcom/google/android/gms/internal/measurement/z1;Lcom/google/android/gms/internal/measurement/r2;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/z1;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/y5;)V
    .locals 10

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/y5;->d()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/z5;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/x5;->e:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/z5;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/x5;->d:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/z5;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/x5;->f:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/z5;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v6, v2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/z5;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/x5;->g:Ll/b;

    invoke-virtual {v4, v0, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/y5;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u6;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x5;->h:Lcom/google/android/gms/measurement/internal/b;

    iget-object v4, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->W:Lcom/google/android/gms/measurement/internal/n2;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x5;->a:Ljava/lang/String;

    invoke-virtual {v4, p0, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/y5;->e()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u6;->a()V

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0, p0, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/z5;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    div-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/z5;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    div-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method
