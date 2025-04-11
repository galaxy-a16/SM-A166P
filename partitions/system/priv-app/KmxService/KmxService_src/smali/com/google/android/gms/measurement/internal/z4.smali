.class public final Lcom/google/android/gms/measurement/internal/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/q2;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/b5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/b5;Lcom/google/android/gms/measurement/internal/q2;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/measurement/internal/z4;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/z4;->b:Lcom/google/android/gms/measurement/internal/q2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/measurement/internal/z4;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    iput-boolean v1, v2, Lcom/google/android/gms/measurement/internal/b5;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->q()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z4;->b:Lcom/google/android/gms/measurement/internal/q2;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object p0, v1, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->v()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->u()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    iput-boolean v1, v2, Lcom/google/android/gms/measurement/internal/b5;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z4;->b:Lcom/google/android/gms/measurement/internal/q2;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object p0, v1, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->v()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->u()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
