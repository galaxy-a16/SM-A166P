.class public final Lcom/google/android/gms/measurement/internal/x4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/w5;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/c5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/w5;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/measurement/internal/x4;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x4;->c:Lcom/google/android/gms/measurement/internal/c5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/x4;->b:Lcom/google/android/gms/measurement/internal/w5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/measurement/internal/x4;->a:I

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x4;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x4;->b:Lcom/google/android/gms/measurement/internal/w5;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    iget-object v2, v1, Lb0/h;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Failed to send measurementEnabled to service"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lcom/google/android/gms/measurement/internal/q2;->g(Lcom/google/android/gms/measurement/internal/w5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Failed to send measurementEnabled to the service"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    iget-object v2, v1, Lb0/h;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Discarding data. Failed to send app launch"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lcom/google/android/gms/measurement/internal/q2;->x(Lcom/google/android/gms/measurement/internal/w5;)V

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/t3;->q()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s2;->q()V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, p0}, Lcom/google/android/gms/measurement/internal/c5;->o(Lcom/google/android/gms/measurement/internal/q2;Ld3/a;Lcom/google/android/gms/measurement/internal/w5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Failed to send app launch to the service"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    iget-object v2, v1, Lb0/h;->a:Ljava/lang/Object;

    if-nez v0, :cond_2

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Failed to reset data on the service: not connected to service"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lcom/google/android/gms/measurement/internal/q2;->p(Lcom/google/android/gms/measurement/internal/w5;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Failed to reset data on the service: remote exception"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->v()V

    :goto_3
    return-void

    :goto_4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    iget-object v2, v1, Lb0/h;->a:Ljava/lang/Object;

    if-nez v0, :cond_3

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Failed to send consent settings to service"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    :try_start_3
    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lcom/google/android/gms/measurement/internal/q2;->k(Lcom/google/android/gms/measurement/internal/w5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Failed to send consent settings to the service"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
