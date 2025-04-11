.class public final Landroidx/room/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/room/n;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Landroid/content/Context;

.field public e:I

.field public f:Landroidx/room/p;

.field public g:Landroidx/room/k;

.field public final h:Landroidx/room/q;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Landroidx/room/r;

.field public final k:Landroidx/room/o;

.field public final l:Landroidx/room/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/n;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "executor"

    invoke-static {p5, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/room/s;->a:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/s;->b:Landroidx/room/n;

    iput-object p5, p0, Landroidx/room/s;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/s;->d:Landroid/content/Context;

    new-instance p2, Landroidx/room/q;

    invoke-direct {p2, p0}, Landroidx/room/q;-><init>(Landroidx/room/s;)V

    iput-object p2, p0, Landroidx/room/s;->h:Landroidx/room/q;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroidx/room/s;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Landroidx/room/r;

    invoke-direct {p2, p0}, Landroidx/room/r;-><init>(Landroidx/room/s;)V

    iput-object p2, p0, Landroidx/room/s;->j:Landroidx/room/r;

    new-instance v0, Landroidx/room/o;

    invoke-direct {v0, p0, p5}, Landroidx/room/o;-><init>(Landroidx/room/s;I)V

    iput-object v0, p0, Landroidx/room/s;->k:Landroidx/room/o;

    new-instance v0, Landroidx/room/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/room/o;-><init>(Landroidx/room/s;I)V

    iput-object v0, p0, Landroidx/room/s;->l:Landroidx/room/o;

    iget-object p4, p4, Landroidx/room/n;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p4

    new-array p5, p5, [Ljava/lang/String;

    invoke-interface {p4, p5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    new-instance p5, Landroidx/room/p;

    invoke-direct {p5, p0, p4}, Landroidx/room/p;-><init>(Landroidx/room/s;[Ljava/lang/String;)V

    iput-object p5, p0, Landroidx/room/s;->f:Landroidx/room/p;

    invoke-virtual {p1, p3, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
