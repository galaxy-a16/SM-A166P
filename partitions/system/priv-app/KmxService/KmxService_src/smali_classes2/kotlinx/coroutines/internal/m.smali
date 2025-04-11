.class public Lkotlinx/coroutines/internal/m;
.super Lkotlinx/coroutines/internal/j;
.source "SourceFile"


# static fields
.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _affectedNode:Ljava/lang/Object;

.field private volatile synthetic _originalNext:Ljava/lang/Object;

.field public final b:Lkotlinx/coroutines/internal/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "_affectedNode"

    const-class v1, Lkotlinx/coroutines/internal/m;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/m;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_originalNext"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/j;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/m;->b:Lkotlinx/coroutines/internal/n;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/internal/m;->_affectedNode:Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/m;->_originalNext:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c(Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/m;->b:Lkotlinx/coroutines/internal/n;

    if-ne p1, p0, :cond_0

    sget-object p0, Lkotlinx/coroutines/internal/t;->f:Lkotlinx/coroutines/internal/z;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d()Lkotlinx/coroutines/internal/n;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/m;->_affectedNode:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/n;

    return-object p0
.end method

.method public final e()Lkotlinx/coroutines/internal/n;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/m;->_originalNext:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/n;

    return-object p0
.end method

.method public final h()Lkotlinx/coroutines/internal/n;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/m;->_affectedNode:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/n;

    invoke-static {p0}, Li4/f;->g(Ljava/lang/Object;)V

    return-object p0
.end method
