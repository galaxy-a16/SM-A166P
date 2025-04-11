.class final Lkotlin/coroutines/CombinedContext$writeReplace$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/CombinedContext;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/c;"
    }
.end annotation


# instance fields
.field final synthetic $elements:[Lkotlin/coroutines/i;

.field final synthetic $index:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>([Lkotlin/coroutines/i;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lkotlin/coroutines/CombinedContext$writeReplace$1;->$elements:[Lkotlin/coroutines/i;

    iput-object p2, p0, Lkotlin/coroutines/CombinedContext$writeReplace$1;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/s;

    check-cast p2, Lkotlin/coroutines/g;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/CombinedContext$writeReplace$1;->invoke(Lkotlin/s;Lkotlin/coroutines/g;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(Lkotlin/s;Lkotlin/coroutines/g;)V
    .locals 2

    .line 2
    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlin/coroutines/CombinedContext$writeReplace$1;->$elements:[Lkotlin/coroutines/i;

    iget-object p0, p0, Lkotlin/coroutines/CombinedContext$writeReplace$1;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    aput-object p2, p1, v0

    return-void
.end method
