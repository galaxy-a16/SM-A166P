.class public abstract Lkotlinx/coroutines/flow/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lkotlin/coroutines/d;

.field public static final b:Lkotlinx/coroutines/internal/z;

.field public static final c:Lkotlinx/coroutines/internal/z;

.field public static final d:Lkotlinx/coroutines/internal/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/coroutines/d;

    sput-object v0, Lkotlinx/coroutines/flow/internal/l;->a:[Lkotlin/coroutines/d;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/l;->b:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/l;->c:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "DONE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/l;->d:Lkotlinx/coroutines/internal/z;

    return-void
.end method

.method public static final a([Lkotlinx/coroutines/flow/f;Lvb/a;Lvb/d;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>([Lkotlinx/coroutines/flow/f;Lvb/a;Lvb/d;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)V

    new-instance p0, Lkotlinx/coroutines/flow/internal/n;

    invoke-interface {p4}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lkotlinx/coroutines/flow/internal/n;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V

    invoke-static {p0, p0, v6}, Li4/g;->y(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lvb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method
