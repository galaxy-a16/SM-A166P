.class public final Lcom/google/android/gms/internal/measurement/u0;
.super Lcom/google/android/gms/internal/measurement/x0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/a1;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/c0;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/u0;->e:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u0;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u0;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/u0;->h:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/b1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/a1;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/u0;->e:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u0;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u0;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/u0;->h:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/b1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/u0;->e:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u0;->g:Ljava/lang/Object;

    const-string v1, "Error with data collection. Data lost."

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/u0;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u0;->h:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/c0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/u0;->e:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u0;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u0;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/u0;->h:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/measurement/u0;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "com.google.app_measurement.screen_service"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/a1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/u0;->h:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Li3/b;

    invoke-direct {v3, v2}, Li3/b;-><init>(Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/x0;->b:J

    invoke-interface {v0, v3, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/g0;->onActivityCreated(Li3/a;Landroid/os/Bundle;J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u0;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/u0;->h:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/c0;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/g0;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/i0;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->f:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/u0;->h:Ljava/lang/Object;

    new-instance v5, Li3/b;

    invoke-direct {v5, p0}, Li3/b;-><init>(Ljava/lang/Object;)V

    new-instance v6, Li3/b;

    invoke-direct {v6, v1}, Li3/b;-><init>(Ljava/lang/Object;)V

    new-instance v7, Li3/b;

    invoke-direct {v7, v1}, Li3/b;-><init>(Ljava/lang/Object;)V

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/g0;->logHealthData(ILjava/lang/String;Li3/a;Li3/a;Li3/a;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/a1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u0;->f:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Li3/b;

    invoke-direct {v2, v1}, Li3/b;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u0;->h:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/c0;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/x0;->b:J

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivitySaveInstanceState(Li3/a;Lcom/google/android/gms/internal/measurement/i0;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/u0;->e:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/u0;->h:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/c0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/c0;->s(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
