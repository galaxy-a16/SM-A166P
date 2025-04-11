.class final Lkotlin/collections/unsigned/UArraysKt___UArraysKt$withIndex$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/a;"
    }
.end annotation


# instance fields
.field final synthetic $this_withIndex:[S


# direct methods
.method public constructor <init>([S)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysKt$withIndex$4;->$this_withIndex:[S

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt$withIndex$4;->invoke()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/q;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysKt$withIndex$4;->$this_withIndex:[S

    .line 2
    new-instance v0, Landroidx/core/view/c1;

    invoke-direct {v0, p0}, Landroidx/core/view/c1;-><init>([S)V

    return-object v0
.end method
