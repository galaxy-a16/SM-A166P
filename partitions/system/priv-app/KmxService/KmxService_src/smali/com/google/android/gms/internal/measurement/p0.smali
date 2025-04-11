.class public final Lcom/google/android/gms/internal/measurement/p0;
.super Lcom/google/android/gms/internal/measurement/x0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/google/android/gms/internal/measurement/b1;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b1;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/p0;->e:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/p0;->h:Lcom/google/android/gms/internal/measurement/b1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/p0;->i:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/p0;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/p0;->g:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Lcom/google/android/gms/internal/measurement/p0;->e:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/p0;->h:Lcom/google/android/gms/internal/measurement/b1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/p0;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/p0;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/p0;->i:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/measurement/p0;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p0;->h:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/p0;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/p0;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/p0;->i:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/c0;

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/gms/internal/measurement/g0;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/i0;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p0;->h:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/p0;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/p0;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/p0;->i:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/gms/internal/measurement/g0;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p0;->h:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p0;->i:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Li3/b;

    invoke-direct {v2, v0}, Li3/b;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/p0;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/p0;->g:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/x0;->a:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/g0;->setCurrentScreen(Li3/a;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/p0;->e:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/p0;->i:Ljava/lang/Object;

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
