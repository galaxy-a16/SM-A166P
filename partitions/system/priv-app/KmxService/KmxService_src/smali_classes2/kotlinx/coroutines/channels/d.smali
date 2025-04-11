.class public final Lkotlinx/coroutines/channels/d;
.super Lkotlinx/coroutines/channels/z;
.source "SourceFile"


# instance fields
.field public final d:Lkotlinx/coroutines/channels/a;

.field public final e:Lkotlinx/coroutines/g;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/h;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/z;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/channels/a;

    iput-object p2, p0, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/z;
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/d;->r(Ljava/lang/Object;)Lvb/b;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/h;->w(Ljava/lang/Object;Ljava/lang/Object;Lvb/b;)Lkotlinx/coroutines/internal/z;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    sget-object p0, Lkotlinx/coroutines/a0;->a:Lkotlinx/coroutines/internal/z;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/channels/a;

    iput-object p1, v0, Lkotlinx/coroutines/channels/a;->b:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    iget p1, p0, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h;->l(I)V

    return-void
.end method

.method public final r(Ljava/lang/Object;)Lvb/b;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/channels/a;

    iget-object v0, v0, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/channels/j;

    iget-object v0, v0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    iget-object p0, p0, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/internal/t;->a(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/i;)Lvb/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final s(Lkotlinx/coroutines/channels/u;)V
    .locals 6

    iget-object v0, p1, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    const/4 v1, 0x0

    iget-object v2, p0, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/g;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/h;

    invoke-virtual {v3, v0, v1, v1}, Lkotlinx/coroutines/h;->w(Ljava/lang/Object;Ljava/lang/Object;Lvb/b;)Lkotlinx/coroutines/internal/z;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/u;->w()Ljava/lang/Throwable;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lkotlinx/coroutines/q;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {v3, v4, v1, v1}, Lkotlinx/coroutines/h;->w(Ljava/lang/Object;Ljava/lang/Object;Lvb/b;)Lkotlinx/coroutines/internal/z;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/channels/a;

    iput-object p1, p0, Lkotlinx/coroutines/channels/a;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/h;

    iget p0, v2, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/h;->l(I)V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceiveHasNext@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/coroutines/a0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
