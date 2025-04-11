.class public final Lkotlin/c;
.super Lkotlin/b;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d;


# instance fields
.field public final a:Lvb/d;

.field public b:Ljava/lang/Object;

.field public c:Lkotlin/coroutines/d;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lvb/d;)V
    .locals 2

    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    const-string v1, "block"

    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/b;-><init>()V

    iput-object p1, p0, Lkotlin/c;->a:Lvb/d;

    iput-object v0, p0, Lkotlin/c;->b:Ljava/lang/Object;

    iput-object p0, p0, Lkotlin/c;->c:Lkotlin/coroutines/d;

    sget-object p1, Lkotlin/a;->a:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/c;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getContext()Lkotlin/coroutines/i;
    .locals 0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/c;->c:Lkotlin/coroutines/d;

    iput-object p1, p0, Lkotlin/c;->d:Ljava/lang/Object;

    return-void
.end method
