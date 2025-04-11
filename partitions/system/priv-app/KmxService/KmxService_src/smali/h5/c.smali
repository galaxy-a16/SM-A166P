.class public final Lh5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/e;
.implements Lh5/f;


# instance fields
.field public final a:Lj5/a;

.field public final b:Landroid/content/Context;

.field public final c:Lj5/a;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lj5/a;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lv4/c;

    invoke-direct {v0, p1, p2}, Lv4/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh5/c;->a:Lj5/a;

    iput-object p3, p0, Lh5/c;->d:Ljava/util/Set;

    iput-object p5, p0, Lh5/c;->e:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lh5/c;->c:Lj5/a;

    iput-object p1, p0, Lh5/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lr3/o;
    .locals 2

    iget-object v0, p0, Lh5/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/n;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->j(Ljava/lang/Object;)Lr3/o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lh5/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh5/b;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lh5/c;->e:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lr3/o;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lh5/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->j(Ljava/lang/Object;)Lr3/o;

    return-void

    :cond_0
    iget-object v0, p0, Lh5/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/n;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->j(Ljava/lang/Object;)Lr3/o;

    return-void

    :cond_1
    new-instance v0, Lh5/b;

    invoke-direct {v0, p0, v2}, Lh5/b;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lh5/c;->e:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lr3/o;

    return-void
.end method
