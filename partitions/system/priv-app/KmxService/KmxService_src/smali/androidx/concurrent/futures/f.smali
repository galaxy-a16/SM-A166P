.class public final Landroidx/concurrent/futures/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroidx/concurrent/futures/f;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Landroidx/concurrent/futures/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/concurrent/futures/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/concurrent/futures/f;-><init>(I)V

    sput-object v0, Landroidx/concurrent/futures/f;->c:Landroidx/concurrent/futures/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/concurrent/futures/g;->f:Lp1/f;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lp1/f;->L(Landroidx/concurrent/futures/f;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
