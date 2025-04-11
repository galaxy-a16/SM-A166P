.class public final Lbc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbc/f;


# direct methods
.method public constructor <init>(Lbc/f;)V
    .locals 0

    iput-object p1, p0, Lbc/e;->a:Lbc/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lbc/e;->a:Lbc/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbc/e;->a:Lbc/f;

    invoke-virtual {v1}, Lbc/f;->c()Lbc/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-eqz v1, :cond_4

    iget-object v0, v1, Lbc/a;->a:Lbc/c;

    if-eqz v0, :cond_3

    sget-object v2, Lbc/f;->j:Lcom/google/gson/internal/d;

    invoke-virtual {v2}, Lcom/google/gson/internal/d;->a()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lbc/c;->e:Lbc/f;

    iget-object v3, v3, Lbc/f;->g:Lbc/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-string v5, "starting"

    invoke-static {v1, v0, v5}, Ll9/b;->H(Lbc/a;Lbc/c;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-wide/16 v3, -0x1

    :goto_1
    :try_start_1
    iget-object v5, p0, Lbc/e;->a:Lbc/f;

    invoke-static {v5, v1}, Lbc/f;->a(Lbc/f;Lbc/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lbc/c;->e:Lbc/f;

    iget-object v2, v2, Lbc/f;->g:Lbc/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ll9/b;->a0(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "finished run in "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ll9/b;->H(Lbc/a;Lbc/c;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_2
    iget-object v6, p0, Lbc/e;->a:Lbc/f;

    iget-object v6, v6, Lbc/f;->g:Lbc/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lbc/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lbc/c;->e:Lbc/f;

    iget-object v2, v2, Lbc/f;->g:Lbc/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ll9/b;->a0(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed a run in "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ll9/b;->H(Lbc/a;Lbc/c;Ljava/lang/String;)V

    :cond_2
    throw p0

    :cond_3
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
