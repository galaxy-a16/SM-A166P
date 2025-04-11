.class public final Lcom/google/android/gms/measurement/internal/j5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public final c:Lcom/google/android/gms/measurement/internal/i5;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/k5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/k5;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->d:Lcom/google/android/gms/measurement/internal/k5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/i5;

    iget-object v1, p1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/i5;-><init>(Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/t3;I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->c:Lcom/google/android/gms/measurement/internal/i5;

    iget-object p1, p1, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->b:J

    return-void
.end method


# virtual methods
.method public final a(JZZ)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->d:Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    sget-object v1, Lcom/google/android/gms/internal/measurement/a7;->b:Lcom/google/android/gms/internal/measurement/a7;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/a7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/b7;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/measurement/internal/o2;->d0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i3;->n:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->a:J

    sub-long v1, p1, v1

    if-nez p3, :cond_3

    const-wide/16 v3, 0x3e8

    cmp-long p3, v1, v3

    if-ltz p3, :cond_2

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string p2, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    if-nez p4, :cond_4

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->b:J

    sub-long v1, p1, v1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->b:J

    :cond_4
    move-object p3, v0

    check-cast p3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Recording user engagement, ms"

    invoke-virtual {p3, v3, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    invoke-virtual {p3, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result v1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/u4;->q(Z)Lcom/google/android/gms/measurement/internal/r4;

    move-result-object v1

    invoke-static {v1, p3, v3}, Lcom/google/android/gms/measurement/internal/u5;->x(Lcom/google/android/gms/measurement/internal/r4;Landroid/os/Bundle;Z)V

    if-nez p4, :cond_5

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p4, v0, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    const-string v0, "auto"

    const-string v1, "_e"

    invoke-virtual {p4, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/n4;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->a:J

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j5;->c:Lcom/google/android/gms/measurement/internal/i5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->a()V

    const-wide/32 p1, 0x36ee80

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/j;->c(J)V

    return v3
.end method
