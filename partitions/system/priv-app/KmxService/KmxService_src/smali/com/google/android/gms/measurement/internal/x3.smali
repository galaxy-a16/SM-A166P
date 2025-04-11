.class public final Lcom/google/android/gms/measurement/internal/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/measurement/internal/x3;->a:I

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/x3;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/x3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/measurement/internal/x3;->a:I

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x3;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/measurement/internal/z3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/i;->O(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p0, Lcom/google/android/gms/measurement/internal/q5;

    check-cast v1, Lcom/google/android/gms/measurement/internal/w5;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/w5;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c4;->E()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p0

    const-string v0, "Analytics storage consent denied. Returning null app instance id"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
