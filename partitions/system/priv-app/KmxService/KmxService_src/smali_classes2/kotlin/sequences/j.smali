.class public abstract Lkotlin/sequences/j;
.super Lv4/b;
.source "SourceFile"


# direct methods
.method public static final Z(Ljava/lang/Object;Lvb/b;)Lkotlin/sequences/g;
    .locals 2

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/sequences/d;->a:Lkotlin/sequences/d;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/sequences/f;

    new-instance v1, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;

    invoke-direct {v1, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lkotlin/sequences/f;-><init>(Lvb/a;Lvb/b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
