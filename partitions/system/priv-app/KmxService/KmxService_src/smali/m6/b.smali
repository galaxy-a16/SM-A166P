.class public final Lm6/b;
.super Leb/e;
.source "SourceFile"

# interfaces
.implements Lvc/d;


# instance fields
.field public b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lm6/b;

    invoke-static {v0}, Lv5/b;->a(Ljava/lang/Class;)Lv5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leb/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 0

    invoke-interface {p1, p0}, Lvc/c;->onSubscribe(Lvc/d;)V

    return-void
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final request(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lm6/b;->b:J

    invoke-static {v0, v1, p1, p2}, Lh3/a;->e(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lm6/b;->b:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
