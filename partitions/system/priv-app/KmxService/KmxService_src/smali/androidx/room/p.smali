.class public final Landroidx/room/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/String;

.field public final synthetic b:Landroidx/room/s;


# direct methods
.method public constructor <init>(Landroidx/room/s;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/p;->b:Landroidx/room/s;

    const-string p1, "tables"

    invoke-static {p2, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/room/p;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 2

    const-string v0, "tables"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/p;->b:Landroidx/room/s;

    iget-object v0, p0, Landroidx/room/s;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/room/s;->g:Landroidx/room/k;

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/room/s;->e:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroidx/room/k;->t(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ROOM"

    const-string v0, "Cannot broadcast invalidation"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
