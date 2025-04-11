.class public final Lkotlinx/coroutines/flow/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d;


# static fields
.field public static final a:Lkotlinx/coroutines/flow/internal/p;

.field public static final b:Lkotlin/coroutines/EmptyCoroutineContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/internal/p;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/internal/p;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/internal/p;->a:Lkotlinx/coroutines/flow/internal/p;

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    sput-object v0, Lkotlinx/coroutines/flow/internal/p;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContext()Lkotlin/coroutines/i;
    .locals 0

    sget-object p0, Lkotlinx/coroutines/flow/internal/p;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
