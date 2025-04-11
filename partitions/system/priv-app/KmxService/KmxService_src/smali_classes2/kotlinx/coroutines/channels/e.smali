.class public final Lkotlinx/coroutines/channels/e;
.super Lkotlinx/coroutines/channels/z;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/j0;


# instance fields
.field public final d:Lkotlinx/coroutines/channels/j;

.field public final e:Lkotlinx/coroutines/selects/g;

.field public final f:Lvb/c;

.field public final g:I


# direct methods
.method public constructor <init>(ILvb/c;Lkotlinx/coroutines/channels/j;Lkotlinx/coroutines/selects/g;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/z;-><init>()V

    iput-object p3, p0, Lkotlinx/coroutines/channels/e;->d:Lkotlinx/coroutines/channels/j;

    iput-object p4, p0, Lkotlinx/coroutines/channels/e;->e:Lkotlinx/coroutines/selects/g;

    iput-object p2, p0, Lkotlinx/coroutines/channels/e;->f:Lvb/c;

    iput p1, p0, Lkotlinx/coroutines/channels/e;->g:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/z;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/e;->e:Lkotlinx/coroutines/selects/g;

    check-cast p0, Lkotlinx/coroutines/selects/c;

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->y()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/internal/z;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/channels/e;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/s;->b:Lkotlinx/coroutines/channels/r;

    new-instance v0, Lkotlinx/coroutines/channels/s;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/s;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/e;->e:Lkotlinx/coroutines/selects/g;

    check-cast v1, Lkotlinx/coroutines/selects/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/e;->r(Ljava/lang/Object;)Lvb/b;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/channels/e;->f:Lvb/c;

    invoke-static {p0, v0, v1, p1}, Lh3/a;->W(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;Lvb/b;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/channels/e;->d:Lkotlinx/coroutines/channels/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/Object;)Lvb/b;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->d:Lkotlinx/coroutines/channels/j;

    iget-object v0, v0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/channels/e;->e:Lkotlinx/coroutines/selects/g;

    check-cast p0, Lkotlinx/coroutines/selects/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->getContext()Lkotlin/coroutines/i;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/internal/t;->a(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/i;)Lvb/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final s(Lkotlinx/coroutines/channels/u;)V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->e:Lkotlinx/coroutines/selects/g;

    check-cast v0, Lkotlinx/coroutines/selects/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/selects/c;->x()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lkotlinx/coroutines/channels/e;->g:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    new-instance v1, Lkotlinx/coroutines/channels/q;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/channels/q;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlinx/coroutines/channels/s;

    invoke-direct {p1, v1}, Lkotlinx/coroutines/channels/s;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iget-object p0, p0, Lkotlinx/coroutines/channels/e;->f:Lvb/c;

    invoke-static {p0, p1, v0, v1}, Lh3/a;->W(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;Lvb/b;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/u;->w()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/selects/c;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceiveSelect@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/coroutines/a0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/channels/e;->e:Lkotlinx/coroutines/selects/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlinx/coroutines/channels/e;->g:I

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->q(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
