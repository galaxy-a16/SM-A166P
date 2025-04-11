.class public final Lcom/google/android/gms/measurement/internal/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/w5;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/z3;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/z3;Lcom/google/android/gms/measurement/internal/w5;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/measurement/internal/v3;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v3;->c:Lcom/google/android/gms/measurement/internal/z3;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/v3;->b:Lcom/google/android/gms/measurement/internal/w5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/measurement/internal/v3;->a:I

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/v3;->b:Lcom/google/android/gms/measurement/internal/w5;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/v3;->c:Lcom/google/android/gms/measurement/internal/z3;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/w5;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    const-string v5, "Setting consent, package, consent"

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v4, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/q5;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/f;->a:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/android/gms/measurement/internal/zzah;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/f;->g(Lcom/google/android/gms/measurement/internal/f;[Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/q5;->p(Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/q5;->p(Lcom/google/android/gms/measurement/internal/w5;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/q5;->m(Lcom/google/android/gms/measurement/internal/w5;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
