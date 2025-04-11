.class public final Lkotlinx/coroutines/e1;
.super Lkotlinx/coroutines/internal/k;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lkotlinx/coroutines/f1;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/f1;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lkotlinx/coroutines/e1;->d:Lkotlinx/coroutines/f1;

    iput-object p3, p0, Lkotlinx/coroutines/e1;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/k;-><init>(Lkotlinx/coroutines/internal/n;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/n;

    iget-object p1, p0, Lkotlinx/coroutines/e1;->d:Lkotlinx/coroutines/f1;

    invoke-virtual {p1}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/e1;->e:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlinx/coroutines/internal/t;->e:Lkotlinx/coroutines/internal/z;

    :goto_1
    return-object p0
.end method
