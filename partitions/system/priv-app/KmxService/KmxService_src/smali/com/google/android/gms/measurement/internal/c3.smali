.class public final Lcom/google/android/gms/measurement/internal/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/measurement/internal/c3;->a:I

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/c3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/measurement/internal/c3;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/d3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/d3;->a:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->D()V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v4

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/c3;->b:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/c3;->b:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/c3;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "Default data collection state already set to"

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eq v1, v3, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/c3;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n4;->C()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
