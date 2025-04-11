.class public final Landroidx/concurrent/futures/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Landroidx/concurrent/futures/c;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Landroidx/concurrent/futures/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/concurrent/futures/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/concurrent/futures/c;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroidx/concurrent/futures/c;->d:Landroidx/concurrent/futures/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/concurrent/futures/c;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Landroidx/concurrent/futures/c;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
