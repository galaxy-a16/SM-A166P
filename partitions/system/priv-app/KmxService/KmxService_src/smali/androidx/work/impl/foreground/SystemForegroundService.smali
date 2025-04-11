.class public Landroidx/work/impl/foreground/SystemForegroundService;
.super Landroidx/lifecycle/c0;
.source "SourceFile"

# interfaces
.implements Lo1/b;


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public b:Landroid/os/Handler;

.field public c:Z

.field public d:Lo1/c;

.field public e:Landroid/app/NotificationManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgService"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    new-instance v0, Lo1/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo1/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Lo1/c;

    iget-object v1, v0, Lo1/c;->i:Lo1/b;

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p0

    sget-object v0, Lo1/c;->j:Ljava/lang/String;

    const-string v1, "A callback already exists."

    invoke-virtual {p0, v0, v1}, Landroidx/work/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p0, v0, Lo1/c;->i:Lo1/b;

    :goto_0
    return-void
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/c0;->onCreate()V

    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->a()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/c0;->onDestroy()V

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Lo1/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lo1/c;->i:Lo1/b;

    iget-object v0, p0, Lo1/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo1/c;->h:Ll1/c;

    invoke-virtual {v1}, Ll1/c;->c()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lo1/c;->a:Landroidx/work/impl/d0;

    iget-object v0, v0, Landroidx/work/impl/d0;->u:Landroidx/work/impl/p;

    iget-object v1, v0, Landroidx/work/impl/p;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, v0, Landroidx/work/impl/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/c0;->onStartCommand(Landroid/content/Intent;II)I

    iget-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Z

    sget-object p3, Landroidx/work/impl/foreground/SystemForegroundService;->f:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p2

    const-string v1, "Re-initializing SystemForegroundService after a request to shut-down."

    invoke-virtual {p2, p3, v1}, Landroidx/work/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Lo1/c;

    const/4 v1, 0x0

    iput-object v1, p2, Lo1/c;->i:Lo1/b;

    iget-object v1, p2, Lo1/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p2, Lo1/c;->h:Ll1/c;

    invoke-virtual {v2}, Ll1/c;->c()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p2, Lo1/c;->a:Landroidx/work/impl/d0;

    iget-object v1, v1, Landroidx/work/impl/d0;->u:Landroidx/work/impl/p;

    iget-object v2, v1, Landroidx/work/impl/p;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, v1, Landroidx/work/impl/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->a()V

    iput-boolean v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Lo1/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ACTION_START_FOREGROUND"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lo1/c;->j:Ljava/lang/String;

    const-string v3, "KEY_WORKSPEC_ID"

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Started foreground service "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Landroidx/work/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroidx/appcompat/widget/k;

    const/16 v1, 0x9

    invoke-direct {p3, v1, p0, p2}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lo1/c;->b:Lr1/a;

    invoke-interface {p2, p3}, Lr1/a;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const-string v1, "ACTION_NOTIFY"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    const-string p2, "KEY_NOTIFICATION_ID"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "KEY_GENERATION"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Lp1/j;

    invoke-direct {v4, v1, v3}, Lp1/j;-><init>(Ljava/lang/String;I)V

    const-string v3, "KEY_NOTIFICATION"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Notifying with (id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", workSpecId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationType :"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    iget-object v1, p0, Lo1/c;->i:Lo1/b;

    if-eqz v1, :cond_6

    new-instance v1, Landroidx/work/g;

    invoke-direct {v1, p2, p3, p1}, Landroidx/work/g;-><init>(IILandroid/app/Notification;)V

    iget-object v2, p0, Lo1/c;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lo1/c;->d:Lp1/j;

    if-nez v1, :cond_2

    iput-object v4, p0, Lo1/c;->d:Lp1/j;

    iget-object p0, p0, Lo1/c;->i:Lo1/b;

    check-cast p0, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    new-instance v1, Lo1/d;

    invoke-direct {v1, p0, p2, p1, p3}, Lo1/d;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lo1/c;->i:Lo1/b;

    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v3, v1, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    new-instance v4, Landroidx/activity/i;

    const/4 v5, 0x6

    invoke-direct {v4, v1, p2, p1, v5}, Landroidx/activity/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p3, :cond_6

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/g;

    iget p2, p2, Landroidx/work/g;->b:I

    or-int/2addr v0, p2

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lo1/c;->d:Lp1/j;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/g;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lo1/c;->i:Lo1/b;

    check-cast p0, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    new-instance p3, Lo1/d;

    iget v1, p1, Landroidx/work/g;->a:I

    iget-object p1, p1, Landroidx/work/g;->c:Landroid/app/Notification;

    invoke-direct {p3, p0, v1, p1, v0}, Lo1/d;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    const-string v0, "ACTION_CANCEL_WORK"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Stopping foreground work for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Landroidx/work/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iget-object p0, p0, Lo1/c;->a:Landroidx/work/impl/d0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lq1/b;

    invoke-direct {p2, p0, p1}, Lq1/b;-><init>(Landroidx/work/impl/d0;Ljava/util/UUID;)V

    iget-object p0, p0, Landroidx/work/impl/d0;->s:Lr1/a;

    invoke-interface {p0, p2}, Lr1/a;->b(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    const-string p1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p1

    const-string p2, "Stopping foreground service"

    invoke-virtual {p1, v2, p2}, Landroidx/work/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lo1/c;->i:Lo1/b;

    if-eqz p0, :cond_6

    check-cast p0, Landroidx/work/impl/foreground/SystemForegroundService;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Z

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p2

    const-string v0, "All commands completed."

    invoke-virtual {p2, p3, v0}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_6
    :goto_3
    const/4 p0, 0x3

    return p0
.end method
