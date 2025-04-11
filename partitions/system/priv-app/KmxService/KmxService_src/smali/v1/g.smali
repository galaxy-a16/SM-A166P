.class public final Lv1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JI)V
    .locals 0

    .line 1
    iput p5, p0, Lv1/g;->a:I

    iput-object p1, p0, Lv1/g;->d:Ljava/lang/Object;

    iput-object p2, p0, Lv1/g;->c:Ljava/lang/Object;

    iput-wide p3, p0, Lv1/g;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JII)V
    .locals 0

    .line 2
    iput p5, p0, Lv1/g;->a:I

    iput-object p1, p0, Lv1/g;->c:Ljava/lang/Object;

    iput-object p2, p0, Lv1/g;->d:Ljava/lang/Object;

    iput-wide p3, p0, Lv1/g;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lv1/g;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lv1/g;->d:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/internal/schedulers/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lv1/g;->d:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/internal/schedulers/s;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Leb/r;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lv1/g;->b:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long/2addr v2, v0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {p0}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lv1/g;->d:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/internal/schedulers/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lv1/g;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lv1/g;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/u4;

    iget-object v2, p0, Lv1/g;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/r4;

    iget-wide v3, p0, Lv1/g;->b:J

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/u4;->p(Lcom/google/android/gms/measurement/internal/r4;ZJ)V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/google/android/gms/measurement/internal/u4;->e:Lcom/google/android/gms/measurement/internal/r4;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    new-instance v1, Landroidx/appcompat/widget/k;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v0, p0}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lv1/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v2, p0, Lv1/g;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r2;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lv1/g;->b:J

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/n4;->w(Landroid/os/Bundle;IJ)V

    goto :goto_2

    :cond_1
    iget-object p0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Using developer consent only; google app id found"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, p0, Lv1/g;->d:Ljava/lang/Object;

    check-cast v0, Lv1/h;

    iget-object v1, v0, Lv1/h;->a:Lv1/l;

    iget-object v2, p0, Lv1/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-wide v3, p0, Lv1/g;->b:J

    invoke-virtual {v1, v3, v4, v2}, Lv1/l;->a(JLjava/lang/String;)V

    iget-object p0, v0, Lv1/h;->a:Lv1/l;

    invoke-virtual {v0}, Lv1/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv1/l;->b(Ljava/lang/String;)V

    return-void

    :goto_3
    iget-object v0, p0, Lv1/g;->d:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lv1/g;->d:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/q;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljb/q;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lv1/g;->b:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    sub-long/2addr v2, v0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {p0}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_2
    :goto_4
    iget-object v0, p0, Lv1/g;->d:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lv1/g;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
