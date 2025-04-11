.class public abstract Lkotlinx/coroutines/internal/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/z;

.field public static final b:Lvb/c;

.field public static final c:Lvb/c;

.field public static final d:Lvb/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/z;

    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;

    sput-object v0, Lkotlinx/coroutines/internal/b0;->b:Lvb/c;

    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;

    sput-object v0, Lkotlinx/coroutines/internal/b0;->c:Lvb/c;

    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    sput-object v0, Lkotlinx/coroutines/internal/b0;->d:Lvb/c;

    return-void
.end method

.method public static final a(Lkotlin/coroutines/i;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/z;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/d0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lkotlinx/coroutines/internal/d0;

    iget-object p0, p1, Lkotlinx/coroutines/internal/d0;->b:[Lkotlinx/coroutines/o1;

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    return-void

    :cond_1
    aget-object p0, p0, p1

    invoke-static {v1}, Li4/f;->g(Ljava/lang/Object;)V

    throw v1

    :cond_2
    sget-object p1, Lkotlinx/coroutines/internal/b0;->c:Lvb/c;

    invoke-interface {p0, v1, p1}, Lkotlin/coroutines/i;->fold(Ljava/lang/Object;Lvb/c;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lkotlin/coroutines/i;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/b0;->b:Lvb/c;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/i;->fold(Ljava/lang/Object;Lvb/c;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Li4/f;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/internal/b0;->b(Lkotlin/coroutines/i;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/z;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlinx/coroutines/internal/d0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/d0;-><init>(Lkotlin/coroutines/i;I)V

    sget-object p1, Lkotlinx/coroutines/internal/b0;->d:Lvb/c;

    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/i;->fold(Ljava/lang/Object;Lvb/c;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
