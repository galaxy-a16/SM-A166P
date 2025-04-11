.class public final Lcom/google/android/gms/measurement/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/n1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/n1;Ljava/lang/String;JI)V
    .locals 0

    iput p5, p0, Lcom/google/android/gms/measurement/internal/a;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a;->d:Lcom/google/android/gms/measurement/internal/n1;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:I

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->c:J

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/a;->d:Lcom/google/android/gms/measurement/internal/n1;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-static {v4}, Lva/n;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/n1;->c:Ll/b;

    invoke-virtual {v0}, Ll/j;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/n1;->d:J

    :cond_0
    invoke-virtual {v0, v4, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget v1, v0, Ll/j;->c:I

    const/16 v6, 0x64

    if-lt v1, v6, :cond_2

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Too many ads visible"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/n1;->b:Ll/b;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-static {v4}, Lva/n;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/n1;->c:Ll/b;

    invoke-virtual {v0, v4, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    if-eqz v5, :cond_6

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/u4;->q(Z)Lcom/google/android/gms/measurement/internal/r4;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_5

    invoke-virtual {v0, v4}, Ll/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/n1;->b:Ll/b;

    invoke-virtual {v5, v4, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    if-nez v1, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "First ad unit exposure time was never set"

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v4}, Ll/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sub-long v8, v2, v8

    invoke-virtual {p0, v4, v8, v9, v7}, Lcom/google/android/gms/measurement/internal/n1;->p(Ljava/lang/String;JLcom/google/android/gms/measurement/internal/r4;)V

    :goto_2
    invoke-virtual {v0}, Ll/j;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/n1;->d:J

    const-wide/16 v4, 0x0

    cmp-long v8, v0, v4

    if-nez v8, :cond_4

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p0, "First ad exposure time was never set"

    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3, v7}, Lcom/google/android/gms/measurement/internal/n1;->o(JLcom/google/android/gms/measurement/internal/r4;)V

    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/n1;->d:J

    goto :goto_3

    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object p0, v6, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Call to endAdUnitExposure for unknown ad unit id"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
