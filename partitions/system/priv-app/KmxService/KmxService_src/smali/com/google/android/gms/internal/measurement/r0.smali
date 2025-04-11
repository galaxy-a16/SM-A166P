.class public final Lcom/google/android/gms/internal/measurement/r0;
.super Lcom/google/android/gms/internal/measurement/x0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/b1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/measurement/r0;->e:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/r0;->f:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/r0;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r0;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/x0;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/g0;->endAdUnitExposure(Ljava/lang/String;J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r0;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/x0;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/g0;->beginAdUnitExposure(Ljava/lang/String;J)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r0;->f:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/x0;->a:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/g0;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
