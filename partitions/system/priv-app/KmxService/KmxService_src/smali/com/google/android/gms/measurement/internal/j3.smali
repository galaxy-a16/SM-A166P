.class public final Lcom/google/android/gms/measurement/internal/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/measurement/internal/j3;->a:I

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/j3;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/j3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget p1, p0, Lcom/google/android/gms/measurement/internal/j3;->a:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j3;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p2, :cond_2

    :try_start_0
    sget p1, Lcom/google/android/gms/internal/measurement/z;->c:I

    const-string p1, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/a0;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/measurement/a0;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/y;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/y;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-nez p1, :cond_1

    move-object p0, v0

    check-cast p0, Lcom/google/android/gms/measurement/internal/k3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string p1, "Install Referrer Service implementation was not found"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p2, v0

    check-cast p2, Lcom/google/android/gms/measurement/internal/k3;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Install Referrer Service connected"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    move-object p2, v0

    check-cast p2, Lcom/google/android/gms/measurement/internal/k3;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v1, La0/a;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, p0, v2}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/k3;

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p2, "Exception occurred while calling Install Referrer API"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/google/android/gms/measurement/internal/k3;

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p1, "Install Referrer connection returned with null binder"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_1
    return-void

    :goto_2
    const/4 p1, 0x1

    :try_start_1
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/internal/a;

    sget v2, Lbb/b;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "com.sec.android.diagmonagent.sa.IDMAInterface"

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :try_start_2
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v4, v3, Lbb/c;

    if-eqz v4, :cond_4

    move-object p2, v3

    check-cast p2, Lbb/c;

    goto :goto_3

    :cond_4
    new-instance v3, Lbb/a;

    invoke-direct {v3, p2}, Lbb/a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v3

    :goto_3
    iput-object p2, v1, Lcom/google/android/material/internal/a;->d:Ljava/lang/Object;

    move-object p2, v0

    check-cast p2, Lcom/google/android/material/internal/a;

    iget-object p2, p2, Lcom/google/android/material/internal/a;->d:Ljava/lang/Object;

    check-cast p2, Lbb/c;

    check-cast p2, Lbb/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p2, p2, Lbb/a;->c:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {p2, p1, v1, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v1, "DMABinder"

    if-nez p2, :cond_5

    :try_start_5
    move-object p0, v0

    check-cast p0, Lcom/google/android/material/internal/a;

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->f()V

    move-object p0, v0

    check-cast p0, Lcom/google/android/material/internal/a;

    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->a:Z

    const-string p0, "Token failed"

    goto :goto_4

    :cond_5
    move-object v3, v0

    check-cast v3, Lcom/google/android/material/internal/a;

    iput-boolean v2, v3, Lcom/google/android/material/internal/a;->a:Z

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j3;->b:Ljava/lang/Object;

    check-cast p0, Lt9/a;

    invoke-interface {p0, p2}, Lt9/a;->onResult(Ljava/lang/Object;)V

    const-string p0, "DMA connected"

    :goto_4
    invoke-static {v1, p0}, Lv4/b;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    check-cast v0, Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->f()V

    iput-boolean p1, v0, Lcom/google/android/material/internal/a;->a:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "failed to connect binder"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->P(Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/measurement/internal/j3;->a:I

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j3;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/measurement/internal/k3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p1, "Install Referrer Service disconnected"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    return-void

    :goto_0
    check-cast p0, Lcom/google/android/material/internal/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/internal/a;->d:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
