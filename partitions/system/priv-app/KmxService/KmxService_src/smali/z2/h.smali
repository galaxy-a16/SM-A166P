.class public final synthetic Lz2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lc3/j0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz2/h;->a:I

    .line 1
    iput-object p1, p0, Lz2/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, Lz2/h;->a:I

    iput-object p1, p0, Lz2/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p0, Lz2/h;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string v0, "Timeout waiting for ServiceConnection callback "

    iget v5, p1, Landroid/os/Message;->what:I

    if-eqz v5, :cond_4

    if-eq v5, v1, :cond_0

    move v1, v4

    goto/16 :goto_1

    :cond_0
    iget-object v4, p0, Lz2/h;->b:Ljava/lang/Object;

    check-cast v4, Lc3/j0;

    iget-object v5, v4, Lc3/j0;->a:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc3/h0;

    iget-object p0, p0, Lz2/h;->b:Ljava/lang/Object;

    check-cast p0, Lc3/j0;

    iget-object p0, p0, Lc3/j0;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc3/i0;

    if-eqz p0, :cond_3

    iget v4, p0, Lc3/i0;->b:I

    if-ne v4, v2, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    const-string v6, "GmsClientSupervisor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lc3/i0;->f:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    if-nez v3, :cond_2

    new-instance v3, Landroid/content/ComponentName;

    iget-object p1, p1, Lc3/h0;->b:Ljava/lang/String;

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    const-string v0, "unknown"

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v3}, Lc3/i0;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_3
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    iget-object v0, p0, Lz2/h;->b:Ljava/lang/Object;

    check-cast v0, Lc3/j0;

    iget-object v0, v0, Lc3/j0;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc3/h0;

    iget-object v2, p0, Lz2/h;->b:Ljava/lang/Object;

    check-cast v2, Lc3/j0;

    iget-object v2, v2, Lc3/j0;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc3/i0;

    if-eqz v2, :cond_6

    iget-object v3, v2, Lc3/i0;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, v2, Lc3/i0;->c:Z

    if-eqz v3, :cond_5

    iget-object v3, v2, Lc3/i0;->g:Lc3/j0;

    iget-object v3, v3, Lc3/j0;->c:Ll3/c;

    iget-object v5, v2, Lc3/i0;->e:Lc3/h0;

    invoke-virtual {v3, v1, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v3, v2, Lc3/i0;->g:Lc3/j0;

    iget-object v5, v3, Lc3/j0;->d:Lf3/a;

    iget-object v3, v3, Lc3/j0;->b:Landroid/content/Context;

    invoke-virtual {v5, v3, v2}, Lf3/a;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iput-boolean v4, v2, Lc3/i0;->c:Z

    const/4 v3, 0x2

    iput v3, v2, Lc3/i0;->b:I

    :cond_5
    iget-object p0, p0, Lz2/h;->b:Ljava/lang/Object;

    check-cast p0, Lc3/j0;

    iget-object p0, p0, Lc3/j0;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0

    :goto_1
    return v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_1
    const-string v0, "Received response for unknown request: "

    const-string v5, "MessengerIpcClient"

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Received response to request: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MessengerIpcClient"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p0, p0, Lz2/h;->b:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lz2/i;

    monitor-enter v2

    :try_start_2
    iget-object p0, v2, Lz2/i;->e:Landroid/util/SparseArray;

    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz2/k;

    if-nez p0, :cond_8

    const-string p0, "MessengerIpcClient"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_3

    :cond_8
    iget-object v0, v2, Lz2/i;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v2}, Lz2/i;->c()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "unsupported"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_9

    const-string p1, "Not supported by GmsCore"

    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzs;

    invoke-direct {v0, v2, p1, v3}, Lcom/google/android/gms/cloudmessaging/zzs;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lz2/k;->a(Lcom/google/android/gms/cloudmessaging/zzs;)V

    goto :goto_3

    :cond_9
    check-cast p0, Lz2/j;

    iget v0, p0, Lz2/j;->e:I

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    const-string v0, "ack"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, v3}, Lz2/k;->b(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_a
    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzs;

    const-string v0, "Invalid response to one way request"

    invoke-direct {p1, v2, v0, v3}, Lcom/google/android/gms/cloudmessaging/zzs;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lz2/k;->a(Lcom/google/android/gms/cloudmessaging/zzs;)V

    goto :goto_3

    :goto_2
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_b

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_b
    invoke-virtual {p0, p1}, Lz2/k;->b(Landroid/os/Bundle;)V

    :goto_3
    return v1

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_c

    return v4

    :cond_c
    iget-object p0, p0, Lz2/h;->b:Ljava/lang/Object;

    check-cast p0, Lp1/i;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    iget-object p1, p0, Lp1/i;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iget-object p0, p0, Lp1/i;->c:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
