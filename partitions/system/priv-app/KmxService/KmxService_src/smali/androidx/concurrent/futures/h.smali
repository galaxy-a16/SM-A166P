.class public final Landroidx/concurrent/futures/h;
.super Landroidx/concurrent/futures/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/concurrent/futures/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Landroidx/concurrent/futures/g;->f:Lp1/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lp1/f;->s(Landroidx/concurrent/futures/g;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/concurrent/futures/g;->d(Landroidx/concurrent/futures/g;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
