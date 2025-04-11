.class public final Lcom/google/android/gms/measurement/internal/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/b4;


# static fields
.field public static volatile K:Lcom/google/android/gms/measurement/internal/q5;


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:Ljava/util/ArrayList;

.field public C:J

.field public final E:Ljava/util/HashMap;

.field public final F:Ljava/util/HashMap;

.field public G:Lcom/google/android/gms/measurement/internal/r4;

.field public H:Ljava/lang/String;

.field public final I:Lp5/c;

.field public final a:Lcom/google/android/gms/measurement/internal/o3;

.field public final b:Lcom/google/android/gms/measurement/internal/b3;

.field public c:Lcom/google/android/gms/measurement/internal/i;

.field public d:Lcom/google/android/gms/measurement/internal/d3;

.field public e:Lcom/google/android/gms/measurement/internal/l5;

.field public f:Lcom/google/android/gms/measurement/internal/b;

.field public final g:Lcom/google/android/gms/measurement/internal/b3;

.field public h:Lcom/google/android/gms/measurement/internal/b3;

.field public i:Lcom/google/android/gms/measurement/internal/e5;

.field public final j:Lcom/google/android/gms/measurement/internal/o5;

.field public k:Lcom/google/android/gms/measurement/internal/k3;

.field public final l:Lcom/google/android/gms/measurement/internal/t3;

.field public m:Z

.field public n:Z

.field public p:J

.field public q:Ljava/util/ArrayList;

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Ljava/nio/channels/FileLock;

.field public z:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/p;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/q5;->m:Z

    new-instance v1, Lp5/c;

    const/16 v2, 0x15

    invoke-direct {v1, p0, v2}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->I:Lp5/c;

    iget-object v1, p1, Landroidx/emoji2/text/p;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/measurement/internal/t3;->s(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/t3;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/q5;->C:J

    new-instance v1, Lcom/google/android/gms/measurement/internal/o5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/o5;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->j:Lcom/google/android/gms/measurement/internal/o5;

    new-instance v1, Lcom/google/android/gms/measurement/internal/b3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/b3;-><init>(Lcom/google/android/gms/measurement/internal/q5;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n5;->m()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    new-instance v1, Lcom/google/android/gms/measurement/internal/b3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/b3;-><init>(Lcom/google/android/gms/measurement/internal/q5;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n5;->m()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->b:Lcom/google/android/gms/measurement/internal/b3;

    new-instance v0, Lcom/google/android/gms/measurement/internal/o3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/o3;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->m()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->E:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->F:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/k;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0, p1}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final H(Lcom/google/android/gms/measurement/internal/w5;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/w5;->t:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final I(Lcom/google/android/gms/measurement/internal/n5;)V
    .locals 2

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/n5;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static O(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/q5;
    .locals 2

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/q5;->K:Lcom/google/android/gms/measurement/internal/q5;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/measurement/internal/q5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/q5;->K:Lcom/google/android/gms/measurement/internal/q5;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/emoji2/text/p;

    invoke-direct {v1, p0}, Landroidx/emoji2/text/p;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/q5;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/q5;-><init>(Landroidx/emoji2/text/p;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/q5;->K:Lcom/google/android/gms/measurement/internal/q5;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/q5;->K:Lcom/google/android/gms/measurement/internal/q5;

    return-object p0
.end method

.method public static final x(Lcom/google/android/gms/internal/measurement/c2;ILjava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/c2;->o()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "_err"

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/g2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/g2;->h(Ljava/lang/String;)V

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/g2;->g(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/h2;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/g2;

    move-result-object v0

    const-string v2, "_ev"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/g2;->h(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/g2;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/h2;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/d2;->v(Lcom/google/android/gms/internal/measurement/d2;Lcom/google/android/gms/internal/measurement/h2;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/d2;->v(Lcom/google/android/gms/internal/measurement/d2;Lcom/google/android/gms/internal/measurement/h2;)V

    return-void
.end method

.method public static final y(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/c2;->o()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c2;->j(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/measurement/internal/c4;)Ljava/lang/Boolean;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->z()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {p0}, Lh3/b;->a(Landroid/content/Context;)Ld/s0;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ld/s0;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->z()J

    move-result-wide v0

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {p0}, Lh3/b;->a(Landroid/content/Context;)Ld/s0;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ld/s0;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->F()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final B()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/q5;->v:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/q5;->w:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/q5;->x:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->q:Ljava/util/ArrayList;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/q5;->v:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/q5;->w:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/q5;->x:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final C(Lcom/google/android/gms/internal/measurement/l2;JZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    const-string v4, "_lte"

    goto :goto_0

    :cond_0
    const-string v4, "_se"

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/l2;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/i;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s5;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v12, Lcom/google/android/gms/measurement/internal/s5;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/l2;->l()Ljava/lang/String;

    move-result-object v6

    const-string v7, "auto"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v8

    check-cast v8, Lc3/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long v13, v13, p2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v5, v12

    move-object v8, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v12, Lcom/google/android/gms/measurement/internal/s5;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/l2;->l()Ljava/lang/String;

    move-result-object v6

    const-string v7, "auto"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v5

    check-cast v5, Lc3/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v5, v12

    move-object v8, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v2;->o()Lcom/google/android/gms/internal/measurement/u2;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/u2;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v6

    check-cast v6, Lc3/l;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/u2;->i(J)V

    iget-object v6, v12, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/u2;->g(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/v2;

    invoke-static {v1, v4}, Lcom/google/android/gms/measurement/internal/b3;->x(Lcom/google/android/gms/internal/measurement/l2;Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x0

    if-ltz v4, :cond_4

    iget-boolean v8, v1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v1, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/m2;->r0(Lcom/google/android/gms/internal/measurement/m2;ILcom/google/android/gms/internal/measurement/v2;)V

    goto :goto_3

    :cond_4
    iget-boolean v4, v1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_5
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v1, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/measurement/m2;->s0(Lcom/google/android/gms/internal/measurement/m2;Lcom/google/android/gms/internal/measurement/v2;)V

    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-lez v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/i;->v(Lcom/google/android/gms/measurement/internal/s5;)Z

    if-eq v3, v2, :cond_6

    const-string v1, "lifetime"

    goto :goto_4

    :cond_6
    const-string v1, "session-scoped"

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    const-string v2, "Updated engagement user property. scope, value"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v2, v1, v6}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final D()V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/q5;->p:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v2

    check-cast v2, Lc3/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/q5;->p:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v6, 0x36ee80

    sub-long/2addr v6, v2

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_0
    iput-wide v4, v0, Lcom/google/android/gms/measurement/internal/q5;->p:J

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->h()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->F()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_e

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v2

    check-cast v2, Lc3/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v6, Lcom/google/android/gms/measurement/internal/o2;->A:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v10, "select count(1) > 0 from raw_events where realtime = 1"

    invoke-virtual {v6, v10, v7}, Lcom/google/android/gms/measurement/internal/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v6, v10, v4

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v12, "select count(1) > 0 from queue where has_realtime = 1"

    invoke-virtual {v6, v12, v7}, Lcom/google/android/gms/measurement/internal/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v6, v12, v4

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v12

    const-string v13, "debug.firebase.analytics.app"

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, ".none."

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v12, Lcom/google/android/gms/measurement/internal/o2;->v:Lcom/google/android/gms/measurement/internal/n2;

    goto :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v12, Lcom/google/android/gms/measurement/internal/o2;->u:Lcom/google/android/gms/measurement/internal/n2;

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v12, Lcom/google/android/gms/measurement/internal/o2;->t:Lcom/google/android/gms/measurement/internal/n2;

    :goto_4
    invoke-virtual {v12, v7}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/e5;->g:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v14

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/e5;->h:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v16

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v11, "select max(bundle_end_timestamp) from queue"

    invoke-virtual {v10, v11, v7, v4, v5}, Lcom/google/android/gms/measurement/internal/i;->A(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v5, "select max(timestamp) from raw_events"

    move-wide/from16 v18, v12

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v5, v7, v12, v13}, Lcom/google/android/gms/measurement/internal/i;->A(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v10, v4, v12

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    if-nez v10, :cond_9

    goto/16 :goto_7

    :cond_9
    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v4, v2, v4

    sub-long/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long v16, v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    sub-long v14, v2, v14

    sub-long/2addr v2, v12

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v8, v4

    if-eqz v6, :cond_a

    const-wide/16 v12, 0x0

    cmp-long v6, v2, v12

    if-lez v6, :cond_a

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long v8, v8, v18

    :cond_a
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    move-wide/from16 v12, v18

    invoke-virtual {v11, v2, v3, v12, v13}, Lcom/google/android/gms/measurement/internal/b3;->L(JJ)Z

    move-result v6

    if-nez v6, :cond_b

    add-long/2addr v2, v12

    goto :goto_5

    :cond_b
    move-wide v2, v8

    :goto_5
    const-wide/16 v8, 0x0

    cmp-long v6, v14, v8

    if-eqz v6, :cond_d

    cmp-long v4, v14, v4

    if-ltz v4, :cond_d

    const/4 v4, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->C:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x14

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->B:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v4

    mul-long/2addr v5, v8

    add-long/2addr v2, v5

    cmp-long v5, v2, v14

    if-gtz v5, :cond_d

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    const-wide/16 v2, 0x0

    :cond_d
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1c

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/q5;->b:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/b3;->y()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/e5;->f:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v6, Lcom/google/android/gms/measurement/internal/o2;->s:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v11, v4, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/b3;->L(JJ)Z

    move-result v6

    if-nez v6, :cond_e

    add-long/2addr v4, v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->N()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d3;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v4

    check-cast v4, Lc3/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v2, Lcom/google/android/gms/measurement/internal/o2;->w:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/e5;->g:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v5

    check-cast v5, Lc3/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "Upload scheduled in approximately ms"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q5;->e:Lcom/google/android/gms/measurement/internal/l5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    iget-object v4, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/u5;->Y(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v8, "Receiver not registered/enabled"

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_10
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_11

    goto :goto_8

    :cond_11
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v5, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v6, v8, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    if-eqz v6, :cond_12

    iget-boolean v5, v6, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    goto :goto_9

    :catch_0
    :cond_12
    :goto_8
    const/4 v5, 0x0

    :goto_9
    if-nez v5, :cond_13

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v6, "Service not registered/enabled"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->o()V

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "Scheduling upload, millis"

    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->x:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-gez v5, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->r()Lcom/google/android/gms/measurement/internal/j;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/j;->c:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    goto :goto_a

    :cond_14
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->r()Lcom/google/android/gms/measurement/internal/j;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/measurement/internal/j;->c(J)V

    :cond_15
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v4, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->p()I

    move-result v0

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string v6, "action"

    const-string v7, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v6, v0, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v6, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    add-long/2addr v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b0;->a:Ljava/lang/reflect/Method;

    const-string v0, "jobscheduler"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/google/android/gms/internal/measurement/b0;->a:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_18

    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v4, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_c

    :cond_16
    sget-object v0, Lcom/google/android/gms/internal/measurement/b0;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    :try_start_1
    const-class v4, Landroid/os/UserHandle;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    const-string v4, "JobSchedulerCompat"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "myUserId invocation illegal"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v6, 0x0

    :goto_b
    const-string v0, "com.google.android.gms"

    const-string v4, "UploadAlarm"

    const/4 v5, 0x4

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const/4 v7, 0x1

    aput-object v0, v5, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v0, 0x3

    aput-object v4, v5, v0

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    const-string v3, "error calling scheduleAsPackage"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_c
    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_19
    :goto_d
    return-void

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    const-string v2, "No network"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->N()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/d3;->a:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/d3;->b:Z

    if-eqz v3, :cond_1b

    goto :goto_11

    :cond_1b
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/q5;->b:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b3;->y()Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/d3;->c:Z

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/d3;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/d3;->b:Z

    goto :goto_11

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    goto :goto_f

    :cond_1d
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    :goto_f
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->N()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d3;->a()V

    :goto_11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q5;->e:Lcom/google/android/gms/measurement/internal/l5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->o()V

    return-void
.end method

.method public final E(J)Z
    .locals 87

    move-object/from16 v1, p0

    const-string v2, "_npa"

    const-string v3, "1"

    const-string v4, "_ai"

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->Q()V

    :try_start_0
    new-instance v5, Lcom/google/android/gms/measurement/internal/h3;

    invoke-direct {v5, v1}, Lcom/google/android/gms/measurement/internal/h3;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/q5;->C:J

    move-wide/from16 v7, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/i;->w(JJLcom/google/android/gms/measurement/internal/h3;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/h3;->d:Ljava/io/Serializable;

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v6, :cond_d9

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_ad

    :cond_0
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/l2;

    iget-boolean v8, v6, Lcom/google/android/gms/internal/measurement/k4;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2f

    if-eqz v8, :cond_1

    :try_start_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v7, v6, Lcom/google/android/gms/internal/measurement/k4;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    move-object v2, v0

    goto/16 :goto_28

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v8, v6, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v8, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/m2;->o0(Lcom/google/android/gms/internal/measurement/m2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2d

    move v10, v7

    move v11, v10

    move v14, v11

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    :goto_2
    :try_start_3
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/h3;->d:Ljava/io/Serializable;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2f

    const-wide/16 v17, 0x3e8

    const-string v8, "_fr"

    const-string v7, "_et"

    move/from16 v24, v10

    const-string v10, "_e"

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    move/from16 v26, v11

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    move/from16 v27, v13

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    if-ge v14, v9, :cond_2b

    :try_start_4
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/h3;->d:Ljava/io/Serializable;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/c2;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    move/from16 v28, v14

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v29, v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v14, v12}, Lcom/google/android/gms/measurement/internal/o3;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    const-string v14, "_err"

    if-eqz v12, :cond_4

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v7

    const-string v8, "Dropping blocked raw event. appId"

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->r()Lcom/google/android/gms/measurement/internal/t2;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v10, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :try_start_6
    const-string v7, "measurement.upload.blacklist_internal"

    invoke-virtual {v11, v2, v7}, Lcom/google/android/gms/measurement/internal/o3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v2, :cond_3

    :try_start_7
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    const-string v7, "measurement.upload.blacklist_public"

    invoke-virtual {v11, v2, v7}, Lcom/google/android/gms/measurement/internal/o3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    :try_start_9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->I:Lp5/c;

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0xb

    const-string v33, "_ev"

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v30, v2

    invoke-static/range {v30 .. v35}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_19

    :cond_3
    :goto_3
    move-object/from16 v30, v3

    move-object/from16 v20, v4

    move-object v4, v6

    move/from16 v10, v24

    move/from16 v11, v26

    move/from16 v13, v27

    move/from16 v7, v28

    move-object/from16 v12, v29

    goto/16 :goto_18

    :catchall_2
    move-exception v0

    goto/16 :goto_19

    :cond_4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-object/from16 v30, v3

    :try_start_a
    sget-object v3, Lfc/c;->f:[Ljava/lang/String;

    move-object/from16 v31, v7

    sget-object v7, Lfc/c;->d:[Ljava/lang/String;

    invoke-static {v3, v4, v7}, Lv9/a;->i0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/c2;->k(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v3

    const-string v7, "Renaming ad_impression to _ai"

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x5

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_4
    :try_start_c
    iget-object v7, v9, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d2;->m()I

    move-result v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-ge v3, v7, :cond_6

    :try_start_d
    const-string v7, "ad_platform"

    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/c2;->m(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/c2;->m(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h2;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "admob"

    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/c2;->m(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/h2;->s()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/x2;->s()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v7

    const-string v12, "AdMob ad impression logged from app. Potentially duplicative."

    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_19

    :cond_6
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v3, v7}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const-string v7, "_c"

    if-nez v3, :cond_b

    :try_start_e
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-object/from16 v20, v4

    const v4, 0x171c4

    if-eq v12, v4, :cond_9

    const v4, 0x17331

    if-eq v12, v4, :cond_8

    const v4, 0x17333

    if-eq v12, v4, :cond_7

    goto :goto_5

    :cond_7
    const-string v4, "_ui"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const-string v4, "_ug"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x2

    goto :goto_6

    :cond_9
    const-string v4, "_in"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v4, -0x1

    :goto_6
    if-eqz v4, :cond_c

    const/4 v11, 0x1

    if-eq v4, v11, :cond_c

    const/4 v11, 0x2

    if-eq v4, v11, :cond_c

    move-object/from16 v32, v6

    move-object/from16 v33, v10

    move-object v6, v13

    move/from16 v21, v15

    move/from16 v10, v24

    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_b
    move-object/from16 v20, v4

    :cond_c
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_7
    move-object/from16 v32, v6

    :try_start_f
    iget-object v6, v9, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/d2;->m()I

    move-result v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move/from16 v21, v15

    const-string v15, "_r"

    if-ge v4, v6, :cond_f

    :try_start_10
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/c2;->m(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/c2;->m(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/g2;

    move-object/from16 v33, v10

    const-wide/16 v10, 0x1

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/measurement/g2;->g(J)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v9, v4, v6}, Lcom/google/android/gms/internal/measurement/c2;->l(ILcom/google/android/gms/internal/measurement/h2;)V

    move-object v10, v13

    const/4 v11, 0x1

    goto :goto_8

    :cond_d
    move-object/from16 v33, v10

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/c2;->m(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/c2;->m(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/g2;

    move-object v10, v13

    const-wide/16 v12, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/google/android/gms/internal/measurement/g2;->g(J)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v9, v4, v6}, Lcom/google/android/gms/internal/measurement/c2;->l(ILcom/google/android/gms/internal/measurement/h2;)V

    const/4 v12, 0x1

    goto :goto_8

    :cond_e
    move-object v10, v13

    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object v13, v10

    move/from16 v15, v21

    move-object/from16 v6, v32

    move-object/from16 v10, v33

    goto :goto_7

    :cond_f
    move-object/from16 v33, v10

    move-object v10, v13

    if-nez v11, :cond_10

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v6, "Marking event as conversion"

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->r()Lcom/google/android/gms/measurement/internal/t2;

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/g2;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/g2;->h(Ljava/lang/String;)V

    move-object v6, v10

    const-wide/16 v10, 0x1

    invoke-virtual {v4, v10, v11}, Lcom/google/android/gms/internal/measurement/g2;->g(J)V

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/c2;->i(Lcom/google/android/gms/internal/measurement/g2;)V

    goto :goto_9

    :cond_10
    move-object v6, v10

    :goto_9
    if-nez v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v10, "Marking event as real-time"

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->r()Lcom/google/android/gms/measurement/internal/t2;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/g2;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/measurement/g2;->h(Ljava/lang/String;)V

    const-wide/16 v10, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/measurement/g2;->g(J)V

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/c2;->i(Lcom/google/android/gms/internal/measurement/g2;)V

    :cond_11
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->w()J

    move-result-wide v35

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x1

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v39}, Lcom/google/android/gms/measurement/internal/i;->G(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/g;->e:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v4

    sget-object v12, Lcom/google/android/gms/measurement/internal/o2;->p:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v2, v4, v12}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v2

    int-to-long v12, v2

    cmp-long v2, v10, v12

    if-lez v2, :cond_12

    invoke-static {v9, v15}, Lcom/google/android/gms/measurement/internal/q5;->y(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;)V

    move/from16 v10, v24

    goto :goto_a

    :cond_12
    const/4 v10, 0x1

    :goto_a
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/u5;->X(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v3, :cond_19

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->w()J

    move-result-wide v35

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    const/16 v39, 0x0

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v39}, Lcom/google/android/gms/measurement/internal/i;->G(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/g;->c:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v4

    sget-object v13, Lcom/google/android/gms/measurement/internal/o2;->o:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v2, v4, v13}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v2

    move v4, v3

    int-to-long v2, v2

    cmp-long v2, v11, v2

    if-lez v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v11

    invoke-virtual {v2, v11, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_b
    :try_start_11
    iget-object v13, v9, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v13, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/d2;->m()I

    move-result v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-ge v3, v13, :cond_15

    :try_start_12
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/c2;->m(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/g2;

    move v12, v3

    goto :goto_c

    :cond_13
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    const/4 v11, 0x1

    :cond_14
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_15
    if-eqz v11, :cond_17

    if-eqz v2, :cond_16

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/c2;->j(I)V

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    :cond_17
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->a()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/g2;

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/measurement/g2;->h(Ljava/lang/String;)V

    const-wide/16 v13, 0xa

    invoke-virtual {v2, v13, v14}, Lcom/google/android/gms/internal/measurement/g2;->g(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v9, v12, v2}, Lcom/google/android/gms/internal/measurement/c2;->l(ILcom/google/android/gms/internal/measurement/h2;)V

    goto :goto_d

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v11

    invoke-virtual {v2, v11, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    :catchall_4
    move-exception v0

    goto/16 :goto_19

    :cond_19
    move v4, v3

    :cond_1a
    :goto_d
    if-eqz v4, :cond_22

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->o()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v11, -0x1

    :goto_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    const-string v13, "currency"

    const-string v14, "value"

    if-ge v3, v12, :cond_1d

    :try_start_13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    move v4, v3

    goto :goto_f

    :cond_1b
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    move v11, v3

    :cond_1c
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1d
    const/4 v3, -0x1

    if-ne v4, v3, :cond_1e

    goto/16 :goto_12

    :cond_1e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->G()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->E()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->s()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/c2;->j(I)V

    invoke-static {v9, v7}, Lcom/google/android/gms/measurement/internal/q5;->y(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;)V

    const/16 v2, 0x12

    invoke-static {v9, v2, v14}, Lcom/google/android/gms/measurement/internal/q5;->x(Lcom/google/android/gms/internal/measurement/c2;ILjava/lang/String;)V

    goto :goto_12

    :cond_1f
    const/4 v3, -0x1

    if-ne v11, v3, :cond_20

    goto :goto_11

    :cond_20
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/h2;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v11, 0x3

    if-ne v3, v11, :cond_21

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v3, v11, :cond_22

    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isLetter(I)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_10

    :cond_21
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->s()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/c2;->j(I)V

    invoke-static {v9, v7}, Lcom/google/android/gms/measurement/internal/q5;->y(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;)V

    const/16 v2, 0x13

    invoke-static {v9, v2, v13}, Lcom/google/android/gms/measurement/internal/q5;->x(Lcom/google/android/gms/internal/measurement/c2;ILjava/lang/String;)V

    :cond_22
    :goto_12
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v33

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/b3;->o(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v2

    if-nez v2, :cond_25

    if-eqz v16, :cond_24

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/c2;->h()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->h()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v17

    if-gtz v2, :cond_24

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/k4;->a()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/c2;

    invoke-virtual {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/q5;->G(Lcom/google/android/gms/internal/measurement/c2;Lcom/google/android/gms/internal/measurement/c2;)Z

    move-result v3

    if-eqz v3, :cond_23

    move/from16 v8, v21

    move-object/from16 v4, v32

    invoke-virtual {v4, v8, v2}, Lcom/google/android/gms/internal/measurement/l2;->i(ILcom/google/android/gms/internal/measurement/c2;)V

    move/from16 v13, v27

    const/4 v2, 0x0

    const/16 v16, 0x0

    goto :goto_13

    :cond_23
    move/from16 v8, v21

    move-object/from16 v4, v32

    move-object v2, v9

    move/from16 v13, v26

    :goto_13
    move-object v12, v2

    goto/16 :goto_16

    :cond_24
    move/from16 v8, v21

    move-object/from16 v4, v32

    move-object v12, v9

    move/from16 v13, v26

    goto/16 :goto_16

    :cond_25
    move/from16 v8, v21

    move-object/from16 v4, v32

    goto/16 :goto_15

    :cond_26
    move/from16 v8, v21

    move-object/from16 v4, v32

    const-string v2, "_vs"

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/d2;

    move-object/from16 v7, v31

    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/b3;->o(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v2

    if-nez v2, :cond_29

    if-eqz v29, :cond_28

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/measurement/c2;->h()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/c2;->h()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v17

    if-gtz v2, :cond_28

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/measurement/k4;->a()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/c2;

    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/q5;->G(Lcom/google/android/gms/internal/measurement/c2;Lcom/google/android/gms/internal/measurement/c2;)Z

    move-result v3

    if-eqz v3, :cond_27

    move/from16 v3, v27

    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/measurement/l2;->i(ILcom/google/android/gms/internal/measurement/c2;)V

    move v15, v8

    const/4 v2, 0x0

    const/4 v12, 0x0

    goto :goto_14

    :cond_27
    move/from16 v3, v27

    move-object v2, v9

    move/from16 v15, v26

    move-object/from16 v12, v29

    :goto_14
    move-object/from16 v16, v2

    move v13, v3

    goto :goto_17

    :cond_28
    move/from16 v3, v27

    move v13, v3

    move-object/from16 v16, v9

    move/from16 v15, v26

    move-object/from16 v12, v29

    goto :goto_17

    :cond_29
    :goto_15
    move/from16 v3, v27

    move v13, v3

    move-object/from16 v12, v29

    :goto_16
    move v15, v8

    :goto_17
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/h3;->d:Ljava/io/Serializable;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/d2;

    move/from16 v7, v28

    invoke-interface {v2, v7, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    add-int/lit8 v11, v26, 0x1

    :try_start_14
    iget-boolean v2, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v2, :cond_2a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_2a
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v2, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/m2;->F(Lcom/google/android/gms/internal/measurement/m2;Lcom/google/android/gms/internal/measurement/d2;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :goto_18
    add-int/lit8 v14, v7, 0x1

    move-object v6, v4

    move-object/from16 v4, v20

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    const/4 v7, 0x0

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    goto :goto_19

    :catchall_6
    move-exception v0

    goto :goto_19

    :catchall_7
    move-exception v0

    goto :goto_19

    :catchall_8
    move-exception v0

    :goto_19
    move-object v2, v0

    goto :goto_1d

    :cond_2b
    move-object v4, v6

    move-object v3, v10

    move-object v6, v13

    move/from16 v13, v26

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_1a
    if-ge v12, v13, :cond_2f

    :try_start_15
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/m2;->t1(I)Lcom/google/android/gms/internal/measurement/d2;

    move-result-object v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/d2;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {v9, v8}, Lcom/google/android/gms/measurement/internal/b3;->o(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v10

    if-eqz v10, :cond_2c

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/measurement/l2;->g(I)V

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_1c

    :cond_2c
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {v9, v7}, Lcom/google/android/gms/measurement/internal/b3;->o(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v9

    if-eqz v9, :cond_2e

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->G()Z

    move-result v10

    if-eqz v10, :cond_2d

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->o()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1b

    :cond_2d
    const/4 v9, 0x0

    :goto_1b
    if-eqz v9, :cond_2e

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v26, 0x0

    cmp-long v10, v28, v26

    if-lez v10, :cond_2e

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    add-long/2addr v14, v9

    :cond_2e
    :goto_1c
    const/4 v9, 0x1

    add-int/2addr v12, v9

    goto :goto_1a

    :catchall_9
    move-exception v0

    goto :goto_19

    :goto_1d
    move-object v6, v1

    goto/16 :goto_89

    :cond_2f
    const/4 v3, 0x0

    :try_start_17
    invoke-virtual {v1, v4, v14, v15, v3}, Lcom/google/android/gms/measurement/internal/q5;->C(Lcom/google/android/gms/internal/measurement/l2;JZ)V

    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m2;->y()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2f

    const-string v8, "_s"

    const-string v9, "_se"

    if-eqz v7, :cond_31

    :try_start_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d2;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l2;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v9}, Lcom/google/android/gms/measurement/internal/i;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :cond_31
    :try_start_19
    const-string v3, "_sid"

    invoke-static {v4, v3}, Lcom/google/android/gms/measurement/internal/b3;->x(Lcom/google/android/gms/internal/measurement/l2;Ljava/lang/String;)I

    move-result v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2f

    if-ltz v3, :cond_32

    const/4 v3, 0x1

    :try_start_1a
    invoke-virtual {v1, v4, v14, v15, v3}, Lcom/google/android/gms/measurement/internal/q5;->C(Lcom/google/android/gms/internal/measurement/l2;JZ)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    goto :goto_1e

    :cond_32
    :try_start_1b
    invoke-static {v4, v9}, Lcom/google/android/gms/measurement/internal/b3;->x(Lcom/google/android/gms/internal/measurement/l2;Ljava/lang/String;)I

    move-result v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2f

    if-ltz v3, :cond_34

    :try_start_1c
    iget-boolean v7, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v7, :cond_33

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_33
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/measurement/m2;->t0(Lcom/google/android/gms/internal/measurement/m2;I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v3

    const-string v7, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v9

    invoke-virtual {v3, v9, v7}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    goto :goto_1e

    :catchall_a
    move-exception v0

    goto/16 :goto_19

    :cond_34
    :goto_1e
    :try_start_1e
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2f

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v7, v6, Lb0/h;->a:Ljava/lang/Object;

    :try_start_1f
    move-object v9, v7

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v9

    const-string v10, "Checking account type status for ad personalization signals"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l2;->l()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lb0/h;->k()V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/o3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t1;

    move-result-object v9

    if-nez v9, :cond_35

    const/4 v9, 0x0

    goto :goto_1f

    :cond_35
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/t1;->A()Z

    move-result v9
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2f

    :goto_1f
    if-eqz v9, :cond_40

    :try_start_20
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l2;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c4;->y()Z

    move-result v3

    if-eqz v3, :cond_40

    move-object v3, v7

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/t3;->o()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    :try_start_21
    const-string v9, "com.google"

    invoke-virtual {v3}, Lb0/h;->k()V

    iget-object v10, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    :try_start_22
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v16, v5

    move-object v14, v6

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/k;->g:J

    sub-long v5, v12, v5

    const-wide/32 v28, 0x5265c00

    cmp-long v5, v5, v28

    if-lez v5, :cond_36

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/google/android/gms/measurement/internal/k;->f:Ljava/lang/Boolean;

    :cond_36
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/k;->f:Ljava/lang/Boolean;

    if-nez v5, :cond_3b

    const-string v5, "android.permission.GET_ACCOUNTS"

    invoke-static {v15, v5}, Lt/h;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    if-eqz v5, :cond_37

    :try_start_23
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v5, "Permission error checking for dasher/unicorn accounts"

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/x2;->j:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_21

    :cond_37
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/k;->e:Landroid/accounts/AccountManager;

    if-nez v5, :cond_38

    invoke-static {v15}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/measurement/internal/k;->e:Landroid/accounts/AccountManager;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    :cond_38
    :try_start_24
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/k;->e:Landroid/accounts/AccountManager;

    const-string v10, "service_HOSTED"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    invoke-virtual {v5, v9, v10, v15, v15}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v5

    invoke-interface {v5}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    if-eqz v5, :cond_39

    array-length v5, v5

    if-lez v5, :cond_39

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v3, Lcom/google/android/gms/measurement/internal/k;->f:Ljava/lang/Boolean;

    iput-wide v12, v3, Lcom/google/android/gms/measurement/internal/k;->g:J

    :goto_20
    const/4 v3, 0x1

    goto :goto_22

    :cond_39
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/k;->e:Landroid/accounts/AccountManager;

    const-string v10, "service_uca"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    invoke-virtual {v5, v9, v10, v15, v15}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v5

    invoke-interface {v5}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    if-eqz v5, :cond_3a

    array-length v5, v5

    if-lez v5, :cond_3a

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v3, Lcom/google/android/gms/measurement/internal/k;->f:Ljava/lang/Boolean;

    iput-wide v12, v3, Lcom/google/android/gms/measurement/internal/k;->g:J
    :try_end_24
    .catch Landroid/accounts/AuthenticatorException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    goto :goto_20

    :catch_0
    move-exception v0

    move-object v5, v0

    :try_start_25
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v9, "Exception checking account types"

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/x2;->g:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v6, v5, v9}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3a
    :goto_21
    iput-wide v12, v3, Lcom/google/android/gms/measurement/internal/k;->g:J

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v5, v3, Lcom/google/android/gms/measurement/internal/k;->f:Ljava/lang/Boolean;

    const/4 v3, 0x0

    goto :goto_22

    :cond_3b
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    :goto_22
    if-eqz v3, :cond_41

    :try_start_26
    move-object v3, v7

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->o()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v3

    const-string v5, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v2;->o()Lcom/google/android/gms/internal/measurement/u2;

    move-result-object v3

    move-object/from16 v5, v25

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/u2;->h(Ljava/lang/String;)V

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/t3;->o()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/k;->o()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/u2;->i(J)V

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/u2;->g(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/v2;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    const/4 v6, 0x0

    :goto_23
    :try_start_27
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m2;->i1()I

    move-result v7
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    if-ge v6, v7, :cond_3e

    :try_start_28
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/m2;->w1(I)Lcom/google/android/gms/internal/measurement/v2;

    move-result-object v7
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    :try_start_29
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/v2;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    if-eqz v7, :cond_3d

    :try_start_2a
    iget-boolean v5, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_3c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_3c
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v5, v6, v3}, Lcom/google/android/gms/internal/measurement/m2;->r0(Lcom/google/android/gms/internal/measurement/m2;ILcom/google/android/gms/internal/measurement/v2;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    goto :goto_24

    :catchall_b
    move-exception v0

    goto/16 :goto_19

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :catchall_c
    move-exception v0

    goto/16 :goto_19

    :cond_3e
    :try_start_2b
    iget-boolean v5, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_3f

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_3f
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/measurement/m2;->s0(Lcom/google/android/gms/internal/measurement/m2;Lcom/google/android/gms/internal/measurement/v2;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    goto :goto_24

    :catchall_d
    move-exception v0

    goto/16 :goto_19

    :catchall_e
    move-exception v0

    goto/16 :goto_19

    :catchall_f
    move-exception v0

    goto/16 :goto_19

    :cond_40
    move-object/from16 v16, v5

    move-object v14, v6

    :cond_41
    :goto_24
    :try_start_2c
    iget-boolean v3, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2f

    if-eqz v3, :cond_42

    :try_start_2d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    goto :goto_26

    :goto_25
    move-object v2, v0

    goto :goto_28

    :catchall_10
    move-exception v0

    goto :goto_25

    :cond_42
    :goto_26
    :try_start_2e
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/m2;->v0(Lcom/google/android/gms/internal/measurement/m2;J)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2d

    :try_start_2f
    iget-boolean v3, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2f

    if-eqz v3, :cond_43

    :try_start_30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_11

    goto :goto_29

    :goto_27
    move-object v2, v0

    goto :goto_28

    :catchall_11
    move-exception v0

    goto :goto_27

    :goto_28
    move-object v5, v1

    goto/16 :goto_ac

    :cond_43
    :goto_29
    :try_start_31
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    const-wide/high16 v5, -0x8000000000000000L

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/m2;->w0(Lcom/google/android/gms/internal/measurement/m2;J)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2d

    const/4 v3, 0x0

    :goto_2a
    :try_start_32
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/m2;->e1()I

    move-result v5
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_2f

    if-ge v3, v5, :cond_48

    :try_start_33
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/m2;->t1(I)Lcom/google/android/gms/internal/measurement/d2;

    move-result-object v5
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_16

    :try_start_34
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d2;->o()J

    move-result-wide v6
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_8

    :try_start_35
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m2;->q1()J

    move-result-wide v9
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_15

    cmp-long v6, v6, v9

    if-gez v6, :cond_45

    :try_start_36
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d2;->o()J

    move-result-wide v6
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_8

    :try_start_37
    iget-boolean v9, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_44

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_44
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v9, v6, v7}, Lcom/google/android/gms/internal/measurement/m2;->v0(Lcom/google/android/gms/internal/measurement/m2;J)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_12

    goto :goto_2b

    :catchall_12
    move-exception v0

    goto/16 :goto_19

    :cond_45
    :goto_2b
    :try_start_38
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d2;->o()J

    move-result-wide v6
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_8

    :try_start_39
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m2;->m1()J

    move-result-wide v9
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_14

    cmp-long v6, v6, v9

    if-lez v6, :cond_47

    :try_start_3a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d2;->o()J

    move-result-wide v5
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_8

    :try_start_3b
    iget-boolean v7, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v7, :cond_46

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_46
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/m2;->w0(Lcom/google/android/gms/internal/measurement/m2;J)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_13

    goto :goto_2c

    :catchall_13
    move-exception v0

    goto/16 :goto_19

    :cond_47
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :catchall_14
    move-exception v0

    goto/16 :goto_19

    :catchall_15
    move-exception v0

    goto/16 :goto_19

    :catchall_16
    move-exception v0

    goto/16 :goto_19

    :cond_48
    :try_start_3c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l2;->w()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l2;->q()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->f:Lcom/google/android/gms/measurement/internal/b;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l2;->l()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/m2;->y()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m2;->z()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m2;->q1()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m2;->m1()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v13, "current_results"

    invoke-static {v5}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {v6}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-static {v12}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->e:Ljava/util/HashSet;

    new-instance v5, Ll/b;

    invoke-direct {v5}, Ll/b;-><init>()V

    iput-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->f:Ll/b;

    iput-object v7, v3, Lcom/google/android/gms/measurement/internal/b;->g:Ljava/lang/Long;

    iput-object v9, v3, Lcom/google/android/gms/measurement/internal/b;->h:Ljava/lang/Long;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d2;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    const/4 v5, 0x1

    goto :goto_2d

    :cond_4a
    const/4 v5, 0x0

    :goto_2d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u6;->a()V

    iget-object v7, v3, Lb0/h;->a:Ljava/lang/Object;

    move-object v15, v7

    check-cast v15, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/t3;->n()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/o2;->W:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v7

    invoke-static {}, Lcom/google/android/gms/internal/measurement/u6;->a()V

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/t3;->n()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/measurement/internal/o2;->V:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v8

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_2f

    if-eqz v5, :cond_4b

    :try_start_3d
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/q5;->M()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v9

    move-object/from16 v25, v2

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v9}, Lb0/h;->k()V

    invoke-static {v2}, Lva/n;->f(Ljava/lang/String;)V

    move-object/from16 v38, v11

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "current_session_count"

    move-object/from16 v39, v14

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2a

    :try_start_3e
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_3e} :catch_3
    .catchall {:try_start_3e .. :try_end_3e} :catchall_2a

    move-object/from16 v40, v4

    const/4 v14, 0x1

    :try_start_3f
    new-array v4, v14, [Ljava/lang/String;

    aput-object v2, v4, v30

    const-string v14, "events"
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_3f} :catch_2
    .catchall {:try_start_3f .. :try_end_3f} :catchall_2a

    move-object/from16 v41, v12

    :try_start_40
    const-string v12, "app_id = ?"

    invoke-virtual {v1, v14, v11, v12, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_40 .. :try_end_40} :catch_1
    .catchall {:try_start_40 .. :try_end_40} :catchall_2a

    goto :goto_30

    :catch_1
    move-exception v0

    goto :goto_2f

    :catch_2
    move-exception v0

    goto :goto_2e

    :catch_3
    move-exception v0

    move-object/from16 v40, v4

    :goto_2e
    move-object/from16 v41, v12

    :goto_2f
    move-object v1, v0

    :try_start_41
    iget-object v4, v9, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v2

    const-string v9, "Error resetting session-scoped event counts. appId"

    invoke-virtual {v4, v9, v2, v1}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_30

    :cond_4b
    move-object/from16 v25, v2

    move-object/from16 v40, v4

    move-object/from16 v38, v11

    move-object/from16 v41, v12

    move-object/from16 v39, v14

    :goto_30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Failed to merge filter. appId"

    const-string v4, "Database error querying filters. appId"

    const-string v11, "audience_id"
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_2a

    const-string v12, "data"

    if-eqz v8, :cond_52

    if-eqz v7, :cond_52

    :try_start_42
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/q5;->M()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v1

    iget-object v9, v1, Lb0/h;->a:Ljava/lang/Object;

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-static {v14}, Lva/n;->f(Ljava/lang/String;)V

    move-object/from16 v42, v6

    new-instance v6, Ll/b;

    invoke-direct {v6}, Ll/b;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v30
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_2a

    :try_start_43
    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v32
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_43} :catch_9
    .catchall {:try_start_43 .. :try_end_43} :catchall_18

    move-object/from16 v43, v12

    const/4 v1, 0x1

    :try_start_44
    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v14, v12, v1

    const-string v31, "event_filters"

    const-string v33, "app_id=?"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v34, v12

    invoke-virtual/range {v30 .. v37}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_44} :catch_8
    .catchall {:try_start_44 .. :try_end_44} :catchall_18

    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_45} :catch_7
    .catchall {:try_start_45 .. :try_end_45} :catchall_19

    if-eqz v12, :cond_4f

    :goto_31
    move/from16 v44, v7

    const/4 v12, 0x1

    :try_start_46
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_46 .. :try_end_46} :catch_5
    .catchall {:try_start_46 .. :try_end_46} :catchall_19

    :try_start_47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f1;->n()Lcom/google/android/gms/internal/measurement/e1;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/google/android/gms/measurement/internal/b3;->D(Lcom/google/android/gms/internal/measurement/k4;[B)Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/e1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/f1;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_47} :catch_5
    .catchall {:try_start_47 .. :try_end_47} :catchall_19

    :try_start_48
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/f1;->y()Z

    move-result v12

    if-nez v12, :cond_4c

    move/from16 v45, v8

    goto :goto_33

    :cond_4c
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ll/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/List;
    :try_end_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_48} :catch_5
    .catchall {:try_start_48 .. :try_end_48} :catchall_19

    if-nez v30, :cond_4d

    move/from16 v45, v8

    :try_start_49
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v12, v8}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_4d
    move/from16 v45, v8

    move-object/from16 v8, v30

    :goto_32
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :catch_4
    move-exception v0

    move/from16 v45, v8

    move-object v7, v0

    move-object v8, v9

    check-cast v8, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v8

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v12

    invoke-virtual {v8, v2, v12, v7}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_33
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_49} :catch_6
    .catchall {:try_start_49 .. :try_end_49} :catchall_19

    if-nez v7, :cond_4e

    :try_start_4a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_17

    goto/16 :goto_3b

    :catchall_17
    move-exception v0

    goto/16 :goto_83

    :cond_4e
    move/from16 v7, v44

    move/from16 v8, v45

    goto :goto_31

    :catch_5
    move-exception v0

    :goto_34
    move/from16 v45, v8

    :goto_35
    move-object v6, v0

    goto :goto_37

    :cond_4f
    move/from16 v44, v7

    move/from16 v45, v8

    :try_start_4b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_4b} :catch_6
    .catchall {:try_start_4b .. :try_end_4b} :catchall_19

    goto :goto_38

    :catch_6
    move-exception v0

    goto :goto_35

    :catch_7
    move-exception v0

    move/from16 v44, v7

    goto :goto_34

    :catch_8
    move-exception v0

    move/from16 v44, v7

    move/from16 v45, v8

    goto :goto_36

    :catchall_18
    move-exception v0

    move-object v1, v0

    const/4 v9, 0x0

    goto :goto_39

    :catch_9
    move-exception v0

    move/from16 v44, v7

    move/from16 v45, v8

    move-object/from16 v43, v12

    :goto_36
    move-object v6, v0

    const/4 v1, 0x0

    :goto_37
    :try_start_4c
    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v7

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v8

    invoke-virtual {v7, v4, v8, v6}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_19

    if-eqz v1, :cond_50

    :goto_38
    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_50
    move-object v1, v6

    goto :goto_3a

    :catchall_19
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    :goto_39
    if-eqz v9, :cond_51

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v1

    :cond_52
    move-object/from16 v42, v6

    move/from16 v44, v7

    move/from16 v45, v8

    move-object/from16 v43, v12

    :goto_3a
    move-object v6, v1

    :goto_3b
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/q5;->M()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v1

    iget-object v7, v1, Lb0/h;->a:Ljava/lang/Object;

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v1}, Lb0/h;->k()V

    invoke-static {v8}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v30
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2a

    :try_start_4e
    filled-new-array {v11, v13}, [Ljava/lang/String;

    move-result-object v32

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v8, v9, v1

    const-string v31, "audience_filter_values"

    const-string v33, "app_id=?"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v34, v9

    invoke-virtual/range {v30 .. v37}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e .. :try_end_4e} :catch_e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1a

    :try_start_4f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_53

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_4f} :catch_d
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2b

    :try_start_50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_2a

    move-object/from16 v47, v4

    move-object/from16 v46, v13

    goto/16 :goto_40

    :cond_53
    :try_start_51
    new-instance v9, Ll/b;

    invoke-direct {v9}, Ll/b;-><init>()V

    :goto_3c
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14
    :try_end_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_51 .. :try_end_51} :catch_d
    .catchall {:try_start_51 .. :try_end_51} :catchall_2b

    move-object/from16 v46, v13

    const/4 v12, 0x1

    :try_start_52
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_52} :catch_c
    .catchall {:try_start_52 .. :try_end_52} :catchall_2b

    :try_start_53
    invoke-static {}, Lcom/google/android/gms/internal/measurement/r2;->q()Lcom/google/android/gms/internal/measurement/q2;

    move-result-object v12

    invoke-static {v12, v13}, Lcom/google/android/gms/measurement/internal/b3;->D(Lcom/google/android/gms/internal/measurement/k4;[B)Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/q2;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/r2;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_53} :catch_c
    .catchall {:try_start_53 .. :try_end_53} :catchall_2b

    :try_start_54
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13, v12}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v47, v4

    move-object/from16 v30, v9

    goto :goto_3d

    :catch_a
    move-exception v0

    move-object v12, v0

    move-object v13, v7

    check-cast v13, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v13

    move-object/from16 v30, v9

    const-string v9, "Failed to merge filter results. appId, audienceId, error"
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_54} :catch_c
    .catchall {:try_start_54 .. :try_end_54} :catchall_2b

    move-object/from16 v47, v4

    :try_start_55
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v9, v4, v14, v12}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_55} :catch_b
    .catchall {:try_start_55 .. :try_end_55} :catchall_2b

    if-nez v4, :cond_54

    :try_start_56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_17

    move-object/from16 v7, v30

    goto :goto_40

    :cond_54
    move-object/from16 v9, v30

    move-object/from16 v13, v46

    move-object/from16 v4, v47

    goto :goto_3c

    :catch_b
    move-exception v0

    :goto_3e
    move-object v4, v0

    goto :goto_3f

    :catch_c
    move-exception v0

    move-object/from16 v47, v4

    goto :goto_3e

    :catch_d
    move-exception v0

    move-object/from16 v47, v4

    move-object/from16 v46, v13

    goto :goto_3e

    :catchall_1a
    move-exception v0

    move-object v1, v0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    goto/16 :goto_aa

    :catch_e
    move-exception v0

    move-object/from16 v47, v4

    move-object/from16 v46, v13

    move-object v4, v0

    const/4 v1, 0x0

    :goto_3f
    :try_start_57
    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v7

    const-string v9, "Database error querying filter results. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v8

    invoke-virtual {v7, v9, v8, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_2b

    if-eqz v1, :cond_55

    :try_start_58
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_55
    :goto_40
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_57

    move-object/from16 v48, v2

    :cond_56
    move-object/from16 v52, v11

    move-object/from16 v51, v15

    goto/16 :goto_57

    :cond_57
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v5, :cond_6f

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/q5;->M()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v5

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v5}, Lb0/h;->k()V

    invoke-static {v8}, Lva/n;->f(Ljava/lang/String;)V

    new-instance v9, Ll/b;

    invoke-direct {v9}, Ll/b;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_2a

    const/4 v13, 0x2

    :try_start_59
    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v14, v13

    const/4 v13, 0x1

    aput-object v8, v14, v13

    const-string v13, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    invoke-virtual {v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_59} :catch_10
    .catchall {:try_start_59 .. :try_end_59} :catchall_1b

    :try_start_5a
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_5a

    :cond_58
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ll/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    if-nez v14, :cond_59

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v13, v14}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_58

    goto :goto_42

    :cond_5a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_5a} :catch_f
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1c

    goto :goto_42

    :catch_f
    move-exception v0

    move-object v9, v0

    goto :goto_41

    :catchall_1b
    move-exception v0

    move-object v1, v0

    const/4 v9, 0x0

    goto/16 :goto_4b

    :catch_10
    move-exception v0

    move-object v9, v0

    const/4 v12, 0x0

    :goto_41
    :try_start_5b
    iget-object v5, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v5

    const-string v13, "Database error querying scoped filters. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v8

    invoke-virtual {v5, v13, v8, v9}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1c

    if-eqz v12, :cond_5b

    :goto_42
    :try_start_5c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5b
    invoke-static {v4}, Lva/n;->f(Ljava/lang/String;)V

    new-instance v4, Ll/b;

    invoke-direct {v4}, Ll/b;-><init>()V

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5d

    :cond_5c
    move-object/from16 v48, v2

    goto/16 :goto_4c

    :cond_5d
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/r2;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    if-eqz v14, :cond_6d

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_5e

    goto/16 :goto_49

    :cond_5e
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/q5;->P()Lcom/google/android/gms/measurement/internal/b3;

    move-result-object v12

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/r2;->v()Ljava/util/List;

    move-result-object v30

    move-object/from16 v31, v5

    move-object/from16 v5, v30

    check-cast v5, Lcom/google/android/gms/internal/measurement/p4;

    invoke-virtual {v12, v5, v14}, Lcom/google/android/gms/measurement/internal/b3;->G(Lcom/google/android/gms/internal/measurement/p4;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6c

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/q2;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/q2;->h()V

    move-object/from16 v30, v9

    iget-boolean v9, v12, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_5f

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v12, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_5f
    iget-object v9, v12, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/r2;

    invoke-static {v9, v5}, Lcom/google/android/gms/internal/measurement/r2;->A(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/List;)V

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/q5;->P()Lcom/google/android/gms/measurement/internal/b3;

    move-result-object v5

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/r2;->x()Ljava/util/List;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/p4;

    invoke-virtual {v5, v9, v14}, Lcom/google/android/gms/measurement/internal/b3;->G(Lcom/google/android/gms/internal/measurement/p4;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/q2;->j()V

    iget-boolean v9, v12, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_60

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v12, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_60
    iget-object v9, v12, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/r2;

    invoke-static {v9, v5}, Lcom/google/android/gms/internal/measurement/r2;->y(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/List;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x6;->a()V

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/t3;->n()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    sget-object v9, Lcom/google/android/gms/measurement/internal/o2;->w0:Lcom/google/android/gms/measurement/internal/n2;

    move-object/from16 v48, v2

    const/4 v2, 0x0

    invoke-virtual {v5, v2, v9}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v5

    if-eqz v5, :cond_67

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/r2;->u()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/b2;->l()I

    move-result v32

    move-object/from16 v33, v5

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    move-object/from16 v5, v33

    goto :goto_44

    :cond_62
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/q2;->g()V

    iget-boolean v5, v12, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_63

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_63
    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/r2;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/r2;->C(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/ArrayList;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/r2;->w()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_64
    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/t2;->m()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_64

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_65
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/q2;->i()V

    iget-boolean v5, v12, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_66

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_66
    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/r2;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/r2;->F(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/List;)V

    goto :goto_48

    :cond_67
    const/4 v2, 0x0

    :goto_46
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/r2;->l()I

    move-result v5

    if-ge v2, v5, :cond_69

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/measurement/r2;->p(I)Lcom/google/android/gms/internal/measurement/b2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/b2;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/q2;->k(I)V

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_69
    const/4 v2, 0x0

    :goto_47
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/r2;->n()I

    move-result v5

    if-ge v2, v5, :cond_6b

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/measurement/r2;->t(I)Lcom/google/android/gms/internal/measurement/t2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/t2;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/q2;->l(I)V

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_6b
    :goto_48
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/r2;

    invoke-virtual {v4, v2, v5}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_6c
    move-object/from16 v48, v2

    move-object/from16 v30, v9

    goto :goto_4a

    :cond_6d
    :goto_49
    move-object/from16 v48, v2

    move-object/from16 v31, v5

    move-object/from16 v30, v9

    invoke-virtual {v4, v12, v13}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_17

    :goto_4a
    move-object/from16 v9, v30

    move-object/from16 v5, v31

    move-object/from16 v2, v48

    goto/16 :goto_43

    :catchall_1c
    move-exception v0

    move-object v1, v0

    move-object v9, v12

    :goto_4b
    if-eqz v9, :cond_6e

    :try_start_5d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6e
    throw v1

    :cond_6f
    move-object/from16 v48, v2

    move-object v4, v7

    :goto_4c
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/r2;

    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9}, Ljava/util/BitSet;-><init>()V

    new-instance v12, Ll/b;

    invoke-direct {v12}, Ll/b;-><init>()V

    if-eqz v5, :cond_73

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r2;->l()I

    move-result v13

    if-nez v13, :cond_70

    goto :goto_50

    :cond_70
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r2;->u()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_71
    :goto_4e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_2a

    if-eqz v14, :cond_73

    :try_start_5e
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/b2;->s()Z

    move-result v30

    if-eqz v30, :cond_71

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/b2;->l()I

    move-result v30

    move-object/from16 v49, v1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/b2;->r()Z

    move-result v30

    if-eqz v30, :cond_72

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/b2;->m()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_4f

    :cond_72
    const/4 v14, 0x0

    :goto_4f
    invoke-virtual {v12, v1, v14}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_17

    move-object/from16 v1, v49

    goto :goto_4e

    :cond_73
    :goto_50
    move-object/from16 v49, v1

    :try_start_5f
    new-instance v1, Ll/b;

    invoke-direct {v1}, Ll/b;-><init>()V

    if-eqz v5, :cond_76

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r2;->n()I

    move-result v13

    if-nez v13, :cond_74

    goto :goto_52

    :cond_74
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r2;->w()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2a

    :goto_51
    :try_start_60
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_76

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/t2;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/t2;->t()Z

    move-result v30

    if-eqz v30, :cond_75

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/t2;->l()I

    move-result v30

    if-lez v30, :cond_75

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/t2;->m()I

    move-result v30

    move-object/from16 v50, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/t2;->l()I

    move-result v30

    move-object/from16 v31, v13

    const/16 v19, -0x1

    add-int/lit8 v13, v30, -0x1

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/measurement/t2;->n(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v1, v4, v13}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v31

    move-object/from16 v4, v50

    goto :goto_51

    :cond_75
    const/16 v19, -0x1

    goto :goto_51

    :cond_76
    :goto_52
    move-object/from16 v50, v4

    const/16 v19, -0x1

    if-eqz v5, :cond_79

    const/4 v4, 0x0

    :goto_53
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r2;->o()I

    move-result v13

    mul-int/lit8 v13, v13, 0x40

    if-ge v4, v13, :cond_79

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r2;->x()Ljava/util/List;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/p4;

    invoke-static {v13, v4}, Lcom/google/android/gms/measurement/internal/b3;->K(Lcom/google/android/gms/internal/measurement/p4;I)Z

    move-result v13

    if-eqz v13, :cond_77

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v51, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v52, v11

    const-string v11, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v13, v11, v14, v15}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v4}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r2;->v()Ljava/util/List;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/p4;

    invoke-static {v11, v4}, Lcom/google/android/gms/measurement/internal/b3;->K(Lcom/google/android/gms/internal/measurement/p4;I)Z

    move-result v11

    if-eqz v11, :cond_78

    invoke-virtual {v8, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_54

    :cond_77
    move-object/from16 v52, v11

    move-object/from16 v51, v15

    :cond_78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11}, Ll/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_17

    :goto_54
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v15, v51

    move-object/from16 v11, v52

    goto :goto_53

    :cond_79
    move-object/from16 v52, v11

    move-object/from16 v51, v15

    :try_start_61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v33, v5

    check-cast v33, Lcom/google/android/gms/internal/measurement/r2;
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_2a

    if-eqz v45, :cond_7e

    if-eqz v44, :cond_7e

    :try_start_62
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_7e

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->h:Ljava/lang/Long;

    if-eqz v5, :cond_7e

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->g:Ljava/lang/Long;

    if-nez v5, :cond_7a

    goto :goto_56

    :cond_7a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7b
    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/f1;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->m()I

    move-result v11

    iget-object v13, v3, Lcom/google/android/gms/measurement/internal/b;->h:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    div-long v13, v13, v17

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->w()Z

    move-result v5

    if-eqz v5, :cond_7c

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->g:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    div-long v13, v13, v17

    :cond_7c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Ll/j;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7d

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v12, v5, v11}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    invoke-virtual {v1, v5}, Ll/j;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    :cond_7e
    :goto_56
    new-instance v4, Lcom/google/android/gms/measurement/internal/x5;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    move-object/from16 v30, v4

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v12

    move-object/from16 v37, v1

    invoke-direct/range {v30 .. v37}, Lcom/google/android/gms/measurement/internal/x5;-><init>(Lcom/google/android/gms/measurement/internal/b;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/r2;Ljava/util/BitSet;Ljava/util/BitSet;Ll/b;Ll/b;)V

    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/b;->f:Ll/b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_17

    move-object/from16 v1, v49

    move-object/from16 v4, v50

    move-object/from16 v15, v51

    move-object/from16 v11, v52

    goto/16 :goto_4d

    :goto_57
    :try_start_63
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "Skipping failed audience ID"

    if-eqz v1, :cond_80

    :cond_7f
    move-object/from16 v11, v47

    move-object/from16 v47, v10

    goto/16 :goto_6a

    :cond_80
    new-instance v1, Lcom/google/android/gms/measurement/internal/y2;

    invoke-direct {v1, v3}, Lcom/google/android/gms/measurement/internal/y2;-><init>(Lcom/google/android/gms/measurement/internal/b;)V

    new-instance v4, Ll/b;

    invoke-direct {v4}, Ll/b;-><init>()V

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_58
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/d2;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/measurement/internal/y2;->a(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/d2;

    move-result-object v12

    if-eqz v12, :cond_8e

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/q5;->M()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/d2;->s()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d2;->s()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/i;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    if-nez v9, :cond_81

    iget-object v6, v6, Lb0/h;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v9

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v13

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/t3;->r()Lcom/google/android/gms/measurement/internal/t2;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v9, v8, v13, v6}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d2;->s()Ljava/lang/String;

    move-result-object v55

    const-wide/16 v56, 0x1

    const-wide/16 v58, 0x1

    const-wide/16 v60, 0x1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d2;->o()J

    move-result-wide v62

    const-wide/16 v64, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    invoke-direct/range {v53 .. v69}, Lcom/google/android/gms/measurement/internal/m;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    move-object v1, v6

    move-object/from16 v18, v11

    goto :goto_59

    :cond_81
    new-instance v6, Lcom/google/android/gms/measurement/internal/m;

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/m;->a:Ljava/lang/String;

    iget-object v7, v9, Lcom/google/android/gms/measurement/internal/m;->b:Ljava/lang/String;

    iget-wide v13, v9, Lcom/google/android/gms/measurement/internal/m;->c:J

    const-wide/16 v17, 0x1

    add-long v73, v13, v17

    iget-wide v13, v9, Lcom/google/android/gms/measurement/internal/m;->d:J

    add-long v75, v13, v17

    iget-wide v13, v9, Lcom/google/android/gms/measurement/internal/m;->e:J

    add-long v77, v13, v17

    iget-wide v13, v9, Lcom/google/android/gms/measurement/internal/m;->f:J

    move-object/from16 v17, v1

    move-object v15, v2

    iget-wide v1, v9, Lcom/google/android/gms/measurement/internal/m;->g:J

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/m;->h:Ljava/lang/Long;

    move-object/from16 v18, v11

    iget-object v11, v9, Lcom/google/android/gms/measurement/internal/m;->i:Ljava/lang/Long;

    move-object/from16 v19, v15

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/m;->j:Ljava/lang/Long;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/m;->k:Ljava/lang/Boolean;

    move-object/from16 v70, v6

    move-object/from16 v71, v5

    move-object/from16 v72, v7

    move-wide/from16 v79, v13

    move-wide/from16 v81, v1

    move-object/from16 v83, v8

    move-object/from16 v84, v11

    move-object/from16 v85, v15

    move-object/from16 v86, v9

    invoke-direct/range {v70 .. v86}, Lcom/google/android/gms/measurement/internal/m;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_2a

    move-object v1, v6

    :goto_59
    :try_start_64
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/q5;->M()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/i;->r(Lcom/google/android/gms/measurement/internal/m;)V

    iget-wide v13, v1, Lcom/google/android/gms/measurement/internal/m;->c:J

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/d2;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ll/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_87

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/q5;->M()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v5

    iget-object v6, v5, Lb0/h;->a:Ljava/lang/Object;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v5}, Lb0/h;->k()V

    invoke-static {v7}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {v2}, Lva/n;->f(Ljava/lang/String;)V

    new-instance v8, Ll/b;

    invoke-direct {v8}, Ll/b;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v30
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_17

    move-object/from16 v15, v43

    move-object/from16 v11, v52

    :try_start_65
    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v32

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v9, v5

    const/4 v5, 0x1

    aput-object v2, v9, v5

    const-string v31, "event_filters"

    const-string v33, "app_id=? AND event_name=?"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v34, v9

    invoke-virtual/range {v30 .. v37}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_65 .. :try_end_65} :catch_18
    .catchall {:try_start_65 .. :try_end_65} :catchall_1d

    :try_start_66
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_66
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_66 .. :try_end_66} :catch_17
    .catchall {:try_start_66 .. :try_end_66} :catchall_1e

    if-eqz v9, :cond_84

    :goto_5a
    move-object/from16 v30, v10

    const/4 v9, 0x1

    :try_start_67
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_67} :catch_15
    .catchall {:try_start_67 .. :try_end_67} :catchall_1e

    :try_start_68
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f1;->n()Lcom/google/android/gms/internal/measurement/e1;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/b3;->D(Lcom/google/android/gms/internal/measurement/k4;[B)Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/e1;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/f1;
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_68} :catch_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_68} :catch_12
    .catchall {:try_start_68 .. :try_end_68} :catchall_1e

    const/4 v10, 0x0

    :try_start_69
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ll/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/List;
    :try_end_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69 .. :try_end_69} :catch_12
    .catchall {:try_start_69 .. :try_end_69} :catchall_1e

    move-object/from16 v52, v11

    if-nez v31, :cond_82

    :try_start_6a
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v10, v11}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    :cond_82
    move-object/from16 v11, v31

    :goto_5b
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_6a} :catch_11
    .catchall {:try_start_6a .. :try_end_6a} :catchall_1e

    move-object/from16 v43, v15

    move-object/from16 v15, v48

    goto :goto_5d

    :catch_11
    move-exception v0

    goto :goto_5c

    :catch_12
    move-exception v0

    move-object/from16 v52, v11

    :goto_5c
    move-object v8, v0

    move-object/from16 v43, v15

    move-object/from16 v15, v48

    goto/16 :goto_61

    :catch_13
    move-exception v0

    move-object/from16 v52, v11

    move-object v9, v0

    :try_start_6b
    move-object v10, v6

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v10

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v11
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6b .. :try_end_6b} :catch_14
    .catchall {:try_start_6b .. :try_end_6b} :catchall_1e

    move-object/from16 v43, v15

    move-object/from16 v15, v48

    :try_start_6c
    invoke-virtual {v10, v15, v11, v9}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5d
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_83

    goto :goto_60

    :cond_83
    move-object/from16 v48, v15

    move-object/from16 v10, v30

    move-object/from16 v15, v43

    move-object/from16 v11, v52

    goto :goto_5a

    :catch_14
    move-exception v0

    goto :goto_5e

    :catch_15
    move-exception v0

    move-object/from16 v52, v11

    :goto_5e
    move-object/from16 v43, v15

    move-object/from16 v15, v48

    :goto_5f
    move-object v8, v0

    goto :goto_61

    :cond_84
    move-object/from16 v30, v10

    move-object/from16 v52, v11

    move-object/from16 v43, v15

    move-object/from16 v15, v48

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6c .. :try_end_6c} :catch_16
    .catchall {:try_start_6c .. :try_end_6c} :catchall_1e

    :goto_60
    :try_start_6d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_17

    move-object v5, v8

    move-object/from16 v11, v47

    goto :goto_62

    :catch_16
    move-exception v0

    goto :goto_5f

    :catch_17
    move-exception v0

    move-object/from16 v30, v10

    move-object/from16 v52, v11

    goto :goto_5e

    :catchall_1d
    move-exception v0

    move-object v1, v0

    const/4 v9, 0x0

    goto :goto_63

    :catch_18
    move-exception v0

    move-object/from16 v30, v10

    move-object/from16 v52, v11

    move-object/from16 v43, v15

    move-object/from16 v15, v48

    move-object v8, v0

    const/4 v5, 0x0

    :goto_61
    :try_start_6e
    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v6

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v7

    move-object/from16 v11, v47

    invoke-virtual {v6, v11, v7, v8}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_1e

    if-eqz v5, :cond_85

    :try_start_6f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_85
    move-object v5, v6

    :goto_62
    invoke-virtual {v4, v2, v5}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :catchall_1e
    move-exception v0

    move-object v1, v0

    move-object v9, v5

    :goto_63
    if-eqz v9, :cond_86

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_86
    throw v1

    :cond_87
    move-object/from16 v30, v10

    move-object/from16 v11, v47

    move-object/from16 v15, v48

    :goto_64
    move-object v2, v5

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_65
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v44

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->e:Ljava/util/HashSet;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v5

    move-object/from16 v10, v19

    invoke-virtual {v5, v6, v10}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v10

    goto :goto_65

    :cond_88
    move-object/from16 v10, v19

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/4 v5, 0x1

    :goto_66
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v31, v5

    check-cast v31, Lcom/google/android/gms/internal/measurement/f1;

    new-instance v9, Lcom/google/android/gms/measurement/internal/y5;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    const/16 v32, 0x0

    move-object v5, v9

    move-object v6, v3

    move/from16 v8, v44

    move-object/from16 v45, v9

    move-object/from16 v9, v31

    move-object/from16 v48, v2

    move-object v2, v10

    move-object/from16 v47, v30

    move/from16 v10, v32

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/y5;-><init>(Lcom/google/android/gms/measurement/internal/b;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/l4;I)V

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->g:Ljava/lang/Long;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/b;->h:Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/measurement/f1;->m()I

    move-result v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/b;->f:Ll/b;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/x5;

    if-nez v8, :cond_89

    const/16 v37, 0x0

    goto :goto_67

    :cond_89
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/x5;->d:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    move/from16 v37, v7

    :goto_67
    move-object/from16 v30, v45

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v12

    move-wide/from16 v34, v13

    move-object/from16 v36, v1

    invoke-virtual/range {v30 .. v37}, Lcom/google/android/gms/measurement/internal/y5;->g(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/d2;JLcom/google/android/gms/measurement/internal/m;Z)Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/b;->o(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/x5;

    move-result-object v6

    move-object/from16 v7, v45

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/x5;->b(Lcom/google/android/gms/measurement/internal/y5;)V

    move-object v10, v2

    move-object/from16 v30, v47

    move-object/from16 v2, v48

    goto :goto_66

    :cond_8a
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/b;->e:Ljava/util/HashSet;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_8b
    move-object/from16 v48, v2

    move-object v2, v10

    move-object/from16 v47, v30

    :goto_68
    if-nez v5, :cond_8c

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->e:Ljava/util/HashSet;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_17

    :cond_8c
    move-object/from16 v19, v2

    move-object/from16 v30, v47

    move-object/from16 v2, v48

    goto/16 :goto_65

    :cond_8d
    move-object/from16 v2, v19

    move-object/from16 v47, v30

    goto :goto_69

    :cond_8e
    move-object/from16 v17, v1

    move-object/from16 v18, v11

    move-object/from16 v11, v47

    move-object/from16 v15, v48

    move-object/from16 v47, v10

    :goto_69
    move-object/from16 v48, v15

    move-object/from16 v1, v17

    move-object/from16 v10, v47

    move-object/from16 v47, v11

    move-object/from16 v11, v18

    goto/16 :goto_58

    :goto_6a
    :try_start_70
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_90

    :cond_8f
    move-object/from16 v14, v43

    move-object/from16 v13, v52

    goto/16 :goto_7e

    :cond_90
    new-instance v1, Ll/b;

    invoke-direct {v1}, Ll/b;-><init>()V

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/google/android/gms/internal/measurement/v2;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/v2;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ll/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_2a

    if-nez v6, :cond_96

    :try_start_71
    invoke-virtual/range {v47 .. v47}, Lcom/google/android/gms/measurement/internal/q5;->M()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v6

    iget-object v7, v6, Lb0/h;->a:Ljava/lang/Object;

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v6}, Lb0/h;->k()V

    invoke-static {v8}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {v5}, Lva/n;->f(Ljava/lang/String;)V

    new-instance v9, Ll/b;

    invoke-direct {v9}, Ll/b;-><init>()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v30
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_17

    move-object/from16 v14, v43

    move-object/from16 v13, v52

    :try_start_72
    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v32

    const/4 v6, 0x2

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v10, v6

    const/4 v6, 0x1

    aput-object v5, v10, v6

    const-string v31, "property_filters"

    const-string v33, "app_id=? AND property_name=?"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v34, v10

    invoke-virtual/range {v30 .. v37}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_72 .. :try_end_72} :catch_1c
    .catchall {:try_start_72 .. :try_end_72} :catchall_1f

    :try_start_73
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_93

    :goto_6c
    const/4 v10, 0x1

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15
    :try_end_73
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_73 .. :try_end_73} :catch_1b
    .catchall {:try_start_73 .. :try_end_73} :catchall_20

    :try_start_74
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m1;->n()Lcom/google/android/gms/internal/measurement/l1;

    move-result-object v10

    invoke-static {v10, v15}, Lcom/google/android/gms/measurement/internal/b3;->D(Lcom/google/android/gms/internal/measurement/k4;[B)Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/l1;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/m1;
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_74} :catch_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_74 .. :try_end_74} :catch_1b
    .catchall {:try_start_74 .. :try_end_74} :catchall_20

    const/4 v15, 0x0

    :try_start_75
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Ll/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;
    :try_end_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_75} :catch_1b
    .catchall {:try_start_75 .. :try_end_75} :catchall_20

    move-object/from16 v18, v4

    if-nez v17, :cond_91

    :try_start_76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v15, v4}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    :cond_91
    move-object/from16 v4, v17

    :goto_6d
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v9

    goto :goto_6e

    :catch_19
    move-exception v0

    move-object/from16 v18, v4

    move-object v4, v0

    move-object v10, v7

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v10

    const-string v15, "Failed to merge filter"

    move-object/from16 v17, v9

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v9

    invoke-virtual {v10, v15, v9, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_76 .. :try_end_76} :catch_1a
    .catchall {:try_start_76 .. :try_end_76} :catchall_20

    if-nez v4, :cond_92

    :try_start_77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_17

    move-object/from16 v6, v17

    goto :goto_72

    :cond_92
    move-object/from16 v9, v17

    move-object/from16 v4, v18

    goto :goto_6c

    :cond_93
    move-object/from16 v18, v4

    :try_start_78
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4
    :try_end_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_78} :catch_1a
    .catchall {:try_start_78 .. :try_end_78} :catchall_20

    goto :goto_71

    :catch_1a
    move-exception v0

    :goto_6f
    move-object v4, v0

    goto :goto_70

    :catch_1b
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_6f

    :catchall_1f
    move-exception v0

    move-object v1, v0

    const/4 v9, 0x0

    goto :goto_73

    :catch_1c
    move-exception v0

    move-object/from16 v18, v4

    move-object v4, v0

    const/4 v6, 0x0

    :goto_70
    :try_start_79
    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v7

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v8

    invoke-virtual {v7, v11, v8, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_20

    if-eqz v6, :cond_94

    :goto_71
    :try_start_7a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_94
    move-object v6, v4

    :goto_72
    invoke-virtual {v1, v5, v6}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    :catchall_20
    move-exception v0

    move-object v1, v0

    move-object v9, v6

    :goto_73
    if-eqz v9, :cond_95

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_95
    throw v1

    :cond_96
    move-object/from16 v18, v4

    move-object/from16 v14, v43

    move-object/from16 v13, v52

    :goto_74
    move-object v4, v6

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_75
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->e:Ljava/util/HashSet;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7d

    :cond_97
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/4 v5, 0x1

    :goto_76
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/google/android/gms/internal/measurement/m1;

    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/m1;->u()Z

    move-result v7

    if-eqz v7, :cond_98

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/m1;->l()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_77

    :cond_98
    const/4 v7, 0x0

    :goto_77
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/measurement/internal/t3;->r()Lcom/google/android/gms/measurement/internal/t2;

    move-result-object v8

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/m1;->p()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Evaluating filter. audience, filter, property"

    invoke-virtual {v5, v9, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v5

    invoke-virtual/range {v47 .. v47}, Lcom/google/android/gms/measurement/internal/q5;->P()Lcom/google/android/gms/measurement/internal/b3;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/b3;->F(Lcom/google/android/gms/internal/measurement/m1;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Filter definition"

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_99
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/m1;->u()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/m1;->l()I

    move-result v5

    const/16 v6, 0x100

    if-le v5, v6, :cond_9a

    goto :goto_79

    :cond_9a
    new-instance v9, Lcom/google/android/gms/measurement/internal/y5;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    const/16 v30, 0x1

    move-object v5, v9

    move-object v6, v3

    move/from16 v8, v17

    move-object/from16 v31, v1

    move-object v1, v9

    move-object v9, v10

    move-object/from16 v32, v10

    move/from16 v10, v30

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/y5;-><init>(Lcom/google/android/gms/measurement/internal/b;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/l4;I)V

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->g:Ljava/lang/Long;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/b;->h:Ljava/lang/Long;

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/measurement/m1;->l()I

    move-result v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/b;->f:Ll/b;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/x5;

    if-nez v8, :cond_9b

    const/4 v7, 0x0

    goto :goto_78

    :cond_9b
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/x5;->d:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    :goto_78
    invoke-virtual {v1, v5, v6, v12, v7}, Lcom/google/android/gms/measurement/internal/y5;->h(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/v2;Z)Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/b;->o(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/x5;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/gms/measurement/internal/x5;->b(Lcom/google/android/gms/measurement/internal/y5;)V

    move-object/from16 v1, v31

    goto/16 :goto_76

    :cond_9c
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/b;->e:Ljava/util/HashSet;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_9d
    :goto_79
    move-object/from16 v31, v1

    move-object/from16 v32, v10

    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v1

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/measurement/m1;->u()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/measurement/m1;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_7a

    :cond_9e
    const/4 v6, 0x0

    :goto_7a
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid property filter ID. appId, id"

    invoke-virtual {v1, v7, v5, v6}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7c

    :cond_9f
    move-object/from16 v31, v1

    :goto_7b
    if-nez v5, :cond_a0

    :goto_7c
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/b;->e:Ljava/util/HashSet;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_17

    :cond_a0
    move-object/from16 v1, v31

    goto/16 :goto_75

    :cond_a1
    :goto_7d
    move-object/from16 v31, v1

    move-object/from16 v52, v13

    move-object/from16 v43, v14

    move-object/from16 v4, v18

    move-object/from16 v1, v31

    goto/16 :goto_6b

    :goto_7e
    :try_start_7b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/b;->f:Ll/b;

    invoke-virtual {v2}, Ll/b;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/b;->e:Ljava/util/HashSet;

    check-cast v2, Ll/g;

    invoke-virtual {v2, v4}, Ll/g;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ll/g;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_2a

    const-string v5, "app_id"

    const-wide/16 v6, -0x1

    if-eqz v4, :cond_a3

    :try_start_7c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/b;->f:Ll/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ll/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/x5;

    invoke-static {v8}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Lcom/google/android/gms/measurement/internal/x5;->a(I)Lcom/google/android/gms/internal/measurement/z1;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v47 .. v47}, Lcom/google/android/gms/measurement/internal/q5;->M()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v8

    iget-object v10, v8, Lb0/h;->a:Ljava/lang/Object;

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->o()Lcom/google/android/gms/internal/measurement/r2;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v8}, Lb0/h;->k()V

    invoke-static {v11}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {v4}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/t3;->b()[B

    move-result-object v4

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v12, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v5, v46

    invoke-virtual {v12, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_17

    :try_start_7d
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v8, "audience_filter_values"
    :try_end_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7d .. :try_end_7d} :catch_1e
    .catchall {:try_start_7d .. :try_end_7d} :catchall_17

    const/4 v9, 0x5

    const/4 v15, 0x0

    :try_start_7e
    invoke-virtual {v4, v8, v15, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v17

    cmp-long v4, v17, v6

    if-nez v4, :cond_a2

    move-object v4, v10

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v6, "Failed to insert filter results (got -1). appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7e .. :try_end_7e} :catch_1d
    .catchall {:try_start_7e .. :try_end_7e} :catchall_17

    goto :goto_82

    :catch_1d
    move-exception v0

    :goto_80
    move-object v4, v0

    goto :goto_81

    :catch_1e
    move-exception v0

    const/4 v9, 0x5

    goto :goto_80

    :goto_81
    :try_start_7f
    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v6

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v7

    const-string v8, "Error storing filter results. appId"

    invoke-virtual {v6, v8, v7, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_17

    :cond_a2
    :goto_82
    move-object/from16 v46, v5

    goto/16 :goto_7f

    :cond_a3
    move-object/from16 v2, v40

    :try_start_80
    iget-boolean v3, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_2a

    if-eqz v3, :cond_a4

    :try_start_81
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_21

    goto :goto_85

    :goto_83
    move-object v1, v0

    goto :goto_84

    :catchall_21
    move-exception v0

    goto :goto_83

    :goto_84
    move-object/from16 v5, p0

    goto/16 :goto_af

    :cond_a4
    :goto_85
    :try_start_82
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/m2;->a0(Lcom/google/android/gms/internal/measurement/m2;Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    move-object/from16 v3, v16

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/e;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/u5;->t()Ljava/security/SecureRandom;

    move-result-object v8

    const/4 v9, 0x0

    :goto_86
    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v10, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/m2;->e1()I

    move-result v10
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_2a

    if-ge v9, v10, :cond_bc

    :try_start_83
    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v10, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/m2;->t1(I)Lcom/google/android/gms/internal/measurement/d2;

    move-result-object v10
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_26

    :try_start_84
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/c2;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_ep"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_29

    const-string v12, "_efs"

    const-string v13, "_sr"

    if-eqz v11, :cond_aa

    :try_start_85
    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/d2;

    const-string v15, "_en"

    invoke-static {v11, v15}, Lcom/google/android/gms/measurement/internal/b3;->p(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/measurement/internal/m;
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_22

    if-nez v15, :cond_a5

    move-object/from16 v6, p0

    :try_start_86
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v7, v15, v11}, Lcom/google/android/gms/measurement/internal/i;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v15

    if-eqz v15, :cond_a6

    invoke-virtual {v1, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_87

    :cond_a5
    move-object/from16 v6, p0

    :cond_a6
    :goto_87
    if-eqz v15, :cond_a9

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/m;->i:Ljava/lang/Long;

    if-nez v7, :cond_a9

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/m;->j:Ljava/lang/Long;

    if-eqz v7, :cond_a7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v22, 0x1

    cmp-long v7, v18, v22

    if-lez v7, :cond_a7

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/m;->j:Ljava/lang/Long;

    invoke-static {v10, v13, v7}, Lcom/google/android/gms/measurement/internal/b3;->O(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_a7
    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/m;->k:Ljava/lang/Boolean;

    if-eqz v7, :cond_a8

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a8

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-wide/16 v18, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10, v12, v7}, Lcom/google/android/gms/measurement/internal/b3;->O(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_a8
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a9
    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/internal/measurement/l2;->i(ILcom/google/android/gms/internal/measurement/c2;)V
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_23

    move-object/from16 v18, v5

    move-object/from16 v43, v14

    goto/16 :goto_91

    :catchall_22
    move-exception v0

    move-object/from16 v6, p0

    :goto_88
    move-object v2, v0

    goto :goto_89

    :cond_aa
    move-object/from16 v6, p0

    :try_start_87
    invoke-static/range {v38 .. v38}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_29

    :try_start_88
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_25

    :try_start_89
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v7

    const-string v11, "measurement.account.time_zone_offset_minutes"

    move-object/from16 v15, v38

    invoke-virtual {v15, v7, v11}, Lcom/google/android/gms/measurement/internal/o3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_29

    if-nez v18, :cond_ab

    :try_start_8a
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_8a .. :try_end_8a} :catch_1f
    .catchall {:try_start_8a .. :try_end_8a} :catchall_23

    move-object/from16 v43, v14

    move-wide/from16 v19, v18

    move-object/from16 v18, v5

    goto :goto_8b

    :catchall_23
    move-exception v0

    goto :goto_88

    :catch_1f
    move-exception v0

    move-object v11, v0

    move-object/from16 v43, v14

    :try_start_8b
    iget-object v14, v15, Lb0/h;->a:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v14

    move-object/from16 v18, v5

    const-string v5, "Unable to parse timezone offset. appId"

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v7

    invoke-virtual {v14, v5, v7, v11}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_23

    goto :goto_8a

    :goto_89
    move-object v5, v6

    goto/16 :goto_b0

    :cond_ab
    move-object/from16 v18, v5

    move-object/from16 v43, v14

    :goto_8a
    const-wide/16 v19, 0x0

    :goto_8b
    :try_start_8c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->h()J

    move-result-wide v30

    const-wide/32 v32, 0xea60

    mul-long v19, v19, v32

    add-long v30, v19, v30

    move-object v5, v12

    const-wide/32 v28, 0x5265c00

    div-long v11, v30, v28

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/d2;

    const-wide/16 v22, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v30, v5

    const-string v5, "_dbg"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_29

    if-nez v31, :cond_ae

    :try_start_8d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d2;->t()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_ae

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/google/android/gms/internal/measurement/h2;

    move-object/from16 v32, v7

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/measurement/h2;->o()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_24

    if-nez v5, :cond_ac

    goto :goto_8d

    :cond_ac
    const/4 v5, 0x1

    goto :goto_8e

    :cond_ad
    move-object/from16 v7, v32

    goto :goto_8c

    :catchall_24
    move-exception v0

    move-object v1, v0

    move-object v5, v6

    goto/16 :goto_af

    :cond_ae
    :goto_8d
    :try_start_8e
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_29

    :try_start_8f
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/m2;
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_25

    :try_start_90
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Lcom/google/android/gms/measurement/internal/o3;->t(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_29

    :goto_8e
    if-gtz v5, :cond_af

    :try_start_91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v7

    const-string v11, "Sample rate must be positive. event, rate"

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v11, v12, v5}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/internal/measurement/l2;->i(ILcom/google/android/gms/internal/measurement/c2;)V
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_24

    move-object/from16 v38, v15

    goto/16 :goto_91

    :cond_af
    :try_start_92
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/m;

    if-nez v7, :cond_b0

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_29

    :try_start_93
    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/gms/internal/measurement/m2;
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_25

    :try_start_94
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v38, v15

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/google/android/gms/measurement/internal/i;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v7

    if-nez v7, :cond_b1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v7

    const-string v14, "Event being bundled has no eventAggregate. appId, eventName"
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_29

    :try_start_95
    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/measurement/m2;
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_25

    :try_start_96
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v14, v15, v6}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/google/android/gms/measurement/internal/m;
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_29

    :try_start_97
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_25

    :try_start_98
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v45

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v46

    const-wide/16 v47, 0x1

    const-wide/16 v49, 0x1

    const-wide/16 v51, 0x1

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->h()J

    move-result-wide v53

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    move-object/from16 v44, v7

    invoke-direct/range {v44 .. v60}, Lcom/google/android/gms/measurement/internal/m;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_8f

    :cond_b0
    move-object/from16 v38, v15

    :cond_b1
    :goto_8f
    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/d2;

    const-string v14, "_eid"

    invoke-static {v6, v14}, Lcom/google/android/gms/measurement/internal/b3;->p(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_b2

    const/4 v14, 0x1

    goto :goto_90

    :cond_b2
    const/4 v14, 0x0

    :goto_90
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    if-ne v5, v15, :cond_b5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b4

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/m;->i:Ljava/lang/Long;

    if-nez v5, :cond_b3

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/m;->j:Ljava/lang/Long;

    if-nez v5, :cond_b3

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/m;->k:Ljava/lang/Boolean;

    if-eqz v5, :cond_b4

    :cond_b3
    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v5}, Lcom/google/android/gms/measurement/internal/m;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v6

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b4
    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/internal/measurement/l2;->i(ILcom/google/android/gms/internal/measurement/c2;)V

    :goto_91
    const-wide/32 v28, 0x5265c00

    goto/16 :goto_95

    :cond_b5
    invoke-virtual {v8, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_b7

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v13, v5}, Lcom/google/android/gms/measurement/internal/b3;->O(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b6

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v5, v6}, Lcom/google/android/gms/measurement/internal/m;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v7

    :cond_b6
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->h()J

    move-result-wide v13

    invoke-virtual {v7, v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/m;->b(JJ)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v28, 0x5265c00

    goto :goto_94

    :cond_b7
    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/m;->h:Ljava/lang/Long;

    if-eqz v15, :cond_b8

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/32 v28, 0x5265c00

    goto :goto_92

    :cond_b8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->g()J

    move-result-wide v31

    add-long v19, v19, v31

    const-wide/32 v28, 0x5265c00

    div-long v19, v19, v28

    :goto_92
    cmp-long v15, v19, v11

    if-eqz v15, :cond_ba

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v15, v30

    invoke-static {v10, v15, v6}, Lcom/google/android/gms/measurement/internal/b3;->O(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {v39 .. v39}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v13, v5}, Lcom/google/android/gms/measurement/internal/b3;->O(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b9

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v5, v6}, Lcom/google/android/gms/measurement/internal/m;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v7

    :cond_b9
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->h()J

    move-result-wide v13

    invoke-virtual {v7, v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/m;->b(JJ)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v6

    :goto_93
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_94

    :cond_ba
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11, v11}, Lcom/google/android/gms/measurement/internal/m;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v6

    goto :goto_93

    :cond_bb
    :goto_94
    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/internal/measurement/l2;->i(ILcom/google/android/gms/internal/measurement/c2;)V

    :goto_95
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v18

    move-object/from16 v14, v43

    const-wide/16 v6, -0x1

    goto/16 :goto_86

    :catchall_25
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, p0

    goto/16 :goto_b0

    :catchall_26
    move-exception v0

    :goto_96
    move-object v1, v0

    goto/16 :goto_84

    :cond_bc
    move-object/from16 v18, v5

    move-object/from16 v43, v14

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_29

    :try_start_99
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/m2;->e1()I

    move-result v6
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_28

    if-ge v5, v6, :cond_be

    :try_start_9a
    iget-boolean v5, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_bd

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_bd
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/m2;->o0(Lcom/google/android/gms/internal/measurement/m2;)V
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_27

    :try_start_9b
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/l2;->n(Ljava/util/ArrayList;)V

    goto :goto_97

    :catchall_27
    move-exception v0

    goto :goto_96

    :cond_be
    :goto_97
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_98
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_29

    move-object/from16 v5, p0

    :try_start_9c
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/i;->r(Lcom/google/android/gms/measurement/internal/m;)V

    goto :goto_98

    :cond_bf
    :goto_99
    move-object/from16 v5, p0

    goto :goto_9b

    :catchall_28
    move-exception v0

    goto :goto_9a

    :catchall_29
    move-exception v0

    :goto_9a
    move-object/from16 v5, p0

    goto/16 :goto_ae

    :cond_c0
    move-object/from16 v18, v5

    move-object/from16 v43, v14

    goto :goto_99

    :goto_9b
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v4

    if-nez v4, :cond_c1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_2e

    goto/16 :goto_a1

    :cond_c1
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    :try_start_9d
    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m2;->e1()I

    move-result v7

    if-lez v7, :cond_ca

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/c4;->i:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_c3

    iget-boolean v9, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_c2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_c2
    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/m2;->z0(Lcom/google/android/gms/internal/measurement/m2;J)V

    goto :goto_9c

    :cond_c3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l2;->t()V

    :goto_9c
    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v9, v4, Lcom/google/android/gms/measurement/internal/c4;->h:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_c4

    goto :goto_9d

    :cond_c4
    move-wide v7, v9

    :goto_9d
    cmp-long v9, v7, v11

    if-eqz v9, :cond_c6

    iget-boolean v9, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_c5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_c5
    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/m2;->x0(Lcom/google/android/gms/internal/measurement/m2;J)V

    goto :goto_9e

    :cond_c6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l2;->u()V

    :goto_9e
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/c4;->g:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v7, v9

    if-lez v9, :cond_c7

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/c4;->b:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v9, "Bundle index overflow. appId"

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v9, v11

    goto :goto_9f

    :cond_c7
    move-wide v9, v7

    :goto_9f
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide v9, v4, Lcom/google/android/gms/measurement/internal/c4;->g:J

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/c4;->g:J

    long-to-int v6, v6

    iget-boolean v7, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v7, :cond_c8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_c8
    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/measurement/m2;->V(Lcom/google/android/gms/internal/measurement/m2;I)V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/m2;->q1()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/c4;->u(J)V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/m2;->m1()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/c4;->s(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c4;->C()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c9

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/l2;->j(Ljava/lang/String;)V

    goto :goto_a0

    :cond_c9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l2;->r()V

    :goto_a0
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/i;->q(Lcom/google/android/gms/measurement/internal/c4;)V

    :cond_ca
    :goto_a1
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m2;->e1()I

    move-result v4

    if-lez v4, :cond_d4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v38 .. v38}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, v38

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/o3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t1;

    move-result-object v4

    if-eqz v4, :cond_cd

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/t1;->C()Z

    move-result v6

    if-nez v6, :cond_cb

    goto :goto_a3

    :cond_cb
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/t1;->n()J

    move-result-wide v6

    iget-boolean v4, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v4, :cond_cc

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_cc
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    :goto_a2
    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/m2;->g0(Lcom/google/android/gms/internal/measurement/m2;J)V

    goto :goto_a4

    :cond_cd
    :goto_a3
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m2;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_cf

    iget-boolean v4, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v4, :cond_ce

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_ce
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    const-wide/16 v6, -0x1

    goto :goto_a2

    :cond_cf
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a4
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_2e

    iget-object v6, v4, Lb0/h;->a:Ljava/lang/Object;

    :try_start_9e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v4}, Lb0/h;->k()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->R0()Z

    move-result v7

    if-eqz v7, :cond_d3

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->T()V

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/t3;->e()Lg3/a;

    move-result-object v7

    check-cast v7, Lc3/l;

    invoke-virtual {v7}, Lc3/l;->e()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->m1()J

    move-result-wide v9

    move-object v11, v6

    check-cast v11, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/google/android/gms/measurement/internal/o2;->D:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v7, v12

    cmp-long v9, v9, v12

    if-ltz v9, :cond_d0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->m1()J

    move-result-wide v9

    move-object v12, v6

    check-cast v12, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v11, v7

    cmp-long v9, v9, v11

    if-lez v9, :cond_d1

    :cond_d0
    move-object v9, v6

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v9

    const-string v10, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->m1()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v10, v11, v7, v8}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/t3;->b()[B

    move-result-object v7
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_2e

    :try_start_9f
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/b3;->N([B)[B

    move-result-object v7
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_9f} :catch_21
    .catchall {:try_start_9f .. :try_end_9f} :catchall_2e

    :try_start_a0
    move-object v8, v6

    check-cast v8, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v8

    const-string v9, "Saving bundle, size"

    array-length v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v18

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "bundle_end_timestamp"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->m1()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v9, v43

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v7, "has_realtime"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->X0()Z

    move-result v7

    if-eqz v7, :cond_d2

    const-string v7, "retry_count"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->g1()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_2e

    :cond_d2
    :try_start_a1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v7, "queue"

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v4, v7, v9

    if-nez v4, :cond_d4

    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v7, "Failed to insert bundle (got -1). appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a1 .. :try_end_a1} :catch_20
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_2e

    goto :goto_a7

    :catch_20
    move-exception v0

    move-object v4, v0

    :try_start_a2
    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v6

    const-string v7, "Error storing bundle. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v2

    :goto_a5
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v2

    goto :goto_a6

    :catch_21
    move-exception v0

    move-object v4, v0

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v6

    const-string v7, "Data loss. Failed to serialize bundle. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v2

    goto :goto_a5

    :goto_a6
    invoke-virtual {v6, v7, v2, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a7

    :cond_d3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_d4
    :goto_a7
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/h3;->c:Ljava/io/Serializable;

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_a8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d6

    if-eqz v6, :cond_d5

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d5
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    :cond_d6
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_d7

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v6, "Deleted fewer rows from raw events table than expected"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v4, v3}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d7
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_2e

    const/4 v4, 0x2

    :try_start_a3
    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    invoke-virtual {v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a3 .. :try_end_a3} :catch_22
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_2e

    goto :goto_a9

    :catch_22
    move-exception v0

    move-object v3, v0

    :try_start_a4
    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v1

    invoke-virtual {v2, v4, v1, v3}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a9
    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_2e

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    const/4 v1, 0x1

    return v1

    :catchall_2a
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_ae

    :catchall_2b
    move-exception v0

    move-object/from16 v5, p0

    move-object v9, v1

    move-object v1, v0

    :goto_aa
    if-eqz v9, :cond_d8

    :try_start_a5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_ab

    :catchall_2c
    move-exception v0

    goto :goto_ae

    :cond_d8
    :goto_ab
    throw v1
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_2c

    :catchall_2d
    move-exception v0

    move-object v5, v1

    move-object v2, v0

    :goto_ac
    move-object v1, v2

    goto :goto_af

    :cond_d9
    :goto_ad
    move-object v5, v1

    :try_start_a6
    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_2e

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    const/4 v1, 0x0

    return v1

    :catchall_2e
    move-exception v0

    goto :goto_ae

    :catchall_2f
    move-exception v0

    move-object v5, v1

    :goto_ae
    move-object v1, v0

    :goto_af
    move-object v2, v1

    :goto_b0
    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    throw v2
.end method

.method public final F()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v1, "select count(1) > 0 from raw_events"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->L()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final G(Lcom/google/android/gms/internal/measurement/c2;Lcom/google/android/gms/internal/measurement/c2;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lva/n;->c(Z)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/b3;->o(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h2;->s()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/d2;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/b3;->o(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->s()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c2;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lva/n;->c(Z)V

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/b3;->o(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h2;->G()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h2;->o()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h2;->o()J

    move-result-wide v2

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/b3;->o(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h2;->o()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h2;->o()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_3
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/b3;->O(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "_fr"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/measurement/internal/b3;->O(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;
    .locals 14

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/s7;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/o2;->q0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/w5;->z:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->F:Ljava/util/HashMap;

    new-instance v3, Lcom/google/android/gms/measurement/internal/p5;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/measurement/internal/p5;-><init>(Lcom/google/android/gms/measurement/internal/q5;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/w5;->y:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/f;->c(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v4

    const-string v5, ""

    iget-boolean v6, p1, Lcom/google/android/gms/measurement/internal/w5;->p:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    invoke-virtual {v4, v0, v6}, Lcom/google/android/gms/measurement/internal/e5;->p(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/measurement/internal/c4;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    invoke-direct {v1, v5, v0}, Lcom/google/android/gms/measurement/internal/c4;-><init>(Lcom/google/android/gms/measurement/internal/t3;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/q5;->R(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c4;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/c4;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/c4;->e:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/c4;->w(Ljava/lang/String;)V

    if-eqz v6, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/e5;->o(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/util/Pair;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v4, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/q5;->R(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/c4;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v3, "_id"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/measurement/internal/i;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s5;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v3, "_lair"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/measurement/internal/i;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s5;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v0

    check-cast v0, Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    new-instance v0, Lcom/google/android/gms/measurement/internal/s5;

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    const-string v9, "auto"

    const-string v10, "_lair"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/i;->v(Lcom/google/android/gms/measurement/internal/s5;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c4;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/q5;->R(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c4;->b(Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c4;->p(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c4;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c4;->o(Ljava/lang/String;)V

    :cond_7
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/w5;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c4;->q(J)V

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c4;->d(Ljava/lang/String;)V

    :cond_9
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/w5;->j:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c4;->e(J)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c4;->c(Ljava/lang/String;)V

    :cond_a
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/w5;->f:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c4;->m(J)V

    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/w5;->h:Z

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c4;->v(Z)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c4;->r(Ljava/lang/String;)V

    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/c4;->p:Z

    const/4 v4, 0x1

    if-eq v3, v6, :cond_c

    move v3, v4

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-boolean v6, v1, Lcom/google/android/gms/measurement/internal/c4;->p:Z

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/c4;->r:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/w5;->u:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-object v5, v1, Lcom/google/android/gms/measurement/internal/c4;->r:Ljava/lang/Boolean;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/w5;->v:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c4;->n(J)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/o2;->o0:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/c4;->u:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/w5;->A:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-object v6, v1, Lcom/google/android/gms/measurement/internal/c4;->u:Ljava/lang/String;

    :cond_d
    sget-object v2, Lcom/google/android/gms/internal/measurement/o6;->b:Lcom/google/android/gms/internal/measurement/o6;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/o6;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->g0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/w5;->w:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/c4;->x(Ljava/util/List;)V

    goto :goto_4

    :cond_e
    iget-object p1, v2, Lcom/google/android/gms/internal/measurement/o6;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/measurement/internal/o2;->f0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {p1, v5, v2}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/c4;->x(Ljava/util/List;)V

    :cond_f
    :goto_4
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean p1, v1, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/i;->q(Lcom/google/android/gms/measurement/internal/c4;)V

    :cond_10
    return-object v1
.end method

.method public final K()Lcom/google/android/gms/measurement/internal/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    return-object p0
.end method

.method public final L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;
    .locals 6

    sget-object v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->E:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/f;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select consent_state from consent_settings where app_id=? limit 1;"

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-string v0, "G1"

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/q5;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    iget-object p1, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Database error"

    invoke-virtual {p1, v0, v4, p0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final M()Lcom/google/android/gms/measurement/internal/i;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    return-object p0
.end method

.method public final N()Lcom/google/android/gms/measurement/internal/d3;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->d:Lcom/google/android/gms/measurement/internal/d3;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Network broadcast receiver not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final P()Lcom/google/android/gms/measurement/internal/b3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    return-object p0
.end method

.method public final Q()Lcom/google/android/gms/measurement/internal/u5;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    return-object p0
.end method

.method public final R(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u5;->t()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    const-string p1, "%032x"

    invoke-static {p0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/q5;->n:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/q5;->n:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->y:Ljava/nio/channels/FileLock;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    const/4 v3, 0x0

    const-string v4, "Storage concurrent access okay"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    const-string v6, "google_app_measurement.db"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v1, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->z:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->y:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_1
    move v1, v0

    goto :goto_5

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Storage concurrent data access panic"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    const-string v5, "Storage lock already acquired"

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    const-string v5, "Failed to access storage lock file"

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    const-string v5, "Failed to acquire storage lock"

    :goto_2
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    :goto_3
    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    move v1, v3

    :goto_5
    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->z:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    const-wide/16 v4, 0x0

    const-string v6, "Bad channel to read from"

    const/4 v7, 0x4

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_6

    :cond_3
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v7, :cond_4

    const/4 v8, -0x1

    if-eq v1, v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v9, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_4
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v8

    const-string v9, "Failed to read from channel"

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v8, v1, v9}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_6
    :goto_7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget v1, v1, Lcom/google/android/gms/measurement/internal/r2;->e:I

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    if-le v3, v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Panic: can\'t downgrade version. Previous, current version"

    goto/16 :goto_a

    :cond_7
    if-ge v3, v1, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->z:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_8

    :cond_8
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Error writing to channel. Bytes written"

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Storage version upgraded. Previous, current version"

    goto :goto_a

    :catch_4
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    const-string v4, "Failed to write to channel"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Storage version upgrade failed. Previous, current version"

    :goto_a
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/s3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    return-object p0
.end method

.method public final c()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/x2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    return-object p0
.end method

.method public final e()Lg3/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    return-object p0
.end method

.method public final f()Landroidx/work/impl/x;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final g()V
    .locals 1

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/q5;->m:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "UploadController is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Lcom/google/android/gms/measurement/internal/c4;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lva/n;->i(Ljava/lang/Object;)V

    const/16 v4, 0xcc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/q5;->l(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_1
    :goto_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->H()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->B()Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object v3, Lcom/google/android/gms/measurement/internal/o2;->f:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->g:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "config/app/"

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v5, "android"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/q5;->j:Lcom/google/android/gms/measurement/internal/o5;

    iget-object v5, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->o()V

    const-wide/32 v5, 0x11d28

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "gmp_version"

    invoke-virtual {v2, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v5, "runtime_version"

    const-string v6, "0"

    invoke-virtual {v2, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/s7;->b()V

    iget-object v2, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->D()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->h0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "app_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->D()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lva/n;->i(Ljava/lang/Object;)V

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Fetching remote configuration"

    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/o3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t1;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/o3;->m:Ll/b;

    invoke-virtual {v3, v7, v4}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ll/b;

    invoke-direct {v2}, Ll/b;-><init>()V

    const-string v5, "If-Modified-Since"

    invoke-virtual {v2, v5, v3}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v2, v4

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s7;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->t0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->n:Ll/b;

    invoke-virtual {v0, v7, v4}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v2, :cond_5

    new-instance v2, Ll/b;

    invoke-direct {v2}, Ll/b;-><init>()V

    :cond_5
    move-object v4, v2

    const-string v2, "If-None-Match"

    invoke-virtual {v4, v2, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move-object v10, v2

    goto :goto_3

    :cond_7
    :goto_2
    move-object v10, v4

    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/q5;->v:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/q5;->b:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    new-instance v11, Ld/s0;

    const/16 v0, 0x15

    invoke-direct {v11, p0, v0}, Ld/s0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6}, Lb0/h;->k()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    iget-object v0, v6, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v2, Lcom/google/android/gms/measurement/internal/a3;

    const/4 v9, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/a3;-><init>(Lcom/google/android/gms/measurement/internal/b3;Ljava/lang/String;Ljava/net/URL;[BLl/b;Lcom/google/android/gms/measurement/internal/z2;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/s3;->r(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-static/range {p2 .. p2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v2}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    move-object/from16 v3, p1

    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/o;->d:J

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/y2;->c(Lcom/google/android/gms/measurement/internal/o;)Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/q5;->G:Lcom/google/android/gms/measurement/internal/r4;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/q5;->H:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/q5;->G:Lcom/google/android/gms/measurement/internal/r4;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/y2;->e:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/u5;->x(Lcom/google/android/gms/measurement/internal/r4;Landroid/os/Bundle;Z)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y2;->b()Lcom/google/android/gms/measurement/internal/o;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/w5;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v12, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/w5;->t:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v12

    :goto_2
    if-nez v4, :cond_3

    return-void

    :cond_3
    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/w5;->h:Z

    if-nez v4, :cond_4

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    return-void

    :cond_4
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/w5;->w:Ljava/util/List;

    if-eqz v4, :cond_6

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/n;->b()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ga_safelisted"

    const-wide/16 v7, 0x1

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/o;

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/o;->c:Ljava/lang/String;

    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/o;->d:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v7

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n;Ljava/lang/String;J)V

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/o;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {v0, v3, v2, v5, v1}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    move-object v13, v3

    :goto_3
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->Q()V

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {v2}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Lb0/h;->k()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    const/4 v5, 0x2

    if-gez v4, :cond_7

    iget-object v3, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "Invalid time querying timed out conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_4

    :cond_7
    new-array v7, v5, [Ljava/lang/String;

    aput-object v2, v7, v6

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    invoke-virtual {v3, v8, v7}, Lcom/google/android/gms/measurement/internal/i;->N(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    if-eqz v7, :cond_a

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/c;

    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v9, "User property timed out"

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v14, v12}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v8, v9, v15, v12, v14}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/c;->g:Lcom/google/android/gms/measurement/internal/o;

    if-eqz v8, :cond_9

    new-instance v9, Lcom/google/android/gms/measurement/internal/o;

    invoke-direct {v9, v8, v10, v11}, Lcom/google/android/gms/measurement/internal/o;-><init>(Lcom/google/android/gms/measurement/internal/o;J)V

    invoke-virtual {v1, v9, v0}, Lcom/google/android/gms/measurement/internal/q5;->v(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_9
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v8, v2, v7}, Lcom/google/android/gms/measurement/internal/i;->z(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {v2}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Lb0/h;->k()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    if-gez v4, :cond_b

    iget-object v3, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "Invalid time querying expired conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :cond_b
    new-array v7, v5, [Ljava/lang/String;

    aput-object v2, v7, v6

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    invoke-virtual {v3, v8, v7}, Lcom/google/android/gms/measurement/internal/i;->N(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/c;

    if-eqz v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v12, "User property expired"

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v12, v15, v5, v6}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/measurement/internal/i;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/c;->k:Lcom/google/android/gms/measurement/internal/o;

    if-eqz v5, :cond_d

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/measurement/internal/i;->z(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto :goto_7

    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/o;

    new-instance v6, Lcom/google/android/gms/measurement/internal/o;

    invoke-direct {v6, v5, v10, v11}, Lcom/google/android/gms/measurement/internal/o;-><init>(Lcom/google/android/gms/measurement/internal/o;J)V

    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/measurement/internal/q5;->v(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_8

    :cond_f
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, v3, Lb0/h;->a:Ljava/lang/Object;

    :try_start_2
    iget-object v6, v13, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    invoke-static {v2}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {v6}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Lb0/h;->k()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    if-gez v4, :cond_10

    move-object v3, v5

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Invalid time querying triggered conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v2

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_9

    :cond_10
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v6, v4, v2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string v2, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/measurement/internal/i;->N(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/gms/measurement/internal/c;

    if-eqz v15, :cond_11

    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    new-instance v9, Lcom/google/android/gms/measurement/internal/s5;

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v4}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lva/n;->i(Ljava/lang/Object;)V

    move-object v3, v9

    move-wide v7, v10

    move-object/from16 v17, v2

    move-object v2, v9

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/s5;->c:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/i;->v(Lcom/google/android/gms/measurement/internal/s5;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "User property triggered"

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    :goto_b
    invoke-virtual {v8, v4}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "Too many active user properties, ignoring"

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v7

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    goto :goto_b

    :goto_c
    invoke-virtual {v5, v6, v7, v4, v3}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/c;->i:Lcom/google/android/gms/measurement/internal/o;

    if-eqz v3, :cond_13

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    new-instance v3, Lcom/google/android/gms/measurement/internal/r5;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/r5;-><init>(Lcom/google/android/gms/measurement/internal/s5;)V

    iput-object v3, v15, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/google/android/gms/measurement/internal/c;->e:Z

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/i;->u(Lcom/google/android/gms/measurement/internal/c;)Z

    move-object/from16 v2, v17

    goto :goto_a

    :cond_14
    invoke-virtual {v1, v13, v0}, Lcom/google/android/gms/measurement/internal/q5;->v(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/o;

    new-instance v4, Lcom/google/android/gms/measurement/internal/o;

    invoke-direct {v4, v3, v10, v11}, Lcom/google/android/gms/measurement/internal/o;-><init>(Lcom/google/android/gms/measurement/internal/o;J)V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/q5;->v(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_d

    :cond_15
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    throw v0
.end method

.method public final j(Lcom/google/android/gms/measurement/internal/o;Ljava/lang/String;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c4;->F()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/q5;->A(Lcom/google/android/gms/measurement/internal/c4;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "_ui"

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "App version does not match; dropping event. appId"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    new-instance v15, Lcom/google/android/gms/measurement/internal/w5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c4;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c4;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c4;->z()J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/c4;->l:Ljava/lang/String;

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/c4;->m:J

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/c4;->n:J

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v14, v2, Lcom/google/android/gms/measurement/internal/c4;->o:Z

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c4;->G()Ljava/lang/String;

    move-result-object v16

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c4;->y()Z

    move-result v21

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c4;->B()Ljava/lang/String;

    move-result-object v23

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/c4;->r:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c4;->A()J

    move-result-wide v25

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/c4;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->e()Ljava/lang/String;

    move-result-object v27

    const-string v28, ""

    const/16 v29, 0x0

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v30, v8

    move-object v8, v9

    move-wide v9, v10

    move-wide v11, v12

    const/4 v13, 0x0

    move-object/from16 v31, v15

    move/from16 v15, v17

    move-wide/from16 v17, v18

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v1

    move-wide/from16 v24, v25

    move-object/from16 v26, v30

    invoke-direct/range {v2 .. v29}, Lcom/google/android/gms/measurement/internal/w5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/q5;->k(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    const-string v1, "No app data available; dropping event"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 12

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/y2;->c(Lcom/google/android/gms/measurement/internal/o;)Lcom/google/android/gms/measurement/internal/y2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/y2;->e:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    iget-object v4, v2, Lb0/h;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const-string v9, "select parameters from default_event_params where app_id=?"

    invoke-virtual {v6, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v2, v4

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "Default event parameters not found"

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d2;->p()Lcom/google/android/gms/internal/measurement/c2;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/android/gms/measurement/internal/b3;->D(Lcom/google/android/gms/internal/measurement/k4;[B)Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/c2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/d2;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/q5;->P()Lcom/google/android/gms/measurement/internal/b3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d2;->t()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v2

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/h2;->E()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/h2;->l()D

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/h2;->F()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/h2;->m()F

    move-result v8

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/h2;->I()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/h2;->s()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/h2;->G()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/h2;->o()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_4
    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "Failed to retrieve default event parameters. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_2
    move-exception v2

    move-object v6, v5

    :goto_1
    :try_start_5
    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "Error selecting default event parameters"

    invoke-virtual {v4, v2, v7}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v6, :cond_6

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/u5;->y(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/gms/measurement/internal/o2;->I:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x19

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/u5;->z(Lcom/google/android/gms/measurement/internal/y2;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/y2;->b()Lcom/google/android/gms/measurement/internal/o;

    move-result-object p1

    const-string v0, "_cmp"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/n;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    const-string v2, "_cis"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer API v2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/measurement/internal/r5;

    const-string v6, "_lgclid"

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/o;->d:J

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/q5;->t(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_8
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/q5;->i(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    return-void

    :catchall_1
    move-exception p0

    move-object v5, v6

    :goto_5
    if-eqz v5, :cond_9

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p0
.end method

.method public final l(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    invoke-static {p1}, Lva/n;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->Q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v1

    const/4 v3, 0x1

    const/16 v4, 0xc8

    const/16 v5, 0x130

    if-eq p2, v4, :cond_1

    const/16 v4, 0xcc

    if-eq p2, v4, :cond_1

    if-ne p2, v5, :cond_2

    move p2, v5

    :cond_1
    if-nez p3, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_b

    :cond_3
    const/16 v6, 0x194

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    const/4 v8, 0x0

    if-nez v4, :cond_7

    if-ne p2, v6, :cond_4

    goto/16 :goto_2

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object p4

    check-cast p4, Lc3/l;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/c4;->E:J

    cmp-long v4, v4, p4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v0

    :goto_1
    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p4, v1, Lcom/google/android/gms/measurement/internal/c4;->E:J

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/i;->q(Lcom/google/android/gms/measurement/internal/c4;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p4

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v7}, Lb0/h;->k()V

    iget-object p3, v7, Lcom/google/android/gms/measurement/internal/o3;->m:Ll/b;

    invoke-virtual {p3, p1, v8}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e5;->h:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object p3

    check-cast p3, Lc3/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_10

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e5;->f:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object p2

    check-cast p2, Lc3/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    goto/16 :goto_a

    :catchall_0
    move-exception p1

    goto/16 :goto_c

    :cond_7
    :goto_2
    if-eqz p5, :cond_8

    const-string p3, "Last-Modified"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    goto :goto_3

    :cond_8
    move-object p3, v8

    :goto_3
    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object p3, v8

    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s7;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->t0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v8, v4}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz p5, :cond_a

    const-string v3, "ETag"

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_5

    :cond_a
    move-object p5, v8

    :goto_5
    if-eqz p5, :cond_b

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_6

    :cond_b
    move-object p5, v8

    :goto_6
    if-eq p2, v6, :cond_d

    if-ne p2, v5, :cond_c

    goto :goto_7

    :cond_c
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v7, p1, p4, p3, p5}, Lcom/google/android/gms/measurement/internal/o3;->z(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    :goto_7
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v7, p1}, Lcom/google/android/gms/measurement/internal/o3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t1;

    move-result-object p3

    if-nez p3, :cond_e

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v7, p1, v8, v8, v8}, Lcom/google/android/gms/measurement/internal/o3;->z(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object p3

    check-cast p3, Lc3/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/c4;->f(J)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/i;->q(Lcom/google/android/gms/measurement/internal/c4;)V

    if-ne p2, v6, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->b:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/b3;->y()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->F()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->u()V

    goto :goto_b

    :cond_10
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->D()V

    :goto_b
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->R()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/q5;->v:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->B()V

    return-void

    :goto_c
    :try_start_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->R()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/q5;->v:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->B()V

    throw p1
.end method

.method public final m(Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "com.android.vending"

    const-string v6, "_pfo"

    const-string v7, "_uwa"

    const-string v0, "app_id=?"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    invoke-static/range {p1 .. p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v8}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/q5;->H(Lcom/google/android/gms/measurement/internal/w5;)Z

    move-result v9

    if-eqz v9, :cond_26

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v9

    const-wide/16 v10, 0x0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/w5;->b:Ljava/lang/String;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/c4;->H()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/c4;->f(J)V

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v13, v9}, Lcom/google/android/gms/measurement/internal/i;->q(Lcom/google/android/gms/measurement/internal/c4;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v9}, Lb0/h;->k()V

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/o3;->h:Ll/b;

    invoke-virtual {v9, v8}, Ll/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/w5;->h:Z

    if-nez v9, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    return-void

    :cond_1
    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/w5;->m:J

    cmp-long v9, v13, v10

    if-nez v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v9

    check-cast v9, Lc3/l;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    :cond_2
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/t3;->o()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v15

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v15}, Lb0/h;->k()V

    move-object/from16 v21, v9

    const/4 v9, 0x0

    iput-object v9, v15, Lcom/google/android/gms/measurement/internal/k;->f:Ljava/lang/Boolean;

    iput-wide v10, v15, Lcom/google/android/gms/measurement/internal/k;->g:J

    const/4 v15, 0x1

    iget v11, v2, Lcom/google/android/gms/measurement/internal/w5;->n:I

    if-eqz v11, :cond_3

    if-eq v11, v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v9

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v15, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v9, v15, v10, v11}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    :cond_3
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/i;->Q()V

    :try_start_0
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v10, "_npa"

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/i;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s5;

    move-result-object v9

    move-object v10, v3

    move-object/from16 v22, v4

    if-eqz v9, :cond_5

    const-string v15, "auto"

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/s5;->b:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    :goto_0
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/w5;->u:Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    new-instance v4, Lcom/google/android/gms/measurement/internal/r5;

    const-string v19, "_npa"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v15, 0x1

    if-eq v15, v3, :cond_6

    const-wide/16 v16, 0x0

    goto :goto_1

    :cond_6
    const-wide/16 v16, 0x1

    :goto_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v20, "auto"

    move v3, v15

    move-object v15, v4

    move-wide/from16 v16, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_7

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    iget-object v15, v4, Lcom/google/android/gms/measurement/internal/r5;->d:Ljava/lang/Long;

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    :cond_7
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/q5;->t(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_2

    :cond_8
    const/4 v3, 0x1

    if-eqz v9, :cond_9

    new-instance v4, Lcom/google/android/gms/measurement/internal/r5;

    const-string v19, "_npa"

    const/16 v18, 0x0

    const-string v20, "auto"

    move-object v15, v4

    move-wide/from16 v16, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/q5;->o(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_9
    :goto_2
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {v8}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c4;->H()Ljava/lang/String;

    move-result-object v9

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/w5;->t:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c4;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v9, v15, v3}, Lcom/google/android/gms/measurement/internal/u5;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v9, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c4;->D()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v12

    invoke-virtual {v3, v12, v9}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v3, Lb0/h;->a:Ljava/lang/Object;

    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c4;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v3}, Lb0/h;->k()V

    invoke-static {v4}, Lva/n;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v15, v12

    const-string v12, "events"

    invoke-virtual {v3, v12, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v23, v10

    :try_start_3
    const-string v10, "user_attributes"

    invoke-virtual {v3, v10, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    const-string v10, "conditional_properties"

    invoke-virtual {v3, v10, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    const-string v10, "apps"

    invoke-virtual {v3, v10, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    const-string v10, "raw_events"

    invoke-virtual {v3, v10, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    const-string v10, "raw_events_metadata"

    invoke-virtual {v3, v10, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    const-string v10, "event_filters"

    invoke-virtual {v3, v10, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    const-string v10, "property_filters"

    invoke-virtual {v3, v10, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    const-string v10, "audience_filter_values"

    invoke-virtual {v3, v10, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    const-string v10, "consent_settings"

    invoke-virtual {v3, v10, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/d7;->a()V

    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v24, v6

    :try_start_4
    sget-object v6, Lcom/google/android/gms/measurement/internal/o2;->x0:Lcom/google/android/gms/measurement/internal/n2;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v25, v7

    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v10, v7, v6}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "default_event_params"

    invoke-virtual {v3, v6, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v12, v0

    :cond_a
    if-lez v12, :cond_b

    move-object v0, v9

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Deleted application data. app, records"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v24, v6

    :goto_3
    move-object/from16 v25, v7

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v23, v10

    :goto_4
    :try_start_6
    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "Error deleting application data. appId, error"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_5
    const/4 v4, 0x0

    goto :goto_6

    :cond_c
    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v23, v10

    :goto_6
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c4;->z()J

    move-result-wide v6

    const-wide/32 v9, -0x80000000

    cmp-long v0, v6, v9

    if-eqz v0, :cond_d

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c4;->z()J

    move-result-wide v6

    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/w5;->j:J

    cmp-long v0, v6, v9

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c4;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c4;->z()J

    move-result-wide v6

    const-wide/32 v9, -0x80000000

    cmp-long v4, v6, v9

    if-nez v4, :cond_e

    if-eqz v3, :cond_e

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/w5;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v15, 0x1

    goto :goto_8

    :cond_e
    const/4 v15, 0x0

    :goto_8
    or-int/2addr v0, v15

    if-eqz v0, :cond_f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pv"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/o;

    new-instance v4, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    const-string v16, "_au"

    const-string v18, "auto"

    move-object v15, v3

    move-object/from16 v17, v4

    move-wide/from16 v19, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n;Ljava/lang/String;J)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/q5;->i(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    if-nez v11, :cond_10

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v3, "_f"

    invoke-virtual {v0, v8, v3}, Lcom/google/android/gms/measurement/internal/i;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    const/4 v15, 0x0

    goto :goto_9

    :cond_10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v3, "_v"

    invoke-virtual {v0, v8, v3}, Lcom/google/android/gms/measurement/internal/i;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    const/4 v15, 0x1

    :goto_9
    if-nez v0, :cond_24

    const-wide/32 v3, 0x36ee80

    div-long v6, v13, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide/16 v9, 0x1

    add-long/2addr v6, v9

    mul-long/2addr v6, v3

    const-string v3, "_dac"

    const-string v4, "_et"

    const-string v9, "_r"

    const-string v10, "_c"

    iget-boolean v11, v2, Lcom/google/android/gms/measurement/internal/w5;->q:Z

    if-nez v15, :cond_22

    :try_start_7
    new-instance v0, Lcom/google/android/gms/measurement/internal/r5;

    const-string v19, "_fot"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v20, "auto"

    move-object v15, v0

    move-wide/from16 v16, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/q5;->t(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->k:Lcom/google/android/gms/measurement/internal/k3;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/t3;

    if-eqz v6, :cond_11

    :try_start_8
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->j:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Install Referrer Reporter was called with invalid app package name"

    :goto_a
    move-wide/from16 v26, v13

    goto/16 :goto_b

    :cond_11
    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k3;->a()Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Install Referrer Reporter is not available"

    goto :goto_a

    :cond_12
    new-instance v6, Lcom/google/android/gms/measurement/internal/j3;

    const/4 v12, 0x0

    invoke-direct {v6, v12, v0, v8}, Lcom/google/android/gms/measurement/internal/j3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    :try_start_9
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    new-instance v12, Landroid/content/Intent;

    const-string v2, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    move-wide/from16 v26, v13

    const-string v13, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v2, v5, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    if-nez v2, :cond_13

    :try_start_a
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/x2;->j:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    goto :goto_b

    :cond_13
    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_16

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_17

    iget-object v13, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k3;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-static {}, Lf3/a;->b()Lf3/a;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v15, v0, v6, v5}, Lf3/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Install Referrer Service is"
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    const-string v6, "available"

    const-string v12, "not available"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v13, 0x1

    if-eq v13, v0, :cond_14

    move-object v6, v12

    :cond_14
    :try_start_d
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_c

    :catch_4
    move-exception v0

    :try_start_e
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Exception occurred while binding to Install Referrer Service"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Play Store version 8.3.73 or higher required for Install Referrer"

    goto :goto_b

    :cond_16
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Play Service for fetching Install Referrer is unavailable on device"

    :goto_b
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_17
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1

    invoke-virtual {v2, v10, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v9, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v5, v25

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v9, v24

    invoke-virtual {v2, v9, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v10, v22

    invoke-virtual {v2, v10, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v12, v23

    invoke-virtual {v2, v12, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v6, 0x1

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v11, :cond_18

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_18
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {v8}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/i;->B(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object/from16 v5, p1

    goto/16 :goto_13

    :cond_19
    :try_start_f
    invoke-static/range {v21 .. v21}, Lh3/b;->a(Landroid/content/Context;)Ld/s0;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v8}, Ld/s0;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_d

    :catch_5
    move-exception v0

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Package info is null, first open report might be inaccurate. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v11

    invoke-virtual {v3, v4, v11, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_1e

    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v3, v13

    if-eqz v11, :cond_1e

    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v3, v13

    if-eqz v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/o2;->b0:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-nez v0, :cond_1b

    const-wide/16 v13, 0x1

    invoke-virtual {v2, v5, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v6, 0x0

    goto :goto_e

    :cond_1a
    const-wide/16 v13, 0x1

    invoke-virtual {v2, v5, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1b
    :goto_e
    const/4 v15, 0x0

    goto :goto_f

    :cond_1c
    const/4 v4, 0x0

    const/4 v15, 0x1

    :goto_f
    new-instance v0, Lcom/google/android/gms/measurement/internal/r5;

    const-string v19, "_fi"

    const/4 v3, 0x1

    if-eq v3, v15, :cond_1d

    const-wide/16 v13, 0x0

    goto :goto_10

    :cond_1d
    const-wide/16 v13, 0x1

    :goto_10
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v20, "auto"

    move-object v15, v0

    move-wide/from16 v16, v26

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p1

    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/measurement/internal/q5;->t(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_11

    :cond_1e
    move-object/from16 v5, p1

    const/4 v4, 0x0

    :goto_11
    :try_start_11
    invoke-static/range {v21 .. v21}, Lh3/b;->a(Landroid/content/Context;)Ld/s0;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v8}, Ld/s0;->l(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_12

    :catch_6
    move-exception v0

    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v8

    invoke-virtual {v3, v11, v8, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    :goto_12
    if-eqz v0, :cond_20

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1f

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v10, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1f
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_20

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v12, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_20
    :goto_13
    const-wide/16 v3, 0x0

    cmp-long v0, v6, v3

    if-ltz v0, :cond_21

    invoke-virtual {v2, v9, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_21
    new-instance v0, Lcom/google/android/gms/measurement/internal/o;

    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    const-string v16, "_f"

    const-string v18, "auto"

    move-object v15, v0

    move-object/from16 v17, v3

    move-wide/from16 v19, v26

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n;Ljava/lang/String;J)V

    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/measurement/internal/q5;->k(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    goto/16 :goto_15

    :cond_22
    move-object v5, v2

    move-wide/from16 v26, v13

    new-instance v0, Lcom/google/android/gms/measurement/internal/r5;

    const-string v19, "_fvt"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v20, "auto"

    move-object v15, v0

    move-wide/from16 v16, v26

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/measurement/internal/q5;->t(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v10, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v9, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v11, :cond_23

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_23
    new-instance v2, Lcom/google/android/gms/measurement/internal/o;

    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    const-string v16, "_v"

    const-string v18, "auto"

    move-object v15, v2

    move-object/from16 v17, v3

    move-wide/from16 v19, v26

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n;Ljava/lang/String;J)V

    goto :goto_14

    :cond_24
    move-object v5, v2

    move-wide/from16 v26, v13

    iget-boolean v0, v5, Lcom/google/android/gms/measurement/internal/w5;->i:Z

    if-eqz v0, :cond_25

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/google/android/gms/measurement/internal/o;

    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    const-string v16, "_cd"

    const-string v18, "auto"

    move-object v15, v2

    move-object/from16 v17, v3

    move-wide/from16 v19, v26

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n;Ljava/lang/String;J)V

    :goto_14
    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/measurement/internal/q5;->k(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_25
    :goto_15
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    throw v0

    :cond_26
    return-void
.end method

.method public final n(Lcom/google/android/gms/measurement/internal/c;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 9

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/q5;->H(Lcom/google/android/gms/measurement/internal/w5;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/w5;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->Q()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/i;->F(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Removing conditional user property"

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/measurement/internal/i;->z(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/c;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/measurement/internal/i;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c;->k:Lcom/google/android/gms/measurement/internal/o;

    if-eqz p1, :cond_4

    :try_start_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/n;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n;->b()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/o;->d:J

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/u5;->q0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lcom/google/android/gms/measurement/internal/o;

    move-result-object p1

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/q5;->v(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->R()V

    throw p1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    return-void
.end method

.method public final o(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/q5;->H(Lcom/google/android/gms/measurement/internal/w5;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/w5;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/w5;->u:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p1

    const-string v1, "Falling back to manifest metadata value for ad personalization"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/r5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v1

    check-cast v1, Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    :goto_0
    const-string v6, "_npa"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "auto"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/q5;->t(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Removing user property"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->Q()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {p2}, Lva/n;->i(Ljava/lang/Object;)V

    const-string v2, "_lair"

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/measurement/internal/i;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {p2}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/i;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->p()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "User property removed"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->R()V

    throw p1
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 7

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->A:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->B:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v2, v1, Lb0/h;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v3}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-static {v3}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lb0/h;->k()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v5, "apps"

    invoke-virtual {v1, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/w5;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/q5;->m(Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_2
    return-void
.end method

.method public final q(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r4;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->H:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->H:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/q5;->G:Lcom/google/android/gms/measurement/internal/r4;

    return-void
.end method

.method public final r(Lcom/google/android/gms/measurement/internal/c;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 11

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/q5;->H(Lcom/google/android/gms/measurement/internal/w5;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/w5;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/c;-><init>(Lcom/google/android/gms/measurement/internal/c;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/c;->e:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->Q()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/i;->F(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-boolean v4, v1, Lcom/google/android/gms/measurement/internal/c;->e:Z

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/c;->d:J

    iput-wide v4, v0, Lcom/google/android/gms/measurement/internal/c;->d:J

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/c;->h:J

    iput-wide v4, v0, Lcom/google/android/gms/measurement/internal/c;->h:J

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/c;->f:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/measurement/internal/c;->f:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/c;->i:Lcom/google/android/gms/measurement/internal/o;

    iput-object v4, v0, Lcom/google/android/gms/measurement/internal/c;->i:Lcom/google/android/gms/measurement/internal/o;

    iput-boolean v3, v0, Lcom/google/android/gms/measurement/internal/c;->e:Z

    new-instance v3, Lcom/google/android/gms/measurement/internal/r5;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/r5;->c:J

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/r5;->f:Ljava/lang/String;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/measurement/internal/r5;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/c;->d:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/r5;->f:Ljava/lang/String;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iput-boolean v3, v0, Lcom/google/android/gms/measurement/internal/c;->e:Z

    move p1, v3

    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/c;->e:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    new-instance v10, Lcom/google/android/gms/measurement/internal/s5;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v4}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/c;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    iget-wide v7, v1, Lcom/google/android/gms/measurement/internal/r5;->c:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lva/n;->i(Ljava/lang/Object;)V

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/s5;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/i;->v(Lcom/google/android/gms/measurement/internal/s5;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "User property updated immediately"

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    :goto_1
    invoke-virtual {v7, v3}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "(2)Too many active user properties, ignoring"

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    goto :goto_1

    :goto_2
    invoke-virtual {v4, v5, v6, v3, v1}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/c;->i:Lcom/google/android/gms/measurement/internal/o;

    if-eqz p1, :cond_6

    new-instance v1, Lcom/google/android/gms/measurement/internal/o;

    iget-wide v3, v0, Lcom/google/android/gms/measurement/internal/c;->d:J

    invoke-direct {v1, p1, v3, v4}, Lcom/google/android/gms/measurement/internal/o;-><init>(Lcom/google/android/gms/measurement/internal/o;J)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/measurement/internal/q5;->v(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/i;->u(Lcom/google/android/gms/measurement/internal/c;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    goto :goto_3

    :goto_4
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->R()V

    throw p1
.end method

.method public final s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->E:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "consent_state"

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p2, "consent_settings"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, p2, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    move-object p0, v0

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p2, "Failed to insert/update consent setting (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Error storing consent setting. appId, error"

    invoke-virtual {p2, v0, p1, p0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final t(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "_id"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/q5;->H(Lcom/google/android/gms/measurement/internal/w5;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/w5;->h:Z

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/u5;->j0(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/q5;->I:Lp5/c;

    const/4 v4, 0x1

    const/16 v5, 0x18

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    invoke-static {v7, v5, v4}, Lcom/google/android/gms/measurement/internal/u5;->r(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_2
    move v11, v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    const-string v0, "_ev"

    move-object v6, v9

    move-object v9, v0

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10, v7}, Lcom/google/android/gms/measurement/internal/u5;->f0(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    invoke-static {v7, v5, v4}, Lcom/google/android/gms/measurement/internal/u5;->r(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_4

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v14, v0

    goto :goto_1

    :cond_5
    move v14, v6

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    const-string v12, "_ev"

    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/u5;->p(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    return-void

    :cond_7
    const-string v5, "_sid"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/r5;->c:J

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/r5;->f:Ljava/lang/String;

    invoke-static {v6}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v7, "_sno"

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/i;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s5;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_8

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v7

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "Retrieved last session number from database does not contain a valid (long) value"

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v7, "_s"

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/i;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v7

    iget-wide v13, v5, Lcom/google/android/gms/measurement/internal/m;->c:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v7, v13

    goto :goto_2

    :cond_a
    const-wide/16 v7, 0x0

    :goto_2
    new-instance v5, Lcom/google/android/gms/measurement/internal/r5;

    const-string v14, "_sno"

    const-wide/16 v16, 0x1

    add-long v7, v7, v16

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/q5;->t(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_b
    new-instance v5, Lcom/google/android/gms/measurement/internal/s5;

    invoke-static {v6}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/r5;->f:Ljava/lang/String;

    invoke-static {v12}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/r5;->c:J

    move-object v10, v5

    move-object v11, v6

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/s5;->c:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v11, "Setting user property"

    invoke-virtual {v0, v11, v8, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->Q()V

    :try_start_0
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    if-eqz v0, :cond_c

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0, v6, v3}, Lcom/google/android/gms/measurement/internal/i;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s5;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v3, "_lair"

    invoke-virtual {v0, v6, v3}, Lcom/google/android/gms/measurement/internal/i;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/i;->v(Lcom/google/android/gms/measurement/internal/s5;)Z

    move-result v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->p()V

    if-nez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Too many unique user properties are set. Ignoring user property"

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    const/16 v11, 0x9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    throw v0
.end method

.method public final u()V
    .locals 27

    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->b:Lcom/google/android/gms/measurement/internal/b3;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/google/android/gms/measurement/internal/q5;->x:Z

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c5;->x()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Upload data called on the client side before use of service was decided"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Upload called in the client side when service should be used"

    goto :goto_0

    :cond_1
    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/q5;->p:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->A:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Uploading requested multiple times"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b3;->y()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :goto_2
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/q5;->x:Z

    goto/16 :goto_36

    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    :try_start_2
    check-cast v2, Lc3/l;

    invoke-virtual {v2}, Lc3/l;->e()J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v10, Lcom/google/android/gms/measurement/internal/o2;->Q:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v10}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v10, Lcom/google/android/gms/measurement/internal/o2;->e:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v5, v12

    move v10, v9

    :goto_3
    if-ge v10, v2, :cond_5

    invoke-virtual {v1, v12, v13}, Lcom/google/android/gms/measurement/internal/q5;->E(J)Z

    move-result v14

    if-eqz v14, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e5;->g:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v12

    cmp-long v2, v12, v7

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->o()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v7, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v12, v5, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->L()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v7, -0x1

    if-nez v2, :cond_4a

    iget-wide v12, v1, Lcom/google/android/gms/measurement/internal/q5;->C:J

    cmp-long v2, v12, v7

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "select rowid from raw_events order by rowid desc limit 1;"

    invoke-virtual {v12, v13, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v13, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v13, v0

    move-object v12, v11

    :goto_4
    :try_start_6
    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v14, "Error querying raw events"

    invoke-virtual {v2, v13, v14}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v12, :cond_8

    :goto_5
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/q5;->C:J

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v11, v12

    :goto_6
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v7, Lcom/google/android/gms/measurement/internal/o2;->h:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v2, v10, v7}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/o2;->i:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v7, v10, v8}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    iget-object v12, v8, Lb0/h;->a:Ljava/lang/Object;

    :try_start_8
    invoke-virtual {v8}, Lb0/h;->k()V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    if-lez v2, :cond_b

    move v13, v4

    goto :goto_8

    :cond_b
    move v13, v9

    :goto_8
    invoke-static {v13}, Lva/n;->c(Z)V

    if-lez v7, :cond_c

    move v13, v4

    goto :goto_9

    :cond_c
    move v13, v9

    :goto_9
    invoke-static {v13}, Lva/n;->c(Z)V

    invoke-static {v10}, Lva/n;->f(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :try_start_9
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "rowid"

    const-string v11, "data"

    const-string v13, "retry_count"

    filled-new-array {v15, v11, v13}, [Ljava/lang/String;

    move-result-object v16

    new-array v11, v4, [Ljava/lang/String;

    aput-object v10, v11, v9

    const-string v15, "queue"

    const-string v17, "app_id=?"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v11

    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v19, v3

    move-wide/from16 v20, v5

    goto/16 :goto_18

    :cond_d
    :try_start_c
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v13, v9

    :goto_a
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object/from16 v18, v8

    :try_start_e
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-object/from16 v19, v3

    :try_start_f
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-wide/from16 v20, v5

    const/16 v5, 0x400

    :try_start_10
    new-array v5, v5, [B

    :goto_b
    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_10

    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    array-length v4, v3
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    add-int/2addr v4, v13

    if-le v4, v7, :cond_e

    goto/16 :goto_15

    :cond_e
    :try_start_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m2;->u1()Lcom/google/android/gms/internal/measurement/l2;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/measurement/internal/b3;->D(Lcom/google/android/gms/internal/measurement/k4;[B)Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/l2;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    const/4 v5, 0x2

    :try_start_13
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/l2;->k(I)V

    :cond_f
    array-length v3, v3

    add-int/2addr v13, v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v4, v12

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v5, "Failed to merge queued bundle. appId"

    :goto_c
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v6
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_13

    :cond_10
    move-object/from16 v22, v8

    const/4 v8, 0x0

    :try_start_14
    invoke-virtual {v3, v5, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    move-object/from16 v8, v22

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_e

    :goto_d
    move-object v3, v0

    goto/16 :goto_17

    :goto_e
    move-object v3, v0

    goto :goto_10

    :catch_4
    move-exception v0

    goto :goto_16

    :catch_5
    move-exception v0

    :goto_f
    move-wide/from16 v20, v5

    goto :goto_e

    :catch_6
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_f

    :goto_10
    :try_start_15
    iget-object v4, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v5, "Failed to ungzip content"

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :catch_7
    move-exception v0

    :goto_11
    move-object v3, v0

    goto :goto_12

    :catch_8
    move-exception v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v5

    move-object/from16 v18, v8

    goto :goto_11

    :goto_12
    :try_start_16
    move-object v4, v12

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v5, "Failed to unzip queued bundle. appId"

    goto :goto_c

    :goto_13
    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v3, :cond_12

    if-le v13, v7, :cond_11

    goto :goto_15

    :cond_11
    move-object/from16 v8, v18

    move-object/from16 v3, v19

    move-wide/from16 v5, v20

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_12
    :goto_15
    :try_start_17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move-object v7, v11

    goto :goto_18

    :catch_9
    move-exception v0

    goto :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v19, v3

    :goto_16
    move-wide/from16 v20, v5

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v11, 0x0

    goto/16 :goto_31

    :catch_b
    move-exception v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v5

    move-object v3, v0

    const/4 v2, 0x0

    :goto_17
    :try_start_18
    check-cast v12, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v5, "Error querying bundles. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v2, :cond_13

    :try_start_19
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_13
    :goto_18
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m2;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m2;->u()Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_15
    const/4 v2, 0x0

    :goto_19
    if-eqz v2, :cond_18

    const/4 v3, 0x0

    :goto_1a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_18

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m2;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_1b

    :cond_16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m2;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    if-nez v4, :cond_17

    const/4 v2, 0x0

    :try_start_1a
    invoke-interface {v7, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_1c

    :catchall_3
    move-exception v0

    goto/16 :goto_38

    :cond_17
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_18
    :goto_1c
    :try_start_1b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k2;->l()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/e;->c:Lcom/google/android/gms/measurement/internal/d;

    const-string v6, "gaia_collection_enabled"

    invoke-interface {v5, v10, v6}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    goto :goto_1d

    :cond_19
    const/4 v5, 0x0

    :goto_1d
    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v6

    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/o2;->o0:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v9
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    const/4 v11, 0x0

    :goto_1e
    const-string v12, "."

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    if-ge v11, v3, :cond_43

    :try_start_1c
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/l2;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/e;->o()V

    iget-boolean v15, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v15, :cond_1a

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_1a
    iget-object v15, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v15, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/m2;->N(Lcom/google/android/gms/internal/measurement/m2;)V

    iget-boolean v15, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v15, :cond_1b

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_1b
    iget-object v15, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v15, Lcom/google/android/gms/internal/measurement/m2;

    move-object/from16 v18, v7

    move/from16 v22, v8

    move-wide/from16 v7, v20

    invoke-static {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/m2;->u0(Lcom/google/android/gms/internal/measurement/m2;J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :try_start_1d
    iget-boolean v15, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v15, :cond_1c

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    goto :goto_1f

    :catchall_4
    move-exception v0

    goto/16 :goto_38

    :cond_1c
    :goto_1f
    iget-object v15, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v15, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/m2;->Z(Lcom/google/android/gms/internal/measurement/m2;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    if-nez v5, :cond_1e

    :try_start_1e
    iget-boolean v15, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v15, :cond_1d

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_1d
    iget-object v15, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v15, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/m2;->A(Lcom/google/android/gms/internal/measurement/m2;)V

    :cond_1e
    if-nez v6, :cond_1f

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/l2;->v()V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/l2;->s()V

    :cond_1f
    if-nez v22, :cond_21

    iget-boolean v15, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v15, :cond_20

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_20
    iget-object v15, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v15, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/m2;->T(Lcom/google/android/gms/internal/measurement/m2;)V

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s7;->b()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v15

    move/from16 v20, v5

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->j0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v15, v10, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v5

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    if-eqz v5, :cond_23

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v15}, Lb0/h;->k()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/o3;->e:Ll/b;

    move/from16 v21, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v10, v6}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_24

    iget-boolean v6, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_22

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_22
    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/m2;->n0(Lcom/google/android/gms/internal/measurement/m2;Ljava/util/Set;)V

    goto :goto_20

    :cond_23
    move/from16 v21, v6

    :cond_24
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/o2;->l0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v5, v10, v6}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v15}, Lb0/h;->k()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/o3;->e:Ll/b;

    const/4 v6, 0x0

    invoke-virtual {v5, v10, v6}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    const-string v6, "device_info"

    if-eqz v23, :cond_26

    move/from16 v24, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v10, v3}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v3, v23

    check-cast v3, Ljava/util/Set;

    move-wide/from16 v25, v7

    const-string v7, "device_model"

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x0

    invoke-virtual {v5, v10, v3}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_21

    :cond_25
    const/4 v3, 0x1

    goto :goto_22

    :cond_26
    move/from16 v24, v3

    move-wide/from16 v25, v7

    :goto_21
    const/4 v3, 0x0

    :goto_22
    if-eqz v3, :cond_28

    iget-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_27

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_27
    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/m2;->F0(Lcom/google/android/gms/internal/measurement/m2;)V

    :cond_28
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v15}, Lb0/h;->k()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v5, v10, v3}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2a

    invoke-virtual {v5, v10, v3}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string v8, "os_version"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    invoke-virtual {v5, v10, v3}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_23

    :cond_29
    const/4 v3, 0x1

    goto :goto_24

    :cond_2a
    :goto_23
    const/4 v3, 0x0

    :goto_24
    if-eqz v3, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->v0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m2;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2f

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_2b

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v6, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_2b
    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/measurement/m2;->C0(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    goto :goto_25

    :cond_2c
    iget-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_2d

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_2d
    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/m2;->D0(Lcom/google/android/gms/internal/measurement/m2;)V

    goto :goto_25

    :cond_2e
    move/from16 v24, v3

    move-wide/from16 v25, v7

    :cond_2f
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->m0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v15}, Lb0/h;->k()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/o3;->e:Ll/b;

    const/4 v5, 0x0

    invoke-virtual {v3, v10, v5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_30

    invoke-virtual {v3, v10, v5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, "user_id"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x1

    goto :goto_26

    :cond_30
    const/4 v3, 0x0

    :goto_26
    if-eqz v3, :cond_32

    const-string v3, "_id"

    invoke-static {v14, v3}, Lcom/google/android/gms/measurement/internal/b3;->x(Lcom/google/android/gms/internal/measurement/l2;Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_32

    iget-boolean v5, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_31

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v5, 0x0

    iput-boolean v5, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_31
    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/measurement/m2;->t0(Lcom/google/android/gms/internal/measurement/m2;I)V

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->n0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v15}, Lb0/h;->k()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/o3;->e:Ll/b;

    const/4 v5, 0x0

    invoke-virtual {v3, v10, v5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_33

    invoke-virtual {v3, v10, v5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, "google_signals"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v3, 0x1

    goto :goto_27

    :cond_33
    const/4 v3, 0x0

    :goto_27
    if-eqz v3, :cond_35

    iget-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_34

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_34
    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/m2;->A(Lcom/google/android/gms/internal/measurement/m2;)V

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->q0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v15}, Lb0/h;->k()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/o3;->e:Ll/b;

    const/4 v5, 0x0

    invoke-virtual {v3, v10, v5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_36

    invoke-virtual {v3, v10, v5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, "app_instance_id"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_28

    :cond_36
    const/4 v3, 0x0

    :goto_28
    if-eqz v3, :cond_3b

    iget-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_37

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_37
    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/m2;->T(Lcom/google/android/gms/internal/measurement/m2;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->r0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->F:Ljava/util/HashMap;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/p5;

    if-eqz v5, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/o2;->S:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v6, v10, v7}, Lcom/google/android/gms/measurement/internal/e;->p(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)J

    move-result-wide v6

    move v8, v11

    iget-wide v11, v5, Lcom/google/android/gms/measurement/internal/p5;->b:J

    add-long/2addr v6, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v11

    check-cast v11, Lc3/l;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v6, v6, v11

    if-gez v6, :cond_39

    goto :goto_29

    :cond_38
    move v8, v11

    :goto_29
    new-instance v5, Lcom/google/android/gms/measurement/internal/p5;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/u5;->q()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/google/android/gms/measurement/internal/p5;-><init>(Lcom/google/android/gms/measurement/internal/q5;Ljava/lang/String;)V

    invoke-virtual {v3, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    iget-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_3a

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_3a
    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/p5;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/m2;->p0(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    goto :goto_2a

    :cond_3b
    move v8, v11

    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->s0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v15}, Lb0/h;->k()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/o3;->e:Ll/b;

    const/4 v5, 0x0

    invoke-virtual {v3, v10, v5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3c

    invoke-virtual {v3, v10, v5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, "enhanced_user_id"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_2b

    :cond_3c
    const/4 v3, 0x0

    :goto_2b
    if-eqz v3, :cond_3e

    iget-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_3d

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_3d
    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/m2;->m0(Lcom/google/android/gms/internal/measurement/m2;)V

    :cond_3e
    if-nez v9, :cond_40

    iget-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_3f

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_3f
    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/m2;->m0(Lcom/google/android/gms/internal/measurement/m2;)V

    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->T:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/t3;->b()[B

    move-result-object v3

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/b3;->z([B)J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Lcom/google/android/gms/internal/measurement/l2;->h(J)V

    :cond_41
    iget-boolean v3, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v3, :cond_42

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_42
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/k2;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/k2;->p(Lcom/google/android/gms/internal/measurement/k2;Lcom/google/android/gms/internal/measurement/m2;)V

    add-int/lit8 v11, v8, 0x1

    move-object/from16 v7, v18

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v8, v22

    move/from16 v3, v24

    move-wide/from16 v20, v25

    goto/16 :goto_1e

    :cond_43
    move/from16 v24, v3

    move-wide/from16 v25, v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/k2;

    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/b3;->E(Lcom/google/android/gms/internal/measurement/k2;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    :cond_44
    const/4 v3, 0x0

    :goto_2c
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/k2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/t3;->b()[B

    move-result-object v6

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/q5;->j:Lcom/google/android/gms/measurement/internal/o5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/s7;->b()V

    iget-object v7, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/t3;->n()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/o2;->k0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v7, v10, v8}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v7

    if-eqz v7, :cond_46

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_45

    sget-object v7, Lcom/google/android/gms/measurement/internal/o2;->r:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2f

    :cond_45
    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->r:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v7, 0x0

    :goto_2d
    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2e

    :cond_46
    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->r:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v7, 0x0

    goto :goto_2d

    :goto_2e
    check-cast v5, Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :goto_2f
    move-object v9, v5

    :try_start_1f
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v7}, Lva/n;->c(Z)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/q5;->A:Ljava/util/ArrayList;

    if-eqz v7, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v7, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_30

    :cond_47
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v1, Lcom/google/android/gms/measurement/internal/q5;->A:Ljava/util/ArrayList;

    :goto_30
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/e5;->h:Lcom/google/android/gms/measurement/internal/f3;

    move-wide/from16 v7, v25

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    const-string v4, "?"
    :try_end_1f
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    if-lez v24, :cond_48

    :try_start_20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/j2;->g()Lcom/google/android/gms/internal/measurement/m2;

    move-result-object v2
    :try_end_20
    .catch Ljava/net/MalformedURLException; {:try_start_20 .. :try_end_20} :catch_c
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    :try_start_21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v4

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v4, v8, v3}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/q5;->w:Z

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    new-instance v8, Lp1/c;

    const/16 v2, 0xb

    invoke-direct {v8, v1, v10, v2}, Lp1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual/range {v19 .. v19}, Lb0/h;->k()V

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    move-object/from16 v3, v19

    iget-object v2, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/measurement/internal/a3;

    const/4 v7, 0x0

    move-object v2, v12

    move-object v4, v10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/a3;-><init>(Lcom/google/android/gms/measurement/internal/b3;Ljava/lang/String;Ljava/net/URL;[BLl/b;Lcom/google/android/gms/measurement/internal/z2;)V

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/s3;->r(Ljava/lang/Runnable;)V
    :try_end_21
    .catch Ljava/net/MalformedURLException; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    goto/16 :goto_35

    :catch_c
    :try_start_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v9}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_35

    :catchall_5
    move-exception v0

    move-object v11, v2

    move-object v2, v0

    :goto_31
    if-eqz v11, :cond_49

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_49
    throw v2

    :cond_4a
    move-wide v2, v7

    move-wide v7, v5

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/q5;->C:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->e:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v5, v7, v4

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n5;->l()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    :try_start_24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    invoke-virtual {v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_24} :catch_e
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_4b

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v5, "No expired configs for apps with pending events"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_33

    :cond_4b
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_25} :catch_d
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    :try_start_26
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    goto :goto_34

    :catch_d
    move-exception v0

    move-object v4, v0

    goto :goto_32

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v11, v12

    goto :goto_37

    :catch_e
    move-exception v0

    move-object v4, v0

    move-object v2, v12

    :goto_32
    :try_start_27
    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v3

    const-string v5, "Error selecting expired configs"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    if-eqz v2, :cond_4c

    :goto_33
    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4c
    move-object v11, v12

    :goto_34
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/q5;->h(Lcom/google/android/gms/measurement/internal/c4;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    :cond_4d
    :goto_35
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/q5;->x:Z

    :goto_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->B()V

    return-void

    :catchall_7
    move-exception v0

    move-object v11, v2

    move-object v2, v0

    :goto_37
    if-eqz v11, :cond_4e

    :try_start_29
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_38

    :catchall_9
    move-exception v0

    :goto_38
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/q5;->x:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->B()V

    throw v2
.end method

.method public final v(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 41

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "raw_events"

    const-string v5, "_sno"

    invoke-static/range {p2 .. p2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/w5;->c:Ljava/lang/String;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/w5;->d:Ljava/lang/String;

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v8}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/w5;->b:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v29, 0x1

    move-wide/from16 v30, v9

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/w5;->t:Ljava/lang/String;

    if-eqz v12, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    move/from16 v10, v29

    :goto_0
    if-nez v10, :cond_1

    return-void

    :cond_1
    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/w5;->h:Z

    if-eqz v10, :cond_60

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    invoke-virtual {v12, v11, v13}, Lcom/google/android/gms/measurement/internal/o3;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v32, v10

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/q5;->I:Lp5/c;

    move-object/from16 v33, v9

    const-string v9, "_err"

    move-object/from16 v34, v6

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v3

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/t3;->r()Lcom/google/android/gms/measurement/internal/t2;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blocked event. appId"

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v3, "measurement.upload.blacklist_internal"

    invoke-virtual {v12, v11, v3}, Lcom/google/android/gms/measurement/internal/o3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    const-string v3, "measurement.upload.blacklist_public"

    invoke-virtual {v12, v11, v3}, Lcom/google/android/gms/measurement/internal/o3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    const/16 v14, 0xb

    const-string v15, "_ev"

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v12, v10

    move-object v13, v11

    move-object/from16 v16, v1

    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/c4;->E:J

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/c4;->D:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v5

    check-cast v5, Lc3/l;

    invoke-virtual {v5}, Lc3/l;->e()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->z:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->o()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/q5;->h(Lcom/google/android/gms/measurement/internal/c4;)V

    :cond_4
    return-void

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/y2;->c(Lcom/google/android/gms/measurement/internal/o;)Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v13

    move-object/from16 v17, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v14

    sget-object v14, Lcom/google/android/gms/measurement/internal/o2;->I:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v12, v11, v14}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v12

    const/16 v14, 0x64

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/16 v14, 0x19

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v13, v2, v12}, Lcom/google/android/gms/measurement/internal/u5;->z(Lcom/google/android/gms/measurement/internal/y2;I)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y2;->b()Lcom/google/android/gms/measurement/internal/o;

    move-result-object v2

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v12

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/t3;->r()Lcom/google/android/gms/measurement/internal/t2;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/google/android/gms/measurement/internal/t2;->c(Lcom/google/android/gms/measurement/internal/o;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v15

    const-string v15, "Logging event"

    invoke-virtual {v12, v13, v15}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object/from16 v19, v15

    :goto_2
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/i;->Q()V

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    const-string v12, "ecommerce_purchase"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v13, "refund"

    if-nez v12, :cond_8

    :try_start_1
    const-string v12, "purchase"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    move/from16 v12, v29

    :goto_4
    const-string v15, "_iap"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/n;

    if-nez v15, :cond_a

    if-eqz v12, :cond_9

    move/from16 v12, v29

    goto :goto_5

    :cond_9
    move-object/from16 v36, v4

    move-object/from16 v24, v5

    move-object/from16 v35, v7

    goto/16 :goto_e

    :cond_a
    :goto_5
    :try_start_2
    const-string v15, "currency"

    move-object/from16 v35, v7

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {v7, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v15, "value"

    move-object/from16 v36, v4

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    if-eqz v12, :cond_d

    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n;->c()Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide v22, 0x412e848000000000L    # 1000000.0

    mul-double v20, v20, v22

    const-wide/16 v24, 0x0

    cmpl-double v12, v20, v24

    if-nez v12, :cond_b

    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v24, v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v20, v4, v22

    goto :goto_6

    :cond_b
    move-object/from16 v24, v5

    :goto_6
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v4, v20, v4

    if-gtz v4, :cond_c

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v4, v20, v4

    if-ltz v4, :cond_c

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    neg-long v4, v4

    goto :goto_7

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :cond_d
    move-object/from16 v24, v5

    :try_start_4
    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_e
    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "[A-Z]{3}"

    invoke-virtual {v7, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, "_ltv_"

    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v7, v11, v15}, Lcom/google/android/gms/measurement/internal/i;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s5;

    move-result-object v7

    if-eqz v7, :cond_f

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    instance-of v12, v7, Ljava/lang/Long;

    if-nez v12, :cond_10

    :cond_f
    move-object/from16 p1, v14

    move-object/from16 v14, v17

    move-object/from16 v37, v18

    move-object/from16 v38, v19

    const/4 v7, 0x0

    goto :goto_8

    :cond_10
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    new-instance v7, Lcom/google/android/gms/measurement/internal/s5;

    move-object/from16 v20, v14

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/o;->c:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v21

    check-cast v21, Lc3/l;

    invoke-virtual/range {v21 .. v21}, Lc3/l;->e()J

    move-result-wide v21

    add-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v5, v17

    move-object v12, v7

    move-object/from16 v23, v7

    const/4 v7, 0x0

    move-object v13, v11

    move-object/from16 v37, v18

    move-object/from16 p1, v20

    move-object/from16 v38, v19

    move-wide/from16 v16, v21

    move-object/from16 v18, v4

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v39, v8

    move-object/from16 v7, v23

    const/4 v8, 0x2

    goto/16 :goto_d

    :goto_8
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v13

    sget-object v7, Lcom/google/android/gms/measurement/internal/o2;->E:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v13, v11, v7}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v11}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v12}, Lb0/h;->k()V

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/n5;->l()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v17, v14

    const/4 v14, 0x3

    :try_start_6
    new-array v14, v14, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v11, v14, v16

    aput-object v11, v14, v29

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v39, v8

    const/4 v8, 0x2

    :try_start_7
    aput-object v7, v14, v8

    const-string v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    invoke-virtual {v13, v7, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v39, v8

    :goto_9
    const/4 v8, 0x2

    :goto_a
    move-object v7, v0

    goto :goto_b

    :catch_2
    move-exception v0

    move-object/from16 v39, v8

    move-object/from16 v17, v14

    goto :goto_9

    :goto_b
    :try_start_8
    iget-object v12, v12, Lb0/h;->a:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v12

    const-string v13, "Error pruning currencies. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v7}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_c
    new-instance v7, Lcom/google/android/gms/measurement/internal/s5;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/o;->c:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v12

    check-cast v12, Lc3/l;

    invoke-virtual {v12}, Lc3/l;->e()J

    move-result-wide v18

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v12, v7

    move-object v13, v11

    move-object/from16 v5, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v4

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_d
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/i;->v(Lcom/google/android/gms/measurement/internal/s5;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v4

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v13

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/t3;->r()Lcom/google/android/gms/measurement/internal/t2;

    move-result-object v14

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/s5;->c:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    invoke-virtual {v4, v12, v13, v14, v7}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v10

    move-object v13, v11

    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_f

    :cond_11
    :goto_e
    move-object/from16 v39, v8

    move-object/from16 p1, v14

    move-object/from16 v5, v17

    move-object/from16 v37, v18

    move-object/from16 v38, v19

    const/4 v8, 0x2

    :cond_12
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/u5;->X(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v7, p1

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    if-nez v3, :cond_13

    const-wide/16 v15, 0x0

    goto :goto_11

    :cond_13
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {v12}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/16 v15, 0x0

    :cond_14
    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    check-cast v13, Ljava/lang/String;

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {v14, v13}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, [Landroid/os/Parcelable;

    if-eqz v14, :cond_14

    check-cast v13, [Landroid/os/Parcelable;

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v15, v13

    goto :goto_10

    :cond_15
    :goto_11
    const-wide/16 v25, 0x1

    add-long v16, v15, v25

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->w()J

    move-result-wide v13

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v11

    move/from16 v18, v20

    move/from16 v19, v4

    move/from16 v20, v21

    move/from16 v21, v9

    invoke-virtual/range {v12 .. v22}, Lcom/google/android/gms/measurement/internal/i;->H(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v12

    iget-wide v13, v12, Lcom/google/android/gms/measurement/internal/g;->b:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v15, Lcom/google/android/gms/measurement/internal/o2;->l:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 p1, v5

    move-object/from16 v40, v6

    int-to-long v5, v8

    sub-long/2addr v13, v5

    const-wide/16 v5, 0x0

    cmp-long v8, v13, v5

    const-wide/16 v15, 0x3e8

    if-lez v8, :cond_17

    rem-long/2addr v13, v15

    cmp-long v2, v13, v25

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    iget-wide v5, v12, Lcom/google/android/gms/measurement/internal/g;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :cond_17
    if-eqz v4, :cond_19

    :try_start_9
    iget-wide v13, v12, Lcom/google/android/gms/measurement/internal/g;->a:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    sget-object v8, Lcom/google/android/gms/measurement/internal/o2;->n:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v20, v7

    int-to-long v7, v8

    sub-long/2addr v13, v7

    cmp-long v7, v13, v5

    if-lez v7, :cond_1a

    const-wide/16 v7, 0x3e8

    rem-long/2addr v13, v7

    cmp-long v3, v13, v25

    if-nez v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v5

    iget-wide v6, v12, Lcom/google/android/gms/measurement/internal/g;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    const/16 v14, 0x10

    const-string v15, "_ev"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v12, v10

    move-object v13, v11

    move-object/from16 v16, v2

    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :cond_19
    move-object/from16 v20, v7

    :cond_1a
    const v7, 0xf4240

    if-eqz v9, :cond_1c

    :try_start_a
    iget-wide v8, v12, Lcom/google/android/gms/measurement/internal/g;->d:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/o2;->m:Lcom/google/android/gms/measurement/internal/n2;

    move-object/from16 v15, v39

    invoke-virtual {v13, v15, v14}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v8, v13

    cmp-long v13, v8, v5

    if-lez v13, :cond_1d

    cmp-long v2, v8, v25

    if-nez v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    iget-wide v5, v12, Lcom/google/android/gms/measurement/internal/g;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :cond_1c
    move-object/from16 v15, v39

    :cond_1d
    :try_start_b
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n;->b()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v8

    const-string v9, "_o"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/o;->c:Ljava/lang/String;

    invoke-virtual {v8, v3, v9, v12}, Lcom/google/android/gms/measurement/internal/u5;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/u5;->T(Ljava/lang/String;)Z

    move-result v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-string v9, "_r"

    if-eqz v8, :cond_1e

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v8

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "_dbg"

    invoke-virtual {v8, v3, v13, v12}, Lcom/google/android/gms/measurement/internal/u5;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v8

    invoke-virtual {v8, v3, v9, v12}, Lcom/google/android/gms/measurement/internal/u5;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    const-string v8, "_s"

    move-object/from16 v12, v20

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    move-object/from16 v12, v24

    invoke-virtual {v8, v15, v12}, Lcom/google/android/gms/measurement/internal/i;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s5;

    move-result-object v8

    if-eqz v8, :cond_1f

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/Long;

    if-eqz v13, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v13

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    invoke-virtual {v13, v3, v12, v8}, Lcom/google/android/gms/measurement/internal/u5;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    iget-object v12, v8, Lb0/h;->a:Ljava/lang/Object;

    :try_start_d
    invoke-static {v11}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v8}, Lb0/h;->k()V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->l()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    move-object v13, v12

    check-cast v13, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/t3;->n()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/o2;->q:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v13, v11, v14}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v13, 0x0

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    aput-object v11, v14, v13

    aput-object v7, v14, v29

    const-string v7, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object/from16 v13, v36

    :try_start_f
    invoke-virtual {v8, v13, v7, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    int-to-long v7, v7

    goto :goto_13

    :catch_3
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    move-object/from16 v13, v36

    :goto_12
    move-object v7, v0

    :try_start_10
    check-cast v12, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v8

    const-string v12, "Error deleting over the limit events. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v14

    invoke-virtual {v8, v12, v14, v7}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide v7, v5

    :goto_13
    cmp-long v12, v7, v5

    if-lez v12, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v12

    const-string v14, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v14, v5, v6}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    new-instance v5, Lcom/google/android/gms/measurement/internal/l;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/o;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    move-object/from16 v36, v9

    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/o;->d:J

    move-object v12, v5

    move-object v2, v13

    move-object v13, v6

    move-object v6, v15

    move-object v15, v11

    move-object/from16 v16, v7

    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    invoke-direct/range {v12 .. v19}, Lcom/google/android/gms/measurement/internal/l;-><init>(Lcom/google/android/gms/measurement/internal/t3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/l;->b:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v7, v11, v3}, Lcom/google/android/gms/measurement/internal/i;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/m;

    move-result-object v7

    if-nez v7, :cond_22

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/i;->C(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/google/android/gms/measurement/internal/o2;->H:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v9

    const/16 v13, 0x7d0

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/16 v14, 0x1f4

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v14, v9

    cmp-long v7, v7, v14

    if-ltz v7, :cond_21

    if-eqz v4, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v4, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v5

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/t3;->r()Lcom/google/android/gms/measurement/internal/t2;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v6

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/16 v7, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v10

    move-object v13, v11

    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    return-void

    :cond_21
    :try_start_11
    new-instance v3, Lcom/google/android/gms/measurement/internal/m;

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/l;->b:Ljava/lang/String;

    iget-wide v7, v5, Lcom/google/android/gms/measurement/internal/l;->d:J

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v12, v3

    move-object v13, v11

    move-wide/from16 v21, v7

    invoke-direct/range {v12 .. v28}, Lcom/google/android/gms/measurement/internal/m;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v28, v2

    move-object/from16 v39, v6

    goto :goto_14

    :cond_22
    iget-wide v3, v7, Lcom/google/android/gms/measurement/internal/m;->f:J

    move-object/from16 v8, v40

    invoke-virtual {v5, v8, v3, v4}, Lcom/google/android/gms/measurement/internal/l;->a(Lcom/google/android/gms/measurement/internal/t3;J)Lcom/google/android/gms/measurement/internal/l;

    move-result-object v5

    iget-wide v3, v5, Lcom/google/android/gms/measurement/internal/l;->d:J

    new-instance v26, Lcom/google/android/gms/measurement/internal/m;

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/m;->a:Ljava/lang/String;

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/m;->b:Ljava/lang/String;

    iget-wide v12, v7, Lcom/google/android/gms/measurement/internal/m;->c:J

    iget-wide v14, v7, Lcom/google/android/gms/measurement/internal/m;->d:J

    move-object/from16 v27, v5

    move-object/from16 v39, v6

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/m;->e:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object/from16 v28, v2

    :try_start_12
    iget-wide v1, v7, Lcom/google/android/gms/measurement/internal/m;->g:J

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/m;->h:Ljava/lang/Long;

    move-object/from16 v40, v8

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/m;->i:Ljava/lang/Long;

    move-object/from16 v23, v8

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/m;->j:Ljava/lang/Long;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/m;->k:Ljava/lang/Boolean;

    move-object/from16 v22, v9

    move-object/from16 v9, v26

    move-wide/from16 v16, v5

    move-wide/from16 v18, v3

    move-wide/from16 v20, v1

    move-object/from16 v24, v8

    move-object/from16 v25, v7

    invoke-direct/range {v9 .. v25}, Lcom/google/android/gms/measurement/internal/m;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    :goto_14
    :try_start_13
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/i;->r(Lcom/google/android/gms/measurement/internal/m;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/l;->a:Ljava/lang/String;

    :try_start_14
    invoke-static {v2}, Lva/n;->f(Ljava/lang/String;)V

    move-object/from16 v3, v39

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lva/n;->c(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/m2;->u1()Lcom/google/android/gms/internal/measurement/l2;

    move-result-object v4

    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_23

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_23
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/m2;->e0(Lcom/google/android/gms/internal/measurement/m2;)V

    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_24

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_24
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/m2;->B0(Lcom/google/android/gms/internal/measurement/m2;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_25

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_25
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/measurement/m2;->J0(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    :cond_26
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_27

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_27
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    move-object/from16 v7, v35

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/m2;->I0(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    goto :goto_15

    :cond_28
    move-object/from16 v7, v35

    :goto_15
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_29

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_29
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    move-object/from16 v8, v34

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/measurement/m2;->L(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    goto :goto_16

    :cond_2a
    move-object/from16 v8, v34

    :goto_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v6

    sget-object v9, Lcom/google/android/gms/measurement/internal/o2;->o0:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v6

    if-eqz v6, :cond_2c

    move-object/from16 v6, p2

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/w5;->A:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2d

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/w5;->A:Ljava/lang/String;

    iget-boolean v10, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v10, :cond_2b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_2b
    iget-object v10, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v10, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v10, v9}, Lcom/google/android/gms/internal/measurement/m2;->l0(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    goto :goto_17

    :cond_2c
    move-object/from16 v6, p2

    :cond_2d
    :goto_17
    iget-wide v9, v6, Lcom/google/android/gms/measurement/internal/w5;->j:J

    const-wide/32 v11, -0x80000000

    cmp-long v11, v9, v11

    if-eqz v11, :cond_2f

    long-to-int v9, v9

    iget-boolean v10, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v10, :cond_2e

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_2e
    iget-object v10, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v10, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v10, v9}, Lcom/google/android/gms/internal/measurement/m2;->d0(Lcom/google/android/gms/internal/measurement/m2;I)V

    :cond_2f
    iget-wide v9, v6, Lcom/google/android/gms/measurement/internal/w5;->e:J

    iget-boolean v11, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v11, :cond_30

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_30
    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v11, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v11, v9, v10}, Lcom/google/android/gms/internal/measurement/m2;->M(Lcom/google/android/gms/internal/measurement/m2;J)V

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_32

    iget-boolean v9, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_31

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_31
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    move-object/from16 v10, v37

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/m2;->Y(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    goto :goto_18

    :cond_32
    move-object/from16 v10, v37

    :goto_18
    invoke-static {v3}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/w5;->y:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/f;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/f;->c(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/f;->e()Ljava/lang/String;

    move-result-object v9

    iget-boolean v11, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v11, :cond_33

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_33
    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v11, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v11, v9}, Lcom/google/android/gms/internal/measurement/m2;->I(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l2;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_35

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_35

    iget-boolean v9, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_34

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_34
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    move-object/from16 v11, v33

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/measurement/m2;->D(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    :cond_35
    iget-wide v11, v6, Lcom/google/android/gms/measurement/internal/w5;->f:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_37

    iget-boolean v9, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_36

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_36
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/m2;->U(Lcom/google/android/gms/internal/measurement/m2;J)V

    :cond_37
    iget-wide v11, v6, Lcom/google/android/gms/measurement/internal/w5;->v:J

    iget-boolean v9, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_38

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_38
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/m2;->G(Lcom/google/android/gms/internal/measurement/m2;J)V

    invoke-static/range {v38 .. v38}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    move-object/from16 v9, v38

    iget-object v11, v9, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/t3;->c()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o2;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    iget-object v12, v9, Lb0/h;->a:Ljava/lang/Object;

    if-eqz v11, :cond_3c

    :try_start_15
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_39

    goto/16 :goto_1b

    :cond_39
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-object v14, Lcom/google/android/gms/measurement/internal/o2;->P:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    move-object/from16 v16, v2

    const-string v2, "measurement.id."

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v2, :cond_3a

    :try_start_16
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v14, :cond_3a

    move-object v2, v12

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v11, "Too many experiment IDs. Number of IDs"

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v15, v11}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_1a

    :catch_5
    move-exception v0

    move-object v2, v0

    :try_start_17
    move-object v11, v12

    check-cast v11, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/x2;->r()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v11

    const-string v15, "Experiment ID NumberFormatException"

    invoke-virtual {v11, v2, v15}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3a
    move-object/from16 v2, v16

    move-object/from16 v11, v17

    goto :goto_19

    :cond_3b
    move-object/from16 v16, v2

    :goto_1a
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_1c

    :cond_3c
    :goto_1b
    move-object/from16 v16, v2

    :goto_1c
    const/4 v13, 0x0

    :cond_3d
    if-eqz v13, :cond_3e

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/measurement/l2;->o(Ljava/util/ArrayList;)V

    :cond_3e
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/w5;->y:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/f;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/f;->c(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v13
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    iget-boolean v14, v6, Lcom/google/android/gms/measurement/internal/w5;->p:Z

    if-eqz v13, :cond_42

    if-eqz v14, :cond_42

    :try_start_18
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v15

    if-eqz v15, :cond_3f

    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/e5;->o(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v13

    move-object/from16 v17, v5

    goto :goto_1d

    :cond_3f
    new-instance v13, Landroid/util/Pair;

    const-string v15, ""

    move-object/from16 v17, v5

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v13, v15, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1d
    iget-object v5, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_43

    if-eqz v14, :cond_43

    iget-object v5, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-boolean v15, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v15, :cond_40

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v15, 0x0

    iput-boolean v15, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_40
    iget-object v15, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v15, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v15, v5}, Lcom/google/android/gms/internal/measurement/m2;->O(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    iget-object v5, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_43

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-boolean v13, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v13, :cond_41

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_41
    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v13, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/measurement/m2;->Q(Lcom/google/android/gms/internal/measurement/m2;Z)V

    goto :goto_1e

    :cond_42
    move-object/from16 v17, v5

    :cond_43
    :goto_1e
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/t3;->o()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a4;->m()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-boolean v13, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v13, :cond_44

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_44
    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v13, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/measurement/m2;->E0(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/t3;->o()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a4;->m()V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iget-boolean v13, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v13, :cond_45

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_45
    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v13, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/measurement/m2;->C0(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/t3;->o()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v5

    move-object v15, v12

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/k;->p()J

    move-result-wide v12

    long-to-int v5, v12

    iget-boolean v12, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v12, :cond_46

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v12, 0x0

    iput-boolean v12, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_46
    iget-object v12, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v12, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/m2;->H0(Lcom/google/android/gms/internal/measurement/m2;I)V

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/t3;->o()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/k;->q()Ljava/lang/String;

    move-result-object v5

    iget-boolean v12, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v12, :cond_47

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v12, 0x0

    iput-boolean v12, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_47
    iget-object v12, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v12, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/m2;->G0(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l2;->l()Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_48

    goto :goto_20

    :cond_48
    iget-boolean v2, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-nez v2, :cond_49

    goto :goto_1f

    :cond_49
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :goto_1f
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v2, Lcom/google/android/gms/internal/measurement/m2;

    const/4 v2, 0x0

    throw v2

    :cond_4a
    :goto_20
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v5

    if-nez v5, :cond_4c

    new-instance v5, Lcom/google/android/gms/measurement/internal/c4;

    move-object/from16 v12, v40

    invoke-direct {v5, v12, v3}, Lcom/google/android/gms/measurement/internal/c4;-><init>(Lcom/google/android/gms/measurement/internal/t3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/q5;->R(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/google/android/gms/measurement/internal/c4;->b(Ljava/lang/String;)V

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/w5;->k:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/google/android/gms/measurement/internal/c4;->o(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/c4;->p(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v10

    if-eqz v10, :cond_4b

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    invoke-virtual {v10, v3, v14}, Lcom/google/android/gms/measurement/internal/e5;->p(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/c4;->w(Ljava/lang/String;)V

    :cond_4b
    const-wide/16 v10, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/measurement/internal/c4;->t(J)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/measurement/internal/c4;->u(J)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/measurement/internal/c4;->s(J)V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/c4;->d(Ljava/lang/String;)V

    iget-wide v10, v6, Lcom/google/android/gms/measurement/internal/w5;->j:J

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/measurement/internal/c4;->e(J)V

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/c4;->c(Ljava/lang/String;)V

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/w5;->e:J

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/c4;->q(J)V

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/w5;->f:J

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/c4;->m(J)V

    move/from16 v7, v32

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/c4;->v(Z)V

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/w5;->v:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/c4;->n(J)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/i;->q(Lcom/google/android/gms/measurement/internal/c4;)V

    :cond_4c
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c4;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c4;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_4d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_4d
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/measurement/m2;->S(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    :cond_4e
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c4;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c4;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-boolean v5, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v5, :cond_4f

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_4f
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v5, Lcom/google/android/gms/internal/measurement/m2;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/m2;->c0(Lcom/google/android/gms/internal/measurement/m2;Ljava/lang/String;)V

    :cond_50
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/i;->O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x0

    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_59

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v2;->o()Lcom/google/android/gms/internal/measurement/u2;

    move-result-object v3

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/s5;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/s5;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/u2;->h(Ljava/lang/String;)V

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/s5;

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/s5;->d:J

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/u2;->i(J)V

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/s5;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/Object;

    invoke-static {v5}, Lva/n;->i(Ljava/lang/Object;)V

    iget-boolean v6, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_51

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_51
    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/v2;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/v2;->v(Lcom/google/android/gms/internal/measurement/v2;)V

    iget-boolean v6, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_52

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_52
    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/v2;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/v2;->x(Lcom/google/android/gms/internal/measurement/v2;)V

    iget-boolean v6, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_53

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_53
    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/v2;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/v2;->z(Lcom/google/android/gms/internal/measurement/v2;)V

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_55

    check-cast v5, Ljava/lang/String;

    iget-boolean v6, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v6, :cond_54

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_54
    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/v2;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/v2;->u(Lcom/google/android/gms/internal/measurement/v2;Ljava/lang/String;)V

    goto :goto_22

    :cond_55
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_56

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/u2;->g(J)V

    goto :goto_22

    :cond_56
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_58

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-boolean v7, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v7, :cond_57

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_57
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/v2;

    invoke-static {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/v2;->y(Lcom/google/android/gms/internal/measurement/v2;D)V

    goto :goto_22

    :cond_58
    move-object v12, v15

    check-cast v12, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v6, v12, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v7, "Ignoring invalid (type) user attribute value"

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_22
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/l2;->p(Lcom/google/android/gms/internal/measurement/u2;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_21

    :cond_59
    :try_start_19
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/m2;

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/t3;->b()[B

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/b3;->z([B)J

    move-result-wide v6

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "app_id"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "metadata_fingerprint"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "metadata"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v9, "raw_events_metadata"

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_7
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :try_start_1b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    move-object/from16 v5, v17

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/l;->f:Lcom/google/android/gms/measurement/internal/n;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v8, v36

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    move-object/from16 v4, v16

    goto :goto_24

    :cond_5a
    move-object/from16 v36, v8

    goto :goto_23

    :cond_5b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/l;->b:Ljava/lang/String;

    move-object/from16 v8, p1

    move-object/from16 v4, v16

    invoke-virtual {v8, v4, v3}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->w()J

    move-result-wide v9

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/l;->a:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/i;->G(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v8

    if-eqz v3, :cond_5c

    iget-wide v8, v8, Lcom/google/android/gms/measurement/internal/g;->e:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v10, Lcom/google/android/gms/measurement/internal/o2;->p:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v4, v10}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v3

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-gez v3, :cond_5c

    goto :goto_24

    :cond_5c
    const/16 v29, 0x0

    :goto_24
    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-static {v4}, Lva/n;->f(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/d2;->p()Lcom/google/android/gms/internal/measurement/c2;

    move-result-object v8

    iget-boolean v9, v8, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_5d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_5d
    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/d2;

    iget-wide v10, v5, Lcom/google/android/gms/measurement/internal/l;->e:J

    invoke-static {v10, v11, v9}, Lcom/google/android/gms/internal/measurement/d2;->B(JLcom/google/android/gms/internal/measurement/d2;)V

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/l;->f:Lcom/google/android/gms/measurement/internal/n;

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_25
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/g2;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/measurement/g2;->h(Ljava/lang/String;)V

    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {v13, v11}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v3, v12, v11}, Lcom/google/android/gms/measurement/internal/b3;->J(Lcom/google/android/gms/internal/measurement/g2;Ljava/lang/Object;)V

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/c2;->i(Lcom/google/android/gms/internal/measurement/g2;)V

    goto :goto_25

    :cond_5e
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/t3;->b()[B

    move-result-object v3

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "app_id"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "name"

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/l;->b:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "timestamp"

    iget-wide v10, v5, Lcom/google/android/gms/measurement/internal/l;->d:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "metadata_fingerprint"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "data"

    invoke-virtual {v8, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "realtime"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :try_start_1c
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object/from16 v5, v28

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_5f

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v3

    const-string v5, "Failed to insert raw event (got -1). appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto :goto_26

    :cond_5f
    const-wide/16 v2, 0x0

    :try_start_1d
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/q5;->p:J

    goto :goto_26

    :catch_6
    move-exception v0

    move-object v3, v0

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v5, "Error storing raw event. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    invoke-virtual {v2, v5, v4, v3}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto :goto_26

    :catch_7
    move-exception v0

    move-object v5, v0

    :try_start_1e
    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v2

    const-string v6, "Error storing raw event metadata. appId"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m2;->y1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v3

    invoke-virtual {v2, v6, v3, v5}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v5
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :catch_8
    move-exception v0

    move-object v2, v0

    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/x2;->p()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v3

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l2;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_26
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->R()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->D()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/x2;->q()Lcom/google/android/gms/measurement/internal/v2;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v30

    const-wide/32 v4, 0x7a120

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_27

    :catchall_1
    move-exception v0

    :goto_27
    move-object v2, v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->R()V

    throw v2

    :cond_60
    move-object v6, v3

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/q5;->J(Lcom/google/android/gms/measurement/internal/w5;)Lcom/google/android/gms/measurement/internal/c4;

    return-void
.end method

.method public final w()J
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v0

    check-cast v0, Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {p0}, Lb0/h;->k()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e5;->i:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u5;->t()Ljava/security/SecureRandom;

    move-result-object p0

    const v3, 0x5265c00

    invoke-virtual {p0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    int-to-long v3, p0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final z(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w5;
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c4;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/q5;->A(Lcom/google/android/gms/measurement/internal/c4;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "App version does not match; dropping. appId"

    goto/16 :goto_1

    :cond_1
    new-instance v30, Lcom/google/android/gms/measurement/internal/w5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c4;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c4;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c4;->z()J

    move-result-wide v6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/c4;->l:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/c4;->m:J

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/c4;->n:J

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v14, v1, Lcom/google/android/gms/measurement/internal/c4;->o:Z

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c4;->G()Ljava/lang/String;

    move-result-object v16

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    const/4 v13, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c4;->y()Z

    move-result v20

    const/16 v21, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c4;->B()Ljava/lang/String;

    move-result-object v22

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/c4;->r:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c4;->A()J

    move-result-wide v24

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c4;->t:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/q5;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->e()Ljava/lang/String;

    move-result-object v27

    const-string v28, ""

    const/16 v29, 0x0

    move-object/from16 v2, v30

    move-object/from16 v3, p1

    move-object/from16 v23, v15

    const/4 v0, 0x0

    move v15, v0

    move-object/from16 v26, v1

    invoke-direct/range {v2 .. v29}, Lcom/google/android/gms/measurement/internal/w5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    const-string v2, "No app data available; dropping"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
