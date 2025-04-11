.class public final Lcom/google/android/gms/measurement/internal/d4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/t3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d4;->a:Lcom/google/android/gms/measurement/internal/t3;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d4;->a:Lcom/google/android/gms/measurement/internal/t3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/d4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    const-string p1, "auto"

    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/i3;->w:Lv1/j;

    invoke-virtual {v0, p1}, Lv1/j;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/i3;->x:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    :cond_3
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/d4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Z
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/d4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/i3;->x:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d4;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/d4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->x:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/4 v0, 0x0

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->R:Lcom/google/android/gms/measurement/internal/n2;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/measurement/internal/e;->p(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
