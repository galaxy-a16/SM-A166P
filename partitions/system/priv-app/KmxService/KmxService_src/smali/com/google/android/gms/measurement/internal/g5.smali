.class public final Lcom/google/android/gms/measurement/internal/g5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/k5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/k5;JI)V
    .locals 0

    iput p4, p0, Lcom/google/android/gms/measurement/internal/g5;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g5;->c:Lcom/google/android/gms/measurement/internal/k5;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/g5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/google/android/gms/measurement/internal/g5;->a:I

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g5;->c:Lcom/google/android/gms/measurement/internal/k5;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k5;->o()V

    iget-object v0, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/g5;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Activity resumed, time"

    invoke-virtual {v2, p0, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/i3;->q:Lcom/google/android/gms/measurement/internal/e3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e3;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/k5;->e:Lcom/google/android/gms/measurement/internal/j5;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->d:Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->c:Lcom/google/android/gms/measurement/internal/i5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->a()V

    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/j5;->a:J

    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/j5;->b:J

    :cond_1
    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/k5;->f:Lcom/google/android/gms/internal/measurement/h3;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/h5;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/k5;->c:Ll3/c;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/i3;->q:Lcom/google/android/gms/measurement/internal/e3;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/e3;->a(Z)V

    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/k5;->d:Lf9/b;

    iget-object v1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Lf9/b;->n(JZ)V

    :goto_0
    return-void

    :goto_1
    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/g5;->b:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k5;->o()V

    iget-object p0, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Activity paused, time"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/h5;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/k5;->f:Lcom/google/android/gms/internal/measurement/h3;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v3, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v3, v0

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/h5;-><init>(Lcom/google/android/gms/internal/measurement/h3;JJ)V

    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/k5;->c:Ll3/c;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/k5;->e:Lcom/google/android/gms/measurement/internal/j5;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j5;->c:Lcom/google/android/gms/measurement/internal/i5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->a()V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
