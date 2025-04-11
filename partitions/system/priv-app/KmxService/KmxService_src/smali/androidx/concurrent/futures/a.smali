.class public final Landroidx/concurrent/futures/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroidx/concurrent/futures/a;

.field public static final d:Landroidx/concurrent/futures/a;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroidx/concurrent/futures/g;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Landroidx/concurrent/futures/a;->d:Landroidx/concurrent/futures/a;

    sput-object v1, Landroidx/concurrent/futures/a;->c:Landroidx/concurrent/futures/a;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/concurrent/futures/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/concurrent/futures/a;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Landroidx/concurrent/futures/a;->d:Landroidx/concurrent/futures/a;

    new-instance v0, Landroidx/concurrent/futures/a;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/concurrent/futures/a;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Landroidx/concurrent/futures/a;->c:Landroidx/concurrent/futures/a;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroidx/concurrent/futures/a;->a:Z

    iput-object p1, p0, Landroidx/concurrent/futures/a;->b:Ljava/lang/Throwable;

    return-void
.end method
