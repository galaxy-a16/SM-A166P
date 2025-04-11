.class public final Lj1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;
.implements Lq1/t;


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lp1/j;

.field public final d:Lj1/j;

.field public final e:Ll1/c;

.field public final f:Ljava/lang/Object;

.field public g:I

.field public final h:Lq1/m;

.field public final i:Ljava/util/concurrent/Executor;

.field public j:Landroid/os/PowerManager$WakeLock;

.field public k:Z

.field public final l:Landroidx/work/impl/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj1/g;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILj1/j;Landroidx/work/impl/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/g;->a:Landroid/content/Context;

    iput p2, p0, Lj1/g;->b:I

    iput-object p3, p0, Lj1/g;->d:Lj1/j;

    iget-object p1, p4, Landroidx/work/impl/t;->a:Lp1/j;

    iput-object p1, p0, Lj1/g;->c:Lp1/j;

    iput-object p4, p0, Lj1/g;->l:Landroidx/work/impl/t;

    iget-object p1, p3, Lj1/j;->e:Landroidx/work/impl/d0;

    iget-object p1, p1, Landroidx/work/impl/d0;->y:Lcom/google/firebase/messaging/r;

    iget-object p2, p3, Lj1/j;->b:Lr1/a;

    check-cast p2, Lp1/v;

    iget-object p3, p2, Lp1/v;->b:Ljava/lang/Object;

    check-cast p3, Lq1/m;

    iput-object p3, p0, Lj1/g;->h:Lq1/m;

    iget-object p2, p2, Lp1/v;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lj1/g;->i:Ljava/util/concurrent/Executor;

    new-instance p2, Ll1/c;

    invoke-direct {p2, p1, p0}, Ll1/c;-><init>(Lcom/google/firebase/messaging/r;Ll1/b;)V

    iput-object p2, p0, Lj1/g;->e:Ll1/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj1/g;->k:Z

    iput p1, p0, Lj1/g;->g:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/g;->f:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lj1/g;)V
    .locals 10

    iget-object v0, p0, Lj1/g;->c:Lp1/j;

    iget-object v1, v0, Lp1/j;->a:Ljava/lang/String;

    iget v2, p0, Lj1/g;->g:I

    sget-object v3, Lj1/g;->m:Ljava/lang/String;

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    iput v4, p0, Lj1/g;->g:I

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Stopping work for WorkSpec "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lj1/g;->a:Landroid/content/Context;

    const-class v5, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ACTION_STOP_WORK"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2, v0}, Lj1/c;->d(Landroid/content/Intent;Lp1/j;)V

    new-instance v6, Landroidx/activity/i;

    iget-object v7, p0, Lj1/g;->d:Lj1/j;

    iget v8, p0, Lj1/g;->b:I

    invoke-direct {v6, v7, v2, v8}, Landroidx/activity/i;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    iget-object p0, p0, Lj1/g;->i:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, v7, Lj1/j;->d:Landroidx/work/impl/p;

    iget-object v6, v0, Lp1/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroidx/work/impl/p;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "WorkSpec "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needs to be rescheduled"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_SCHEDULE_WORK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, v0}, Lj1/c;->d(Landroid/content/Intent;Lp1/j;)V

    new-instance v0, Landroidx/activity/i;

    invoke-direct {v0, v7, v1, v8}, Landroidx/activity/i;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Processor does not have WorkSpec "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". No need to reschedule"

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Already stopped work for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 1

    new-instance p1, Lj1/f;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lj1/f;-><init>(Lj1/g;I)V

    iget-object p0, p0, Lj1/g;->h:Lq1/m;

    invoke-virtual {p0, p1}, Lq1/m;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 5

    const-string v0, "Releasing wakelock "

    iget-object v1, p0, Lj1/g;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lj1/g;->e:Ll1/c;

    invoke-virtual {v2}, Ll1/c;->c()V

    iget-object v2, p0, Lj1/g;->d:Lj1/j;

    iget-object v2, v2, Lj1/j;->c:Lq1/v;

    iget-object v3, p0, Lj1/g;->c:Lp1/j;

    invoke-virtual {v2, v3}, Lq1/v;->a(Lp1/j;)V

    iget-object v2, p0, Lj1/g;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v2

    sget-object v3, Lj1/g;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lj1/g;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "for WorkSpec "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lj1/g;->c:Lp1/j;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lj1/g;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lj1/g;->c:Lp1/j;

    iget-object v0, v0, Lp1/j;->a:Ljava/lang/String;

    const-string v1, " ("

    invoke-static {v0, v1}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lj1/g;->b:I

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj1/g;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lq1/o;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lj1/g;->j:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Acquiring wakelock "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lj1/g;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "for WorkSpec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lj1/g;->m:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lj1/g;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lj1/g;->d:Lj1/j;

    iget-object v1, v1, Lj1/j;->e:Landroidx/work/impl/d0;

    iget-object v1, v1, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lp1/s;->h(Ljava/lang/String;)Lp1/q;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lj1/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lj1/f;-><init>(Lj1/g;I)V

    iget-object p0, p0, Lj1/g;->h:Lq1/m;

    invoke-virtual {p0, v0}, Lq1/m;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lp1/q;->c()Z

    move-result v2

    iput-boolean v2, p0, Lj1/g;->k:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No constraints for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj1/g;->e(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lj1/g;->e:Ll1/c;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll1/c;->b(Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp1/q;

    invoke-static {v0}, Lp1/f;->A(Lp1/q;)Lp1/j;

    move-result-object v0

    iget-object v1, p0, Lj1/g;->c:Lp1/j;

    invoke-virtual {v0, v1}, Lp1/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lj1/f;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lj1/f;-><init>(Lj1/g;I)V

    iget-object p0, p0, Lj1/g;->h:Lq1/m;

    invoke-virtual {p0, p1}, Lq1/m;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final f(Z)V
    .locals 7

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onExecuted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lj1/g;->c:Lp1/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lj1/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj1/g;->c()V

    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    iget v1, p0, Lj1/g;->b:I

    iget-object v3, p0, Lj1/g;->d:Lj1/j;

    iget-object v4, p0, Lj1/g;->i:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lj1/g;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ACTION_SCHEDULE_WORK"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v2}, Lj1/c;->d(Landroid/content/Intent;Lp1/j;)V

    new-instance v2, Landroidx/activity/i;

    invoke-direct {v2, v3, p1, v1}, Landroidx/activity/i;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    invoke-interface {v4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p0, p0, Lj1/g;->k:Z

    if-eqz p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroidx/activity/i;

    invoke-direct {p1, v3, p0, v1}, Landroidx/activity/i;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    invoke-interface {v4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
