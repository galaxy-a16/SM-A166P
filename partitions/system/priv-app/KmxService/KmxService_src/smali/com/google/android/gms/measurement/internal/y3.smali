.class public final Lcom/google/android/gms/measurement/internal/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V
    .locals 0

    iput p7, p0, Lcom/google/android/gms/measurement/internal/y3;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y3;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/y3;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/y3;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/y3;->e:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/y3;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/y3;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/y3;->a:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y3;->f:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y3;->c:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/y3;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/measurement/internal/n4;

    check-cast v5, Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/y3;->d:J

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/n4;->A(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/r4;

    check-cast v3, Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/y3;->d:J

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/r4;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    check-cast v2, Lcom/google/android/gms/measurement/internal/z3;

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/measurement/internal/q5;->q(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r4;)V

    return-void

    :goto_1
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/measurement/internal/u4;

    check-cast v5, Landroid/os/Bundle;

    move-object v6, v4

    check-cast v6, Lcom/google/android/gms/measurement/internal/r4;

    move-object v7, v3

    check-cast v7, Lcom/google/android/gms/measurement/internal/r4;

    iget-wide v8, p0, Lcom/google/android/gms/measurement/internal/y3;->d:J

    const-string p0, "screen_name"

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "screen_class"

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v10, 0x1

    iget-object p0, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "screen_view"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v5, v0, v3}, Lcom/google/android/gms/measurement/internal/u5;->p0(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v11

    move-object v5, v1

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/u4;->o(Lcom/google/android/gms/measurement/internal/r4;Lcom/google/android/gms/measurement/internal/r4;JZLandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
