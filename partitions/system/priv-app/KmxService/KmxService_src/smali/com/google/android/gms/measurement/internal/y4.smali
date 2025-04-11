.class public final Lcom/google/android/gms/measurement/internal/y4;
.super Lcom/google/android/gms/measurement/internal/j;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/c5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/b4;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/measurement/internal/y4;->e:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y4;->f:Lcom/google/android/gms/measurement/internal/c5;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/j;-><init>(Lcom/google/android/gms/measurement/internal/b4;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/y4;->e:I

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/y4;->f:Lcom/google/android/gms/measurement/internal/c5;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Inactivity, disconnecting from the service"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->A()V

    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Tasks have been queued for a long time"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
