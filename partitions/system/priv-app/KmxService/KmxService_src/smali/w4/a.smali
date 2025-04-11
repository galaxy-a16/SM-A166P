.class public final Lw4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/o4;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/b1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b1;)V
    .locals 0

    iput-object p1, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/c0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/c0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/s0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/measurement/s0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Lcom/google/android/gms/internal/measurement/c0;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/c0;->d(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/r0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/r0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/c0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/c0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/s0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/measurement/s0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Lcom/google/android/gms/internal/measurement/c0;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/c0;->d(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/gms/internal/measurement/p0;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/p0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/gms/internal/measurement/c0;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/c0;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/measurement/p0;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/p0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v6, p0, p1}, Lcom/google/android/gms/internal/measurement/c0;->c(J)Landroid/os/Bundle;

    move-result-object p0

    const-class p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/c0;->z(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/gms/internal/measurement/c0;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/c0;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/measurement/t0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/t0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/c0;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v6, p0, p1}, Lcom/google/android/gms/internal/measurement/c0;->c(J)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_2
    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/r0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/r0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/c0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/c0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/u0;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/u0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/c0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/c0;->c(J)Landroid/os/Bundle;

    move-result-object p0

    const-class p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/c0;->z(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/16 p0, 0x19

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/c0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/c0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/s0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/measurement/s0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Lcom/google/android/gms/internal/measurement/c0;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/c0;->d(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 2

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/r0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/r0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/w0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/w0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void
.end method

.method public final l()J
    .locals 5

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/c0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/c0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/s0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/measurement/s0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Lcom/google/android/gms/internal/measurement/c0;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/c0;->c(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/c0;->z(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/b1;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/b1;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lw4/a;->a:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/c0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/c0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/s0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/measurement/s0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Lcom/google/android/gms/internal/measurement/c0;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/c0;->d(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
