.class final Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/c;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o1;

    check-cast p2, Lkotlin/coroutines/g;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;->invoke(Lkotlinx/coroutines/o1;Lkotlin/coroutines/g;)Lkotlinx/coroutines/o1;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/o1;Lkotlin/coroutines/g;)Lkotlinx/coroutines/o1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o1;",
            "Lkotlin/coroutines/g;",
            ")",
            "Lkotlinx/coroutines/o1;"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    instance-of p0, p2, Lkotlinx/coroutines/o1;

    if-eqz p0, :cond_1

    check-cast p2, Lkotlinx/coroutines/o1;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
