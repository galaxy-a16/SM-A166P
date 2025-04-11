.class final Lkotlinx/coroutines/tasks/TasksKt$asTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/b;"
    }
.end annotation


# instance fields
.field final synthetic $cancellation:Lr3/a;

.field final synthetic $source:Lr3/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/i;"
        }
    .end annotation
.end field

.field final synthetic $this_asTask:Lkotlinx/coroutines/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/d0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr3/a;Lkotlinx/coroutines/d0;Lr3/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/a;",
            "Lkotlinx/coroutines/d0;",
            "Lr3/i;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lkotlinx/coroutines/tasks/TasksKt$asTask$1;->$source:Lr3/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/tasks/TasksKt$asTask$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    const/4 p1, 0x0

    throw p1
.end method
