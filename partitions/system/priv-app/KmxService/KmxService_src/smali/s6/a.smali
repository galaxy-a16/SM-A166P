.class public final Ls6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly7/d;


# instance fields
.field public final a:Lio/netty/channel/EventLoop;

.field public final b:I

.field public c:Z

.field public d:J

.field public final e:Lw5/m;

.field public final f:Lx6/a;

.field public g:Z


# direct methods
.method public constructor <init>(Lio/netty/channel/EventLoop;ILx6/a;Lw5/m;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls6/a;->c:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ls6/a;->d:J

    iput-object p1, p0, Ls6/a;->a:Lio/netty/channel/EventLoop;

    iput p2, p0, Ls6/a;->b:I

    iput-object p3, p0, Ls6/a;->f:Lx6/a;

    iput-object p4, p0, Ls6/a;->e:Lw5/m;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    invoke-virtual {p0}, Ls6/a;->b()V

    iget p0, p0, Ls6/a;->b:I

    return p0
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Ls6/a;->a:Lio/netty/channel/EventLoop;

    invoke-interface {p0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MqttClientReconnector must be called from the eventLoop."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Ly7/d;
    .locals 1

    invoke-virtual {p0}, Ls6/a;->b()V

    iget-boolean v0, p0, Ls6/a;->g:Z

    if-nez v0, :cond_0

    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Ls6/a;->d:J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "delay must only be called in onDisconnected."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Z)Ly7/d;
    .locals 0

    invoke-virtual {p0}, Ls6/a;->b()V

    iput-boolean p1, p0, Ls6/a;->c:Z

    return-object p0
.end method
