.class public Lkotlinx/coroutines/channels/b;
.super Lkotlinx/coroutines/channels/z;
.source "SourceFile"


# instance fields
.field public final d:Lkotlinx/coroutines/g;

.field public final e:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/h;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/z;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/g;

    const/4 p1, 0x1

    iput p1, p0, Lkotlinx/coroutines/channels/b;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/z;
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/channels/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/s;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/s;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/z;->r(Ljava/lang/Object;)Lvb/b;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/h;->w(Ljava/lang/Object;Ljava/lang/Object;Lvb/b;)Lkotlinx/coroutines/internal/z;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    sget-object p0, Lkotlinx/coroutines/a0;->a:Lkotlinx/coroutines/internal/z;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    iget p1, p0, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h;->l(I)V

    return-void
.end method

.method public final s(Lkotlinx/coroutines/channels/u;)V
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/channels/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    new-instance v0, Lkotlinx/coroutines/channels/q;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/q;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlinx/coroutines/channels/s;

    invoke-direct {p1, v0}, Lkotlinx/coroutines/channels/s;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/u;->w()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceiveElement@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/coroutines/a0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlinx/coroutines/channels/b;->e:I

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->q(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
