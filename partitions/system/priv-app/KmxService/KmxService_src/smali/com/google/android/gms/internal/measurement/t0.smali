.class public final Lcom/google/android/gms/internal/measurement/t0;
.super Lcom/google/android/gms/internal/measurement/x0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z

.field public final synthetic i:Lcom/google/android/gms/internal/measurement/b1;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/t0;->e:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t0;->i:Lcom/google/android/gms/internal/measurement/b1;

    const-string v1, "fcm"

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/t0;->f:Ljava/lang/String;

    const-string v1, "_ln"

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/t0;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/t0;->j:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/t0;->h:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/c0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/t0;->e:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t0;->i:Lcom/google/android/gms/internal/measurement/b1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/t0;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/t0;->g:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/t0;->h:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/t0;->j:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/measurement/t0;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->i:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/t0;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/t0;->g:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/t0;->h:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t0;->j:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/c0;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/measurement/g0;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/i0;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->i:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/t0;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/t0;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->j:Ljava/lang/Object;

    new-instance v4, Li3/b;

    invoke-direct {v4, v0}, Li3/b;-><init>(Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/t0;->h:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/x0;->a:J

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/g0;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Li3/a;ZJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/t0;->e:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t0;->j:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/c0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/c0;->s(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
