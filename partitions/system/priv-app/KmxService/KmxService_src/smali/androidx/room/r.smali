.class public final Landroidx/room/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Landroidx/room/s;


# direct methods
.method public constructor <init>(Landroidx/room/s;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/r;->a:Landroidx/room/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Landroidx/room/t;->d:I

    sget-object p1, Landroidx/room/k;->b:Ljava/lang/String;

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/room/k;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/room/k;

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/room/j;

    invoke-direct {p1, p2}, Landroidx/room/j;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iget-object p0, p0, Landroidx/room/r;->a:Landroidx/room/s;

    iput-object p1, p0, Landroidx/room/s;->g:Landroidx/room/k;

    iget-object p1, p0, Landroidx/room/s;->c:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/room/s;->k:Landroidx/room/o;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/r;->a:Landroidx/room/s;

    iget-object p1, p0, Landroidx/room/s;->c:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroidx/room/s;->l:Landroidx/room/o;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/s;->g:Landroidx/room/k;

    return-void
.end method
