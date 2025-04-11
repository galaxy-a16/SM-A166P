.class public final Lb3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/d;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/Collection;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lb3/r;->e:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb3/r;->a:Z

    iput-object p1, p0, Lb3/r;->b:Ljava/lang/Object;

    const-string p1, "topic_operation_queue"

    iput-object p1, p0, Lb3/r;->c:Ljava/lang/Object;

    const-string p1, ","

    iput-object p1, p0, Lb3/r;->d:Ljava/lang/Object;

    iput-object p2, p0, Lb3/r;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb3/e;Lc3/i;Lb3/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lb3/r;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb3/r;->d:Ljava/lang/Object;

    iput-object p1, p0, Lb3/r;->e:Ljava/util/Collection;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb3/r;->a:Z

    iput-object p2, p0, Lb3/r;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb3/r;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)Lb3/r;
    .locals 5

    new-instance v0, Lb3/r;

    invoke-direct {v0, p0, p1}, Lb3/r;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V

    iget-object p0, v0, Lb3/r;->e:Ljava/util/Collection;

    check-cast p0, Ljava/util/ArrayDeque;

    monitor-enter p0

    :try_start_0
    iget-object p1, v0, Lb3/r;->e:Ljava/util/Collection;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iget-object p1, v0, Lb3/r;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    iget-object v1, v0, Lb3/r;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lb3/r;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lb3/r;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    if-nez v1, :cond_1

    const-string v1, "FirebaseMessaging"

    const-string v2, "Corrupted queue. Please check the queue contents and item separator provided"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lb3/r;->e:Ljava/util/Collection;

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lb3/r;->e:Ljava/util/Collection;

    check-cast v0, Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb3/r;->e:Ljava/util/Collection;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lb3/r;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lb3/r;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lt/a;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3}, Lt/a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(La3/b;)V
    .locals 6

    iget-object v0, p0, Lb3/r;->f:Ljava/lang/Object;

    check-cast v0, Lb3/e;

    iget-object v0, v0, Lb3/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lb3/r;->c:Ljava/lang/Object;

    check-cast p0, Lb3/a;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/p;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v0}, Lva/n;->d(Ll3/c;)V

    iget-object v0, p0, Lb3/p;->d:Lc3/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x19

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSignInFailed for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/e;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb3/p;->o(La3/b;Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public final m(La3/b;)V
    .locals 3

    iget-object v0, p0, Lb3/r;->f:Ljava/lang/Object;

    check-cast v0, Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    new-instance v1, Landroidx/appcompat/widget/k;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0, p1}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
