.class public final Lkotlinx/coroutines/channels/c;
.super Lkotlinx/coroutines/channels/b;
.source "SourceFile"


# instance fields
.field public final f:Lvb/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/h;Lvb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/b;-><init>(Lkotlinx/coroutines/h;)V

    iput-object p2, p0, Lkotlinx/coroutines/channels/c;->f:Lvb/b;

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;)Lvb/b;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/g;

    check-cast v0, Lkotlinx/coroutines/h;

    iget-object v0, v0, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    iget-object p0, p0, Lkotlinx/coroutines/channels/c;->f:Lvb/b;

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/internal/t;->a(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/i;)Lvb/b;

    move-result-object p0

    return-object p0
.end method
