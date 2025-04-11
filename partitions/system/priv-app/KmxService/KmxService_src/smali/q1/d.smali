.class public abstract Lq1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroidx/work/impl/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/work/impl/m;

    invoke-direct {v0}, Landroidx/work/impl/m;-><init>()V

    iput-object v0, p0, Lq1/d;->a:Landroidx/work/impl/m;

    return-void
.end method

.method public static a(Landroidx/work/impl/d0;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()Lp1/c;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lp1/s;->f(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v4

    sget-object v5, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-eq v4, v5, :cond_0

    sget-object v5, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-eq v4, v5, :cond_0

    sget-object v4, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1, v4, v3}, Lp1/s;->m(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v3}, Lp1/c;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/d0;->u:Landroidx/work/impl/p;

    const-string v1, "Processor cancelling "

    iget-object v2, v0, Landroidx/work/impl/p;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/p;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/work/impl/p;->j:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/work/impl/p;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/i0;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v1, :cond_3

    iget-object v1, v0, Landroidx/work/impl/p;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/i0;

    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, v0, Landroidx/work/impl/p;->h:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1}, Landroidx/work/impl/p;->b(Ljava/lang/String;Landroidx/work/impl/i0;)Z

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroidx/work/impl/p;->h()V

    :cond_5
    iget-object p0, p0, Landroidx/work/impl/d0;->t:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/r;

    invoke-interface {v0, p1}, Landroidx/work/impl/r;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lq1/d;->a:Landroidx/work/impl/m;

    :try_start_0
    invoke-virtual {p0}, Lq1/d;->b()V

    sget-object p0, Landroidx/work/u;->a:Landroidx/work/t;

    invoke-virtual {v0, p0}, Landroidx/work/impl/m;->a(Lcom/fasterxml/jackson/annotation/i0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Landroidx/work/r;

    invoke-direct {v1, p0}, Landroidx/work/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/m;->a(Lcom/fasterxml/jackson/annotation/i0;)V

    :goto_0
    return-void
.end method
