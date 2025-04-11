.class public Lkotlinx/coroutines/channels/e0;
.super Lkotlinx/coroutines/channels/c0;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/Object;

.field public final e:Lkotlinx/coroutines/g;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/h;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/c0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/e0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/channels/e0;->e:Lkotlinx/coroutines/g;

    return-void
.end method


# virtual methods
.method public final r()V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/channels/e0;->e:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    iget v0, p0, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/h;->l(I)V

    return-void
.end method

.method public final s()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/e0;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final t(Lkotlinx/coroutines/channels/u;)V
    .locals 1

    iget-object p1, p1, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    if-nez p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v0, "Channel was closed"

    invoke-direct {p1, v0}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/channels/e0;->e:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/a0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/channels/e0;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lkotlinx/coroutines/internal/l;)Lkotlinx/coroutines/internal/z;
    .locals 3

    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lkotlinx/coroutines/internal/l;->c:Lkotlinx/coroutines/internal/j;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/e0;->e:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    invoke-virtual {p0, v0, v2, v1}, Lkotlinx/coroutines/h;->w(Ljava/lang/Object;Ljava/lang/Object;Lvb/b;)Lkotlinx/coroutines/internal/z;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/l;->d()V

    :cond_2
    sget-object p0, Lkotlinx/coroutines/a0;->a:Lkotlinx/coroutines/internal/z;

    return-object p0
.end method
