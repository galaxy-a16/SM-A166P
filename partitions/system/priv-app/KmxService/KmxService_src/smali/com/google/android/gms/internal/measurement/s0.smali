.class public final Lcom/google/android/gms/internal/measurement/s0;
.super Lcom/google/android/gms/internal/measurement/x0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/gms/internal/measurement/c0;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/b1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/b1;Lcom/google/android/gms/internal/measurement/c0;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/measurement/s0;->e:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/s0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/s0;->f:Lcom/google/android/gms/internal/measurement/c0;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/s0;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/s0;->f:Lcom/google/android/gms/internal/measurement/c0;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/g0;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/i0;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/s0;->f:Lcom/google/android/gms/internal/measurement/c0;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/g0;->generateEventId(Lcom/google/android/gms/internal/measurement/i0;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/s0;->f:Lcom/google/android/gms/internal/measurement/c0;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/g0;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/i0;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/s0;->f:Lcom/google/android/gms/internal/measurement/c0;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/g0;->getGmpAppId(Lcom/google/android/gms/internal/measurement/i0;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/s0;->f:Lcom/google/android/gms/internal/measurement/c0;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/g0;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/i0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/s0;->e:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/s0;->f:Lcom/google/android/gms/internal/measurement/c0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c0;->s(Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c0;->s(Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c0;->s(Landroid/os/Bundle;)V

    return-void

    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c0;->s(Landroid/os/Bundle;)V

    return-void

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c0;->s(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
