.class public final Lkotlinx/coroutines/internal/e0;
.super Lkotlinx/coroutines/internal/t;
.source "SourceFile"


# static fields
.field public static final h:Lkotlinx/coroutines/internal/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/e0;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/e0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/e0;->h:Lkotlinx/coroutines/internal/e0;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/t;-><init>()V

    return-void
.end method
