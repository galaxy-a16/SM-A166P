.class public final Lcom/google/android/gms/internal/measurement/y0;
.super Lcom/google/android/gms/internal/measurement/x0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/a1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/a1;Landroid/app/Activity;I)V
    .locals 2

    iput p3, p0, Lcom/google/android/gms/internal/measurement/y0;->e:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y0;->g:Lcom/google/android/gms/internal/measurement/a1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y0;->f:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/b1;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y0;->g:Lcom/google/android/gms/internal/measurement/a1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y0;->f:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/b1;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y0;->g:Lcom/google/android/gms/internal/measurement/a1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y0;->f:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/b1;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y0;->g:Lcom/google/android/gms/internal/measurement/a1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y0;->f:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/b1;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y0;->g:Lcom/google/android/gms/internal/measurement/a1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y0;->f:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/b1;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/measurement/y0;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y0;->g:Lcom/google/android/gms/internal/measurement/a1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y0;->f:Landroid/app/Activity;

    new-instance v2, Li3/b;

    invoke-direct {v2, v1}, Li3/b;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/x0;->b:J

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivityStopped(Li3/a;J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y0;->g:Lcom/google/android/gms/internal/measurement/a1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y0;->f:Landroid/app/Activity;

    new-instance v2, Li3/b;

    invoke-direct {v2, v1}, Li3/b;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/x0;->b:J

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivityPaused(Li3/a;J)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y0;->g:Lcom/google/android/gms/internal/measurement/a1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y0;->f:Landroid/app/Activity;

    new-instance v2, Li3/b;

    invoke-direct {v2, v1}, Li3/b;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/x0;->b:J

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivityResumed(Li3/a;J)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y0;->g:Lcom/google/android/gms/internal/measurement/a1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y0;->f:Landroid/app/Activity;

    new-instance v2, Li3/b;

    invoke-direct {v2, v1}, Li3/b;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/x0;->b:J

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivityStarted(Li3/a;J)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y0;->g:Lcom/google/android/gms/internal/measurement/a1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y0;->f:Landroid/app/Activity;

    new-instance v2, Li3/b;

    invoke-direct {v2, v1}, Li3/b;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/x0;->b:J

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivityDestroyed(Li3/a;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
